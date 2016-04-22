class CompletionsController < ApplicationController
  def create
    todo.find(params[:todo_id]).touch :completed_at
    redirect_to todos_path
  end

  private

  def todo
    current_user.todos
  end
end
