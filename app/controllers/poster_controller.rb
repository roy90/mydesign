class PosterController < ApplicationController
  def newposter
    @nokp3 = params[:nokp3]
	
	if !@nokp3.nil?
		pel = Poster.new
		pel.nokp3 = @nokp3
		pel.cusname3 = params[:cusname3]
		pel.company_name3 = params[:company_name3]
		pel.cusemail3 =  params[:cusemail3]
		pel.cusadd3 = params[:cusadd3]
		pel.cuspostcode3 = params[:cuspostcode3]
		pel.cuscity3 =  params[:cuscity3]
		pel.cusstate3 = params[:cusstate3]
		pel.cusphone3 = params[:cusphone3]
		pel.cusdate3 =  params[:cusdate3]
		pel.possize =  params[:possize]
		pel.posquantity =  params[:posquantity]
		pel.details =  params[:details]
		
		if params[:upload]
			post = Poster.upload(params[:upload])
			pel.upload = ('../upload_documents/' + params[:upload].original_filename)
		else
			pel.upload = " "
		end
		
		
		pel.save
		@msg = "DATA ALREADY SAVE"
		redirect_to "/neworder"
	end
  end
  
  def listposter
  
  @poster = Poster.all
  
  
  end
    def detailposter
  
   @show = Poster.find_all_by_id(params[:id])
  
  end
  
  def confirmationposter
    @order = Orderstat.all
  	@cari = Poster.find_all_by_nokp3(params[:id])
	@nokp3 = params[:id]
	
	if !params[:nokp3].nil?
		stud = Poster.find_by_nokp3(params[:id])
		stud.nokp3 = @nokp3
		stud.cusname3 = params[:cusname3]
        stud.orderstat = params[:orderstat]
	
		stud.save
		
		end
		end
end
