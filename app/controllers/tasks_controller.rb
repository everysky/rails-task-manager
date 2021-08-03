class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    # @task = Task.new(params[:task])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def update
  end

  def delete
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
