class AuthController < ApplicationController
    def callback
        # Access the authentication hash for omniauth
        data = request.env['omniauth.auth']

        # Temporary for testing!
        render json: data.to_json

        # Save the data in the session
        save_in_session data

        redirect_to root_url
    end

    skip_before_action :set_user

    def signout
        reset_session
        redirect_to root_url
    end

    def failure
        redirect_to root_url
    end
end
