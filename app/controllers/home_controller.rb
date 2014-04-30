class HomeController < ApplicationController
  def index
  	@users = User.find(:all)	
  	@timecards = Timecard.find(:all, :order => "checkin_time ASC")
  	@worklogs = Timecard.where(user_id: current_user).order(:checkin_time)
	@jobs = Job.find(:all) 
  end
 def export
  	@users = User.find(:all)	
  	@timecards = Timecard.find(:all, :order => "checkin_time ASC")
  	@worklogs = Timecard.where(user_id: current_user).order(:checkin_time)
    headers['Content-Type'] = "application/vnd.ms-excel"
    headers['Content-Disposition'] = 'attachment; filename="Timecard Report.xls"'
    headers['Cache-Control'] = ''
    respond_to do |format|
      format.html { render :layout => false }
    end
 end
  def kill
    @timecard = Timecard.find(:all)
    @timecard.each do |t|
    	t.destroy
    end
    redirect_to root_path
  end
end
