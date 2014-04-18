class TimecardsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_timecard, only: [:edit, :update, :destroy]

  def index
    @timecards = Timecard.find(:all, :conditions => "user_id", :order => "checkin_time ASC")
    @worklogs = Timecard.find_all_by_user_id(current_user)
  end

  def new
    @timecard = Timecard.new
  end

  def edit
  end

  def create
    @timecard = Timecard.new(timecard_params)
    @timecard.user = current_user

    respond_to do |format|
      if @timecard.save
        format.html { redirect_to timecards_path }
        format.json { render action: 'index' }
      else
        format.html { render action: 'new' }
        format.json { render json: @timecard.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @timecard.update(timecard_params)
        format.html { redirect_to @timecard }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @timecard.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @timecard.destroy
    respond_to do |format|
      format.html { redirect_to timecards_url }
      format.json { head :no_content }
    end
  end

  private

    def set_timecard
      @timecard = Timecard.find(params[:id])
    end

    def timecard_params
      params.require(:timecard).permit(:checkin_time, :checkout_time)
    end
end
