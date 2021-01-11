# frozen_string_literal: true

class Utils::Alert::Component < ViewComponent::Base
  def initialize(message: nil, type: 'success')
    @message = message
    @type = type
  end

  def change_bg_class
    case @type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    else
      'alert-warning'
    end
  end

  def render?
    !@message.nil?
  end
end
