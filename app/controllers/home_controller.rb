class HomeController < ApplicationController
  def index
  	@users = User.find(:all)	
  	@timecards = Timecard.find(:all, :conditions => "user_id", :order => "checkin_time ASC")
  	@worklogs = Timecard.find(:all, :conditions => {:user_id=>current_user}, :order => "checkin_time ASC")
  end
 def export
  	@users = User.find(:all)	
  	@timecards = Timecard.find(:all, :conditions => "user_id", :order => "checkin_time ASC")
  	@worklogs = Timecard.find(:all, :conditions => {:user_id=>current_user}, :order => "checkin_time ASC")
    headers['Content-Type'] = "application/vnd.ms-excel"
    headers['Content-Disposition'] = 'attachment; filename="Timecard Report.xls"'
    headers['Cache-Control'] = ''
    respond_to do |format|
      format.html { render :layout => false }
    end
 end

end
