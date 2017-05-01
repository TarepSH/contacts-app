require 'test_helper'

class ContactsInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacts_info = contacts_infos(:one)
  end

  test "should get index" do
    get contacts_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_contacts_info_url
    assert_response :success
  end

  test "should create contacts_info" do
    assert_difference('ContactsInfo.count') do
      post contacts_infos_url, params: { contacts_info: { : @contacts_info., address: @contacts_info.address, birthday: @contacts_info.birthday, compay: @contacts_info.compay, name: @contacts_info.name, phone: @contacts_info.phone } }
    end

    assert_redirected_to contacts_info_url(ContactsInfo.last)
  end

  test "should show contacts_info" do
    get contacts_info_url(@contacts_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacts_info_url(@contacts_info)
    assert_response :success
  end

  test "should update contacts_info" do
    patch contacts_info_url(@contacts_info), params: { contacts_info: { : @contacts_info., address: @contacts_info.address, birthday: @contacts_info.birthday, compay: @contacts_info.compay, name: @contacts_info.name, phone: @contacts_info.phone } }
    assert_redirected_to contacts_info_url(@contacts_info)
  end

  test "should destroy contacts_info" do
    assert_difference('ContactsInfo.count', -1) do
      delete contacts_info_url(@contacts_info)
    end

    assert_redirected_to contacts_infos_url
  end
end
