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
   [:word, :dic_id, :six_cat_id, :meaning, :file, :image]
  end

end
