module ApplicationHelper
  def flash_class_name(name)
    case name
      when "notice" then "success"
      when "alert" then "danger"
    else
      name
    end
  end
end
