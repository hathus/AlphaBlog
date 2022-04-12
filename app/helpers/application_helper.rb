module ApplicationHelper
  def create_active_link( text, path, classes = [])
    class_name = current_page?(path) ? classes.append("active") : classes.pop

    link_to text, path, class: class_name
  end

  def define_active_link( controller )
    params[:controller] == controller &&
    %w(index new edit show).include?(params[:action]) ? "active" : ""
  end
end
