class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create(task_params)
    if @task.save
      render :create
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    if task.update(task_params) 
      redirect_to root_path
    else
      render :edit
    end
  end



  private

  def task_params
    params.require(:task).permit(:if_task, :then_task, :title, :unit, :month_goal).merge(user_id: current_user.id)
  end
end
