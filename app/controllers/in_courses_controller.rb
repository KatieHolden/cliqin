class InCoursesController < ApplicationController
  # GET /in_courses
  # GET /in_courses.json
  def index
    @in_courses = InCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @in_courses }
    end
  end

  # GET /in_courses/1
  # GET /in_courses/1.json
  def show
    @in_course = InCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @in_course }
    end
  end

  # GET /in_courses/new
  # GET /in_courses/new.json
  def new
    @in_course = InCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @in_course }
    end
  end

  # GET /in_courses/1/edit
  def edit
    @in_course = InCourse.find(params[:id])
  end

  # POST /in_courses
  # POST /in_courses.json
  def create
    @in_course = InCourse.new(params[:in_course])

    respond_to do |format|
      if @in_course.save
        format.html { redirect_to @in_course, :notice => 'In course was successfully created.' }
        format.json { render :json => @in_course, :status => :created, :location => @in_course }
      else
        format.html { render :action => "new" }
        format.json { render :json => @in_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /in_courses/1
  # PUT /in_courses/1.json
  def update
    @in_course = InCourse.find(params[:id])

    respond_to do |format|
      if @in_course.update_attributes(params[:in_course])
        format.html { redirect_to @in_course, :notice => 'In course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @in_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /in_courses/1
  # DELETE /in_courses/1.json
  def destroy
    @in_course = InCourse.find(params[:id])
    @in_course.destroy

    respond_to do |format|
      format.html { redirect_to in_courses_url }
      format.json { head :no_content }
    end
  end
end
