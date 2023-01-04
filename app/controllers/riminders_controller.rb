class RimindersController < ApplicationController

    def index
        user = User.find(session[:user_id])
        reminders = user.riminders.all
        render json: reminders
    end

    def update
        reminder = Riminder.find(params[:id])
        reminder.update!(reminder_params)
        render json: reminder.habit, status: :accepted
    end

    private

    def reminder_params
        params.permit(:time)
    end
end
