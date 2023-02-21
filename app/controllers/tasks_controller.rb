class TasksController < ApplicationController
    def index
       @tasks = Task.all
    end

    def show
        @tasks = Task.find(params[:id])
    end

    def new
        @task = Task.new
    end
    
    def create
        @task = Task.new(task_params)
        @task.save
        redirect_to tasks_path
    end
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path, status: :see_other
    end
    def edit
        @task = Task.find(params[:id])
    end
    def update
        @task = Task.find(params[:id])
        @task.update(tasks_params)
        # No need for app/views/taskss/update.html.erb
        redirect_to task_path(@task)
    end

    private

    def tasks_params
        params.require(:task).permit(:title, :details, :completed)
    end
    
 
    
end
