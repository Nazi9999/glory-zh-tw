class Admin::QuestionsController < Admin::BaseController
  before_filter :find_question, except: [:index, :new]
  before_filter except: :index do
    add_crumb "題目列表", admin_questions_path
  end

  def index
    add_crumb "題目列表", "#"
    @questions = Question.newest.page(params[:page]).per(15)
  end

  def new
    add_crumb "新增題目", "#"
    @question = Question.new
  end

  def create
    if @question.save
      redirect_to admin_questions_path, flash: { success: "新增題目成功！" }
    else
      render :new, flash: { error: @question.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯題目 No.#{@question.id}"
  end

  def update
    if @question.update_attributes(permitted_params.question)
      redirect_to admin_questions_path, flash: { success: "編輯題目 No.#{@question.id} 成功!" }
    else
      render :edit, flash: { error: @question.errors.full_messages }
    end
  end

  def destroy
    if @question.destroy
      redirect_to admin_questions_path, flash: { success: "刪除題目 No.#{@question.id} 成功!" }
    else
      redirect_to admin_questions_path, flash: { error: @question.errors.full_messages }
    end
  end

  protected

  def find_question
    @question = params[:id] ? Question.find(params[:id]) : Question.new(permitted_params.question)
  end
end
