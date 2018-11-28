module ApplicationHelper

  def glyph(glyph)
    span=" <span class='fa fa-#{glyph}'></span> "
    span.html_safe
  end

end
