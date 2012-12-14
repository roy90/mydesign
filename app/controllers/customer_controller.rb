class CustomerController < ApplicationController
  def listcustomer
  @show = Customer.all
  end

  def findcustomer
  @searchnokp = params[:id]
  @find = Customer.find_all_by_nokp(@searchnokp)
  end

  def editcustomer
  end

  def addcustomer
  @nokp = params[:nokp]
	
	if !@nokp.nil?
		pel = 	Customer.new
		pel.nokp = @nokp
		pel.cusname = params[:cusname]
		pel.cusemail =  params[:cusemail]
		pel.cusadd = params[:cusadd]
		pel.cuspostcode = params[:cuspostcode]
		pel.cuscity =  params[:cuscity]
		pel.cusstate = params[:cusstate]
		pel.cusphone = params[:cusphone]
		pel.cusdate =  params[:cusdate]
		
		pel.save
		@msg = "DATA ALREADY SAVE"
		redirect_to "/senarai_pelanggan"
	end
  end
end
