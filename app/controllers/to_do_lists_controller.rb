class ToDoListsController < ApplicationController

    def index
        user = User.find(session[:user_id])
        todos = user.to_do_lists.all
        render json: todos, status: :ok
    end

    def create
        user = User.find_by(id: session[:user_id])
        todo = user.to_do_lists.create!(to_do_params)
        render json: todo, status: :created
    end

    def update
        user = User.find_by(id: session[:user_id])
        todo = ToDoList.find(params[:id])
        todo.update!(to_do_params)
        render json: todo, status: :accepted
    end

    def destroy

        user = User.find_by(id: session[:user_id])
        todo = ToDoList.find(params[:id])
        todo.destroy
        head :no_content
    end



    private

    def to_do_params
        params.permit(:title, :time)
    end
end
