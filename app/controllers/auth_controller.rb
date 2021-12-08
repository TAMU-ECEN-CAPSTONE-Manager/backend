class AuthController < ApplicationController
    def callback
        # Access the authentication hash for omniauth
        data = request.env['omniauth.auth']
        # Save the data in the session
        save_in_session data
        
        redirect_to root_url
    end

    def signout
        reset_session
        root_url_encoded= CGI.escape(root_url)
        signout_redirect = "https://login.microsoftonline.com/common/oauth2/v2.0/logout?post_logout_redirect_uri=" + root_url_encoded
        redirect_to signout_redirect
        #"https://login.microsoftonline.com/common/oauth2/v2.0/logout?post_logout_redirect_uri=http%3A%2F%2Flocalhost%3A3000"
    end

    def failure
        redirect_to root_url
    end
end

