module ApplicationHelper
  def active_for(controller_name)
    return "active" if controller_name == params[:controller]
  end
end
