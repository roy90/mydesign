class BuntingController < ApplicationController
  def newbunting
    @nokp2= params[:nokp2]
	
	if !@nokp2.nil?
		pel = Bunting.new
		pel.nokp2 = @nokp2
		pel.cusname2 = params[:cusname2]
		pel.company_name2 = params[:company_name2]
		pel.cusemail2 =  params[:cusemail2]
		pel.cusadd2 = params[:cusadd2]
		pel.cuspostcode2 = params[:cuspostcode2]
		pel.cuscity2 =  params[:cuscity2]
		pel.cusstate2 = params[:cusstate2]
		pel.cusphone2 = params[:cusphone2]
		pel.cusdate2 =  params[:cusdate2]
		pel.buntingsize =  params[:buntingsize]
		pel.other =  params[:other]
		pel.buntingquantity =  params[:buntingquantity]
		pel.details =  params[:details]
		
		if params[:upload]
			post = Bunting.upload(params[:upload])
			pel.upload = ('../upload_documents/' + params[:upload].original_filename)
		else
			pel.upload = " "
		end
		
		pel.save
		@msg = "DATA ALREADY SAVE"
		redirect_to "/neworder"
	end
  end
 
  def listbunting
  
  @bunting = Bunting.all
  
  
  end
    def detailbunting
  
  
   @show = Bunting.find_all_by_id(params[:id])
  
  
  end
  
  def confirmationbun
    @order = Orderstat.all
  	@cari = Bunting.find_all_by_nokp2(params[:id])
	@nokp2 = params[:id]
	
	if !params[:nokp2].nil?
		stud = Bunting.find_by_nokp2(params[:id])
		stud.nokp2 = @nokp2
		stud.cusname2 = params[:cusname2]
        stud.orderstat = params[:orderstat]
	
		stud.save
		
		end
		end
end
