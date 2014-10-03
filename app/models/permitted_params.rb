class PermittedParams < Struct.new(:params, :user)

  def user
    params.require(:user).permit(*user_attrs)
  end

  def user_attrs
    [:name, :age, :sex, :birth, :description, :location, :is_super_user, :email, :password, :password_confirmation]
  end

  def sixbook
    params.require(:sixbook).permit(*sixbook_attrs)
  end

  def sixbook_attrs
   [:word, :dic_id, :six_cat_id, :meaning, :file, :image, :remove_file, :remove_image ]
  end

  def sixbook_category
    params.require(:sixbook_category).permit([:description])
  end

  def location
    params.require(:location).permit([:name])
  end

  def artist
    params.require(:artist).permit(*artist_attrs)
  end

  def artist_attrs
    [:name, :location_id, :description]
  end

  def dictionary
    params.require(:dictionary).permit(*dictionary_attrs)
  end

  def dictionary_attrs
    [:word, :six_id, :six_cat_id, :component, :meaning, :term, :flash, :remove_flash]
  end

  def creation
    params.require(:creation).permit(*creation_attrs)
  end

  def creation_attrs
    [:name, :creator_id, :content, :description, :file, :remove_file]
  end

  def game
    params.require(:game).permit(*game_attrs)
  end

  def game_attrs
    [:dic_id, :file, :game_type, :remove_file]
  end

end
