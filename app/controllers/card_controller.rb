class CardController < ApplicationController
  def newcard
    @nokp4 = params[:nokp4]
	
	if !@nokp4.nil?
		pel = Card.new
		pel.nokp4 = @nokp4
		pel.cusname4 = params[:cusname4]
		pel.company_name4 = params[:company_name4]
		pel.cusemail4 =  params[:cusemail4]
		pel.cusadd4 = params[:cusadd4]
		pel.cuspostcode4 = params[:cuspostcode4]
		pel.cuscity4 =  params[:cuscity4]
		pel.cusstate4 = params[:cusstate4]
		pel.cusphone4 = params[:cusphone4]
		pel.cusdate4 =  params[:cusdate4]
		pel.cardtype =  params[:cardtype]
		pel.cardsize =  params[:cardsize]
		pel.cardside =  params[:cardside]
		pel.cardquantity =  params[:cardquantity]
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
  
  def listcard
  
  @card = Card.all
  
  
  end
    def detailcard
  
   @show = Card.find_all_by_id(params[:id])
  
  
  end
  
  def confirmationcard
    @order = Orderstat.all
  	@cari = Card.find_all_by_nokp4(params[:id])
	@nokp4 = params[:id]
	
	if !params[:nokp4].nil?
		stud = Card.find_by_nokp4(params[:id])
		stud.nokp4 = @nokp4
		stud.cusname4 = params[:cusname4]
        stud.orderstat = params[:orderstat]
	
		stud.save
		
		end
		end
end
