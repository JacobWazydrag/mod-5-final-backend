class StudentsController < ApplicationController
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token


    def secret 
        ENV["SECRET"]
    end

    def index
        @students = Student.all
        render json: @students
    end

    def show
        student = Student.find(params[:id])
        render json: student
    end

    def create
        student = Student.create(student_params)
        if student.valid?
            token = JWT.encode({student_id: student.id}, secret, 'HS256')
            render json: {student: student, token: token}
        else
            render json: {errors: student.errors.full_messages}
        end
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)
        render json: student
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
    end

    private

    def student_params
        params.permit(:username, :email, :password, :profile_picture, :bio, :phone_number, :first_name, :last_name, :fav_color)
    end

end