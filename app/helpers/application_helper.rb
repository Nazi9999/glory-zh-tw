module ApplicationHelper
  def collection_for_six_category
    SixbookCategory.all.map{ |s| [s.category_name, s.id] }
  end

  def collection_for_dictionary_word
    Dictionary.all.map{ |d| [d.word, d.id] }
  end

  def collection_for_loaction_name_with_id
    Location.all.map{ |l| [l.name, l.id] }
  end

  def collection_for_six_words
    Sixbook.all.map{ |s| [s.word, s.id] }
  end

  def render_icon(name)
    content_tag(:i, " ", :class => "icon icon-#{name}")
  end
end
