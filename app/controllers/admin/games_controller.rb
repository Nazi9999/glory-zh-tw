class Admin::GamesController < Admin::BaseController
  before_filter :find_dictionary
  before_filter :find_game, except: [:index, :new]
  before_filter except: :index do
    add_crumb "遊戲列表", admin_dictionary_games_path(@dictionary)
  end 

  def index
    add_crumb "遊戲列表", "#"
    @games = @dictionary.games.page(params[:page]).per(15)
  end

  def new
    add_crumb "新增遊戲", "#"
    @game = @dictionary.games.build
  end

  def create
    raise @game.inspect
    if @game.save
      redirect_to admin_dictionary_games_path(@dictionary), flash: { success: "新增遊戲成功!" }
    else
      render :new, flash: { error: @game.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯遊戲 #{@game.word}", "#"
  end

  def update
    if @game.update_attributes(permitted_params.game)
      redirect_to admin_dictionary_games_path(@dictionary), flash: { success: "編輯遊戲 #{@game.word} 成功!" }
    else
      render :edit, flash: { error: @game.errors.full_messages }
    end
  end

  def destroy
    if @creation.destroy
      redirect_to admin_dictionary_games_path(@dictionary), flash: { success: "刪除遊戲 #{@game.name}成功！" }
    else
      redirect_to admin_dictionary_games_path(@dictionary), flash: { error: @game.errors.full_messages }
    end
  end

  protected

  def find_dictionary
    @dictionary = Dictionary.find(params[:dictionary_id])
  end

  def find_game
    @game = params[:id] ? @dictionary.games.find(params[:id]) : @dictionary.games.build(permitted_params.game)
  end

end
