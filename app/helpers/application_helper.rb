module ApplicationHelper
  def collection_for_six_category
    SixbookCategory.all.map{ |s| [s.category_name, s.id] }
  end

  def collection_for_dictionary_word
    Dictionary.all.map{ |d| [d.word, d.id] }
  end
end
