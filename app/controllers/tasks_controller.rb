class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :user_confirmation,  only: [:edit, :update, :destroy]
  before_action :set_task,           only: [:edit, :update, :destroy]
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
  end

  def update
    if task.update(task_params) 
      redirect_to root_path
    else
      redirect_to edit_task_path(task.id)
    end
  end


  def destroy
    if @task.destroy
      redirect_to root_path
    end
  end


  private

  def task_params
    params.require(:task).permit(:if_task, :then_task, :title, :unit, :month_goal).merge(user_id: current_user.id)
  end

  def user_confirmation
    redirect_to root_path unless current_user == @task.user
  end
      
  def set_task
    @task = Task.find(params[:id])
  end
    
end
