class OrientationsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_orientation, only: [:edit, :update, :destroy]

  def index
    @orientations = Orientation.all
  end

  def new
    @orientation = Orientation.new
  end

  def edit
  end

  def create
    @orientation = Orientation.new(orientation_params)

    respond_to do |format|
      if @orientation.save
        format.html { redirect_to orientations_path }
        format.json { render action: 'index' }
      else
        format.html { render action: 'new' }
        format.json { render json: @orientation.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @orientation.update(orientation_params)
        format.html { redirect_to orientations_path }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orientation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @orientation.destroy
    respond_to do |format|
      format.html { redirect_to orientations_url }
      format.json { head :no_content }
    end
  end

  private
    def set_orientation
      @orientation = Orientation.find(params[:id])
    end

    def orientation_params
      params.require(:orientation).permit(:orientation_date)
    end
end
