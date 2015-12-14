class TasksController < ApplicationController
  respond_to :json

  # GET /tasks
  def index
    @tasks = Task.all :order => :id
    respond_with @tasks
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
    respond_with @task
  end

  # POST /tasks
  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        format.json { render json: @task, status: :created, location: @task }
      else
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.json { head :no_content }
      else
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
