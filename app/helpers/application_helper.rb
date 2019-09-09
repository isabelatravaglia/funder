module ApplicationHelper
  def navbar_classes
    classes = 'navbar navbar-expand-sm navbar-light navbar-lewagon fixed-top'
    classes << " navbar-homepage" if params[:controller] == "pages"

    classes
  end

  def content_classes
    classes = 'site-content'
    classes << 'site-content-homepage' if params[:controller] == "pages"
    classes
  end
end
