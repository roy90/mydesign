class AssistantController < ApplicationController

     def addadmin
	 
	 
	 end


    def login
    lassemail =params[:assemail]
    lasspass=params[:asspass]
   
   if(!lassemail.nil? && !lasspass.nil?)
   #get info from database
   
   check = Assistant.find_by_assemail_and_asspass(lassemail,lasspass)
   if check.nil?
     redirect_to :back
   else
     session[:assistant_assemail]=lassemail
	 session[:assistant_assname]=check.assname
	 redirect_to "/senarai_pelanggan"
   end
   
  end
  
 end
 
 def logout
	  session[:assistant_assemail]=nil
	  session[:assistant_assname]=nil
	  redirect_to "/login_ass" ,:notice => "You have successfully logged out"

 end
end
