require 'test_helper'

class StackComponentsControllerTest < ActionController::TestCase
  setup do
    @stack_component = stack_components(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stack_components)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stack_component" do
    assert_difference('StackComponent.count') do
      post :create, stack_component: { name: @stack_component.name, portfolio_item_id: @stack_component.portfolio_item_id }
    end

    assert_redirected_to stack_component_path(assigns(:stack_component))
  end

  test "should show stack_component" do
    get :show, id: @stack_component
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stack_component
    assert_response :success
  end

  test "should update stack_component" do
    patch :update, id: @stack_component, stack_component: { name: @stack_component.name, portfolio_item_id: @stack_component.portfolio_item_id }
    assert_redirected_to stack_component_path(assigns(:stack_component))
  end

  test "should destroy stack_component" do
    assert_difference('StackComponent.count', -1) do
      delete :destroy, id: @stack_component
    end

    assert_redirected_to stack_components_path
  end
end
