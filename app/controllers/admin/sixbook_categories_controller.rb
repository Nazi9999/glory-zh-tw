class Admin::SixbookCategoriesController < Admin::BaseController
  before_filter :find_sixbook_category, :except => :index
  before_filter except: :index do
    add_crumb "六書編輯列表", admin_sixbook_categories_path
  end

  def index
    add_crumb "六書編輯列表", "#"
    @find_sixbook_categories = SixbookCategory.all
  end

  def edit
    add_crumb "編輯六書 #{@sixbook_category.category_name}"
  end

  def update
    if @sixbook_category.update_attributes(permitted_params.sixbook_category)
      redirect_to admin_sixbook_categories_path, flash: { success: "編輯六書 #{@sixbook_category.category_name} 成功！"}
    else
      render :edit, flash: { error: @sixbook_category.errors.full_messages }
    end
  end

  private

  def find_sixbook_category
    @sixbook_category = SixbookCategory.find(params[:id])
  end
end
