class RecordsController < ApplicationController
  def index
    @records = Record.new
    @task = Task.find(params[:task_id])
  end

  def new
    @task = Task.find(params[:task_id])
    @record = Record.new
    records = @task.records.new(record_params)
  end

  def create
    @task = Task.find(params[:task_id])
    @record = @task.records.new(record_params)
    if @record.save
      redirect_to task_records_path(task.id)
    else
      render :new
    end
  end

  private

  def record_params
    params.permit(:count, :memo, :start_time).merge(user_id: current_user.id, task_id: params[:task_id])
  end
end
