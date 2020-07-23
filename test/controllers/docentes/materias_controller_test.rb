require 'test_helper'

class Docentes::MateriasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get docentes_materias_index_url
    assert_response :success
  end

  test "should get show" do
    get docentes_materias_show_url
    assert_response :success
  end

  test "should get new" do
    get docentes_materias_new_url
    assert_response :success
  end

  test "should get edit" do
    get docentes_materias_edit_url
    assert_response :success
  end

end
