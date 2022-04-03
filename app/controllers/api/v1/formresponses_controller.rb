class Api::V1::FormresponsesController < ApplicationController
    def index
        render json: {'Response':'HTTP GETting will take you nowhere'}
    end

    def create
        header_value = request.headers['Authorization'].split(' ').last
        if header_value != ENV["AUTH_TOKEN_API"]
            render plain: { error: 'Invalid Auth Token' }.to_json, status: 400, content_type: 'application/json'
        else
            @student = Formresponse.new(student_params)
            if @student.save
                render plain: @student.to_json, content_type: 'application/json'
            else
                render plain: { error: 'Unable to create a new student in the DB' }.to_json, status: 400, content_type: 'application/json'
            end
        end
    end

    def student_params
        params.require(:formresponse).permit(:tamu_email,:full_name,:uin,:gpa,:resume_url,:acknowledgement)
    end
end
