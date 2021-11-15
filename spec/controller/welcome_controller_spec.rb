require 'rails_helper'
	
	RSpec.describe WelcomeController, type: :controller do
	    describe 'Home Page' do
	        render_views
	        it 'contains title' do 
	            get :index
	            expect(response).to be_successful
	            expect(response.body).to include("TAMU ECEN Capstone")
	        end
	        it 'checks about page' do
	            get :about
	            expect(response).to be_successful
	            expect(response.body).to include("About ECEN Capstone")
	        end
	        it 'checks studenthome page' do
	            get :studenthome
	            expect(response).to be_successful
	            expect(response.body).to include("Authentication")
	        end
	        it 'checks sponsorprojectsubmission page' do
	            get :sponsorprojectsubmission
	            expect(response).to be_successful
	            expect(response.body).to include("Sponsor Project Submission")
	        end
	    end
	end