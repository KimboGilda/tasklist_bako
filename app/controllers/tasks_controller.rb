class TasksController < ApplicationController
  before_action :set_list

  def new
    @task = Task.new
  end

  def create
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to list_path(@list)
    end
  end

  private
  def set_list
    @list = List.find(params[:list_id])
  end
  def task_params
    params.require(:task).permit(:title)
  end

end
