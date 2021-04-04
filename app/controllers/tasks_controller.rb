class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:if_task, :then_task, :title, :unit, :month_goal).merge(user_id: current_user.id)
  end
end
