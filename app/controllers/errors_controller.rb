class ErrorsController < ApplicationController
  include Gaffe::Errors
  skip_before_action :authenticate_user!
  layout 'application'
  def show
    render "errors/#{@rescue_response}", status: @status_code
  end
end
