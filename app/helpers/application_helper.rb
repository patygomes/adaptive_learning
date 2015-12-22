module ApplicationHelper

  def page_title_helper
    if controller.action_name
      prefix = "#{controller.action_name.capitalize} | "
    end
    "#{prefix}Adaptive Learning | EdSurge"
  end

  def load_stylesheets(opts={})
    stylesheet_link_tag "application.css"
  end

end
