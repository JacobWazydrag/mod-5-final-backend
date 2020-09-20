class LessonsController < ApplicationController


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
            render json: {lesson: lessons, artist: artist }
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
        params.permit(:title, :details, :start, :end, :price, :student_id, :artist_id)
    end

end