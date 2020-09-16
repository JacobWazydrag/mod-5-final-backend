class AuthController < ApplicationController
    skip_before_action :verify_authenticity_token
    protect_from_forgery with: :null_session
    
    def secret 
        ENV["HS256"]
    end

    def login
        student = Student.find_by(username: login_params[:username])
        if student && student.authenticate(login_params[:password])
             token = JWT.encode({student_id: student.id}, secret, 'HS256')
            render json: {student: student, token: token}
        else
            render json: {errors: student.errors.full_messages}
        end
    end

    def persist
        if request.headers['Authorization']
            encoded_token = request.headers['Authorization'].split(' ')[1]
            token = JWT.decode(encoded_token, secret)
            student_id = token[0]['student_id']
            student = Student.find(student_id)
            render json: student
        end
    end

    private

    def login_params
        params.permit(:username, :password)
    end

end