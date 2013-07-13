ApplicationController.class_eval do
  doorkeeper_for :all, if: -> { requested_to_json_api? }

  before_filter :authenticate_user_for_html_api

  private

  def authenticate_user_for_html_api
    authenticate_user! unless requested_to_json_api?
  end

  def requested_to_json_api?
    request.accept == "application/json"
  end
end
