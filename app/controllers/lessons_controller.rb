class LessonsController < ApplicationController
        protect_from_forgery with: :null_session
        skip_before_action :verify_authenticity_token


    def index
        @lessons = Lesson.all
        render json: @lessons
    end

    def show
        lesson = Lesson.find(params[:id])
        render json: lesson
    end

    def create
        lesson = Lesson.new(lesson_params)
        if lesson.save
            artist = lesson.artist
            student = lesson.student
            render json: {lesson: lesson, artist: artist, student: student }
          else
            render json: lesson.errors.full_messages, status: 401
          end
    end

    def update
        lesson = Lesson.find(params[:id])
        lesson.update(lesson_params)
        render json: lesson
    end

    def destroy
        lesson = Lesson.find(params[:id])
        lesson.destroy
    end

    private

    def lesson_params
        params.permit(:title, :startDate, :endDate, :student_id, :artist_id, :location)
    end

end