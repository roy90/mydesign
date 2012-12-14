class AdminController < ApplicationController
  def login
    lademail =params[:ademail]
    ladpass=params[:adpass]
   
   if(!lademail.nil? && !ladpass.nil?)
   #get info from database
   check = Admin.find_by_ademail_and_adpass(lademail,ladpass)
   if check.nil?
     redirect_to :back
   else
     session[:admin_ademail]=lademail
	 session[:admin_adname]=check.adname
	 redirect_to "/home"
   end
   
  end
  
 end
 
 def logout
	  session[:admin_ademail]=nil
	  session[:admin_adname]=nil
	  redirect_to "/home" ,:notice => "You have successfully logged out"

 end
   
  
  
  
end
