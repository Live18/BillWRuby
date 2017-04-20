require 'rails_helper'

describe StaticPagesController, :type => :controller do
	context 'GET #landing_page' do
		before do
			get :landing_page
		end

		it 'reponds successfully with an HTTP 200 status code' do
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it 'renders the landing_page template' do
			expect(response).to render_template('landing_page')
		end
	end
end