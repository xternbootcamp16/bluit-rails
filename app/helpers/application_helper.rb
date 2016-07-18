module ApplicationHelper
  def flash_messages(flash)
    flash.map do |name, msg|
      content_tag :div, class: "alert #{name}" do
        flash_message_output msg
      end
    end.join.html_safe
  end

  def flash_message_output(content)
    if content.is_a? Array
      flash_list content
    else
      content
    end
  end

  def flash_list(messages)
    content_tag :ul do
      messages.map do |message|
        content_tag(:li, message)
      end.join.html_safe
    end
  end
end
