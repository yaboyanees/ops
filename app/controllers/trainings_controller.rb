class TrainingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_training, only: [:edit, :update, :destroy]

  def index
    @trainings = Training.find(:all)
  end

  def show
  end

  def new
    @training = Training.new
  end

  def edit
  end

  def create
    @training = Training.new(training_params)

    respond_to do |format|
      if @training.save
        format.html { redirect_to trainings_path }
        format.json { render action: 'index' }
      else
        format.html { render action: 'new' }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @training.update(training_params)
        format.html { redirect_to trainings_path }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @training.destroy
    respond_to do |format|
      format.html { redirect_to trainings_url }
      format.json { head :no_content }
    end
  end

  private
  
    def set_training
      @training = Training.find(params[:id])
    end

    def training_params
      params.require(:training).permit(:name, :certification_date)
    end
end
