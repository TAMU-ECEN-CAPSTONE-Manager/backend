## Backend and frontend for ECEN Capstone
This repo is meant for the backend and frontend implementation for the ECEN Capstone Application. The backend framework is on ruby and the front-end has support for both ERB and React. Environment and deployment information is provided below.
## Environment Information

 - **Ruby:** ruby 2.6.6p146
 - **Rails:** 6.1.4.1
 - **SQLite:** 3.22.0

## How to Deploy



 - When running for the first time

		rvm install "ruby-2.6.6"
		gem install bundler:2.2.27
		bundle install
    

 - After the initial setup is done
	
		rake db:create
    	rails s

**Note:** 
	- Make Sure that if you are deploying in Cloud9 change Line 74 in /backend/config/environments/development.rb and add your custom Cloud9 URL.
	- Also use Ubuntu 18.04 instead of Amazon Linux while spawining a new Cloud9 instance.
