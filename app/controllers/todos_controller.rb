class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :edit, :update, :destroy]

    def index
        @todos = Todo.all
    end

    def show
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.create(todo_params)
        respond_to do |format|
            if @todo.save
                format.html {redirect_to @todo, notice: 'User was successfully created!'}
            else
                format.html {render new}
            end
        end
    end

    def edit
    end

    def update
        respond_to do |format|
            if @todo.update(todo_params)
                format.html {redirect_to @todo, notice: 'User was successfully updated!'}
            else
                format.html {render :edit}
            end
        end
    end

    def destroy
        @todo.destroy
        respond_to do |format|
            format.html {redirect_to todo_url, notice: 'User was successfully destroyed!'}
        end
    end

    private
    def set_todo
        @todo = Todo.find(params[:id])
    end

    def todo_params
        params.require(:todo).permit(:title, :detail)
    end
        
end
