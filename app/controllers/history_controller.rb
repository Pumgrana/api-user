require 'elasticsearch/model'
require 'history'

class HistoryController < ActionController::API
  def show
    id = params[:id]
    history = History.find_by(id: id)
    render json: history
  end

  def index
    histories = History.all
    render json: histories
  end

  def create
    history = History.create(email: 'totot@gmail.com', url: 'www.fakeurl.fake', title: 'My Title')
    history.save
  end

  def destroy
    id = params[:id]
    history = History.find_by(id: id)
    history.destroy
    history.save
  end
end
