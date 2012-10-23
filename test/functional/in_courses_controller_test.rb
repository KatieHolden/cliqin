require 'test_helper'

class InCoursesControllerTest < ActionController::TestCase
  setup do
    @in_course = in_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:in_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create in_course" do
    assert_difference('InCourse.count') do
      post :create, :in_course => { :courseID => @in_course.courseID, :uniqname => @in_course.uniqname }
    end

    assert_redirected_to in_course_path(assigns(:in_course))
  end

  test "should show in_course" do
    get :show, :id => @in_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @in_course
    assert_response :success
  end

  test "should update in_course" do
    put :update, :id => @in_course, :in_course => { :courseID => @in_course.courseID, :uniqname => @in_course.uniqname }
    assert_redirected_to in_course_path(assigns(:in_course))
  end

  test "should destroy in_course" do
    assert_difference('InCourse.count', -1) do
      delete :destroy, :id => @in_course
    end

    assert_redirected_to in_courses_path
  end
end
