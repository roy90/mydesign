class BannerController < ApplicationController
  def newbanner
   @nokp1 = params[:nokp1]
	
	if !@nokp1.nil?
		pel = Banner.new
		pel.nokp1 = @nokp1
		pel.cusname1 = params[:cusname1]
		pel.company_name1 = params[:company_name1]
		pel.cusemail1 =  params[:cusemail1]
		pel.cusadd1 = params[:cusadd1]
		pel.cuspostcode1 = params[:cuspostcode1]
		pel.cuscity1 =  params[:cuscity1]
		pel.cusstate1 = params[:cusstate1]
		pel.cusphone1 = params[:cusphone1]
		pel.cusdate1 =  params[:cusdate1]
		pel.bansize =  params[:bansize]
		pel.other =  params[:other]
		pel.banquantity =  params[:banquantity]
		pel.details =  params[:details]
		
		if params[:upload]
			post = Banner.upload(params[:upload])
			pel.upload = ('../upload_documents/' + params[:upload].original_filename)
		else
			pel.upload = " "
		end
		
		pel.save
		@msg = "DATA ALREADY SAVE"
		redirect_to "/neworder"
	end
  
  
  
  end
  
    def listbanner
  
  @banner = Banner.all
  
  
  end
    def detailbanner
  
   @show = Banner.find_all_by_id(params[:id])
  
  
  end
  
    def confirmationban
    @order = Orderstat.all
  	@cari = Banner.find_all_by_nokp1(params[:id])
	@nokp1 = params[:id]
	
	if !params[:nokp1].nil?
		stud = Banner.find_by_nokp1(params[:id])
		stud.nokp1 = @nokp1
		stud.cusname1 = params[:cusname1]
        stud.orderstat = params[:orderstat]
	
		stud.save
		
		end
		end
  
  
end