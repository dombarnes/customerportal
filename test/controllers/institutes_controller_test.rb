require 'test_helper'

class InstitutesControllerTest < ActionController::TestCase
  setup do
    @institute = institutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institute" do
    assert_difference('Institute.count') do
      post :create, institute: { address: @institute.address, admin_contact: @institute.admin_contact, admin_contact_tel: @institute.admin_contact_tel, contact: @institute.contact, contact_tel: @institute.contact_tel, name: @institute.name, reseller_contact: @institute.reseller_contact, reseller_id: @institute.reseller_id, subdomain: @institute.subdomain, subscription_end_date,: @institute.subscription_end_date,, subscription_start_date: @institute.subscription_start_date, subscription_type: @institute.subscription_type }
    end

    assert_redirected_to institute_path(assigns(:institute))
  end

  test "should show institute" do
    get :show, id: @institute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institute
    assert_response :success
  end

  test "should update institute" do
    patch :update, id: @institute, institute: { address: @institute.address, admin_contact: @institute.admin_contact, admin_contact_tel: @institute.admin_contact_tel, contact: @institute.contact, contact_tel: @institute.contact_tel, name: @institute.name, reseller_contact: @institute.reseller_contact, reseller_id: @institute.reseller_id, subdomain: @institute.subdomain, subscription_end_date,: @institute.subscription_end_date,, subscription_start_date: @institute.subscription_start_date, subscription_type: @institute.subscription_type }
    assert_redirected_to institute_path(assigns(:institute))
  end

  test "should destroy institute" do
    assert_difference('Institute.count', -1) do
      delete :destroy, id: @institute
    end

    assert_redirected_to institutes_path
  end
end
