require 'test_helper'

class Estudiantes::AnotacionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estudiantes_anotaciones_index_url
    assert_response :success
  end

  test "should get show" do
    get estudiantes_anotaciones_show_url
    assert_response :success
  end

  test "should get new" do
    get estudiantes_anotaciones_new_url
    assert_response :success
  end

  test "should get edit" do
    get estudiantes_anotaciones_edit_url
    assert_response :success
  end

end
