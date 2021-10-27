require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "should create Course" do
    visit courses_url
    click_on "New Course"

    fill_in "Completed", with: @course.completed
    fill_in "Image url", with: @course.image_url
    fill_in "Started", with: @course.started
    fill_in "Status", with: @course.status
    fill_in "Title", with: @course.title
    fill_in "Url", with: @course.url
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "should update Course" do
    visit courses_url
    click_on "Edit", match: :first

    fill_in "Completed", with: @course.completed
    fill_in "Image url", with: @course.image_url
    fill_in "Started", with: @course.started
    fill_in "Status", with: @course.status
    fill_in "Title", with: @course.title
    fill_in "Url", with: @course.url
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "should destroy Course" do
    visit courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course was successfully destroyed"
  end
end
