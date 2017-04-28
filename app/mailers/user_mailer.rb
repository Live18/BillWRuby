class UserMailer < ApplicationMailer
	default from: 'billwagner101@hotmail.com'

	def contact_form(email, name, message)
	@message = message
	mail(:from => email,
		:to => 'billwagner102@gmail.com',
		:subject => 'A new contact form message from #{name}')
	end
  def successful_payment(user, product)
    @user = user
    @product = product
    mail(:to => user.email,
        :subject => "Confirmation of payment #{product.name}")
  end
end
