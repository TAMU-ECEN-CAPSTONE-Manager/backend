class Api::V1::FormresponsesController < ApplicationController
    def index
        render json: {'Hello':'World'}
    end
end
