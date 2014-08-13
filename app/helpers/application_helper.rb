module ApplicationHelper
  def collection_for_six_category
    SixbookCategory.all.map{ |s| [s.category_name, s.id] }
  end

  def collection_for_dictionary_word
    Dictionary.all.map{ |d| [d.word, d.id] }
  end

  def render_sidebar_menu
    # render_list do|li|
    #   li << link_to(admin_sixbooks_path){ render_icon(:star) + content_tag(:span,"六書列表")}
    # end  
  end

  def render_icon(name)
    content_tag(:i, " ", :class => "icon icon-#{name}")
  end
end
