# Todos controller
class TodosController < ApplicationController
  before_filter :authenticate

  def index
    @todos = Todo.where(email: signed_in_user)
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params.merge(email: signed_in_user))
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

  def signed_in_user
    session[:current_email]
  end
end
