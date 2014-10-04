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

  def render_text_at_most(text, max)
    if (text.kind_of?String) && (text.length > 0)
      text.length > max ?  "#{text[0..max-1]}" "<span class='more'>...more</span>".html_safe : text
    else
      text
    end
  end

  def collection_for_artist_name_with_id
    Artist.all.map{|m| [m.name, m.id]}
  end

  def render_game_file_existance(game)
    game.file? ? "已建立" : "未建立"
  end

  def render_option_class(option)
    Option::OPTION_CLASS_HASH.values_at(option.o_class).first
  end

end
