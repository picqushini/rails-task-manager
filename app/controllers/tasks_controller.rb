class TasksController < ApplicationController
  before_action :read_id, only: [:show, :edit, :update, :destroy]

  # As a user, I can list tasks
  def index
    @tasks = Task.all
  end

  # As a user, I can view the details of a task
  def show
    # @task = Task.find(params[:id])
  end

  # As a user, I can add a new task (show form)
  def new
    @task = Task.new
  end

  # As a user, I can add a new task (submit form)
  def create
    @task = Task.create(task_params)
    # after i create the instance i redirect to its show page
    redirect_to task_path(@task.id)
  end

  # As a user, I can edit a task (see the form)
  def edit
    # @task = Task.find(params[:id])
  end

  # As a user, I can edit a task (submit the form)
  def update
    # @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task.id)
  end

  # As a user, I can remove a task
  def destroy
    # @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  # strong params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def read_id
    @task = Task.find(params[:id])
  end
end
