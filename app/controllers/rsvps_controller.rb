class RsvpsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
      if @event.attendees.include?(current_user)
        redirect_to @event, notice: 'You are already part of the event'
      else
        @event.attendees << current_user
        redirect_to @event, notice: 'Congratulations! you are now part of the event'
      end
  end
end
