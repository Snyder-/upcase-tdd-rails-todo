# Todos controller
class TodosController < ApplicationController
  before_filter :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.create(todo_params)
    if @todo.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end
