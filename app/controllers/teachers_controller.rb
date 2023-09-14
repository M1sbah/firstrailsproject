class TeachersController < ApplicationController

    # Filter Actions

    before_action :set_teacher, only: [:edit, :show, :update, :destroy]


    #end

    def index
        @teachers = Teacher.all
    end
    def new
        @teacher = Teacher.new
    end
    def create
        @teacher = Teacher.new(teacher_params)
        if @teacher.save
            flash[:notice] = "Teacher Added Successfully"
            redirect_to teachers_path
        else
            render :new
        end
    end
    def edit
    end
    def show
    end
    def update
        @teacher.update(teacher_params)
        redirect_to teachers_path
    end
    def destroy
        @teacher.destroy
        redirect_to teachers_path , notice: 'Teacher Deleted Successfully'
    end
    private

    def teacher_params
        params.require(:teacher).permit(:name, :email, :age)
    end

    def set_teacher
        @teacher=Teacher.find(params[:id])
    end

end
