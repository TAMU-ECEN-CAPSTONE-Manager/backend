class ProjectReco < ApplicationRecord
    require 'rest-client'

    @url

    def self.getData
        response = RestClient(@url) #, { :content_type => :json })
    end

    def self.retrieve_results(parameter)
        @url = "https://google.com"
        return JSON.parse(ProjectReco.getData)
    end
end
