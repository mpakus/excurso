module ToursHelper
  def human_state(state)
    case state.to_sym
      when :draft
        %Q{<span class="label label-default">draft</span}.html_safe
      when :published
        %Q{<span class="label label-success">published</span}.html_safe
    end
  end
end
