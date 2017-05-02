module ApplicationHelper

  def format_datetime(datetime)
      datetime.strftime("%d/%m/%Y at %l:%M %P") unless datetime.nil?
  end
end
