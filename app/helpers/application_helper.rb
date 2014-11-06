module ApplicationHelper

  ##
  # Show flash messages
  def flash_message(flash)
    out = ""
    flash.each do |name, msg|
      if msg.is_a?(String) && !msg.blank? && !name.blank?
        out << %Q{
          <div class="alert alert-#{name.to_sym == :notice ? "success" : "danger"}">
            <a class="close" onClick="$(this).parent().fadeOut(300)">&times;</a>
            #{content_tag(:div, msg, :id => "flash_#{name}")}
          </div>
        }
      end
    end
    raw out
  end

  ##
  # Show form validation errors
  def form_errors(form, show_field=true)
    html = ''
    if form.errors.any?
      html = %Q{
        <div class="alert alert-error">
          <a class="close" onClick="$(this).parent().fadeOut(300)">&times;</a>
          <div>#{form.errors.count} error(s):</div>
          <ul>
      }
      form.errors.each do |field, msg|
        html += (show_field) ? "<li>#{field} #{msg}</li>" : "<li>#{msg}</li>"
      end
      html << %Q{
        </ul>
      </div>
      }
    end
    raw html
  end

end
