class HistoriesController < ApplicationController
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
    enter_date = params[:enter_date]
    leave_date = params[:leave_date]
    focus_elasped_time = params[:focus_elasped_time]
    total_elasped_time = params[:total_elasped_time]
    history = History.create(email: params[:email],
                             url: params[:url],
                             origin_url: params[:origin_url],
                             target_url: params[:target_url],
                             lang: params[:lang],
                             title: params[:title],
                             description: params[:description],
                             image: params[:image],
                             search: params[:search],
                             enter_date: enter_date,
                             leave_date: leave_date,
                             focus_elasped_time: focus_elasped_time,
                             total_elasped_time: total_elasped_time)
    history.save
    render json: history
  end

  def destroy
    id = params[:id]
    history = History.find_by(id: id)
    if history != nil
      history.destroy
    end
    render json: history
  end
end
