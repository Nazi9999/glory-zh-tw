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

  def question
    params.require(:question).permit(*question_attrs)
  end

  def question_attrs
    [:text, :dic_id, :q_type, :ans, :q_class, :q_item, :note, members_attributes: [:id, :question_id, :option_id, :code, :is_correct, :note, :option_class, :_destroy], options_attributes: [:id, :content, :o_class, :_destroy, :option_code]]
  end

  def option
    params.require(:option).permit(*option_attrs)
  end

  def option_attrs
    [:content, :o_class, :o_item, :note, 'options_class', 'chosen_id']
  end

  def q_a_membership
    params.require(:question_option_membership).permit(*q_a_membership_attrs)
  end

  def q_a_membership_attrs
    [:question_id, :option_id, :code, :is_correct, :note]
  end

end
