class PaymentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @product = Product.find_by(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
      #Creates the charge on Stripe's servers
      begin
        charge = Stripe::Charge.create(
          :amount => (@product.price*100), 
          :currency => 'usd',
          :source => token,
          :description => params[:stripeEmail]
          )
        if charge.paid
          Order.create(product_id: @product.id, user_id: @user.id, total: @product.price)
          flash[:notice] = "Thank you for your purchase of #{@product.name}"
          UserMailer.successful_payment(@user, @product).deliver_now
      end
      rescue Stripe::CardError => e 
        #card is declined
        body = e.json_body
        err = body[:error]
        flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
      end
      redirect_to product_path(@product), notice: 'Your payment is proceesed'
  end
end