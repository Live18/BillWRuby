class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	@products = Product.limit(4)  
  end

  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	ActionMailer::Base.mail(:from => @email, 
  		:to => 'billwagner102@gmail.com',
  		:subject => 'New ARC Contact Email from #{@name}',
  		:body => @message).deliver_now
  end 
end
