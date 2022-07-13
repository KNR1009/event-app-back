class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  before_action :event_params, only: [:create]

  def index
    render json: Event.all
  end

  def create
    event = current_user.created_events.new(event_params)
    if event.save!
      render json: {message: "登録完了しました"}
    else
      render json: event.errors.full_messages
    end
  end

  private

  def event_params
    params.permit(
      :name, :place, :content, :start_at, :end_at
    )
  end
end
