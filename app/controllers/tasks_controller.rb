class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = task.new
  end

  def create
    @task = task.new(restaurant_params)
    @task.save
    redirect_to restaurant_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to task_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :address, :stars)
  end

  def set_task
    @task = task.find(params[:id])
  end

end
