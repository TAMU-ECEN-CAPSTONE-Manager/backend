class ProjectReco < ApplicationRecord
    require 'uri'
    require 'net/http'
    def results(projectid)
        uri = URI('http://0.0.0.0:5000/projectList')
        uri.query = URI.encode_www_form(params)
        res = Net::HTTP.get_response(uri) 
    end
end