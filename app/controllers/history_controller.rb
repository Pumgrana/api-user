require 'elasticsearch'
require 'httparty'
require 'history'

class HistoryController < ActionController::API
  def show
    History.import

    response = History.search 'fox dog'
    response.took
    render json :response
  end
end
