class HabitsController < ApplicationController


    def index
        user = User.find(session[:user_id])
        habits = user.habits.all
        render json: habits, status: :ok
    end

    def show
        user = User.find_by(id: session[:user_id])
        habit = Habit.find(params[:id])
        render json: habit, status: :ok
    end

    def create
        user = User.find_by(id: session[:user_id])
        habit = user.habits.create!(habit_params)
        render json: habit, status: :created
    end

    def update

        user = User.find_by(id: session[:user_id])
        habit = Habit.find(params[:id])
        habit.update!(habit_params)
        render json: habit, status: :accepted
    end

    def destroy

        user = User.find_by(id: session[:user_id])
        habit = Habit.find(params[:id])
        habit.destroy
        head :no_content
    end



    private

    def habit_params
        params.permit(:logo, :name, :repeat, :goal, :time_of_day, :start_date, :progress)
    end
end
