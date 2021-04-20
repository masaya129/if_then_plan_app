class RecordsController < ApplicationController
  def index
    @records = Record.all
    @task = Task.find(params[:task_id])
  end

  def new
    @task = Task.find(params[:task_id])
    @record = current_user.records.new
  
  end

  def create
    @task = Task.find(params[:task_id])
    @record = @task.records.new(record_params)
    if @record.save
      redirect_to task_records_path(@task.id)
    else
      render :new
    end
    
  end

  def show
    @record = Record.new
    @task = Task.find(params[:task_id])
    @records = @task.records.includes(:user)
  end

  private

  def record_params
    params.require(:record).permit(:count, :memo, :start_time).merge(user_id: current_user.id)
  end
end
