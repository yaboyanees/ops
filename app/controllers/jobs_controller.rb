class JobsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_job, only: [:edit, :update, :destroy]

  def index
    @jobs = Job.find(:all)
    @trainings = Training.find(:all)
  end

  def new
    @job = Job.new
  end

  def edit
  end
    
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to jobs_path }
        format.json { render action: 'index' }
      else
        format.html { render action: 'new' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to jobs_path }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end

  private
  
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:name, :description, :training_id)
    end
end
