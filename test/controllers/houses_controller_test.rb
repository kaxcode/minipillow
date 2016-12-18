require 'test_helper'

class HousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house = houses(:one)
  end

  test "should get index" do
    get houses_url
    assert_response :success
  end

  test "should get new" do
    get new_house_url
    assert_response :success
  end

  test "should create house" do
    assert_difference('House.count') do
      post houses_url, params: { house: { address: @house.address, description: @house.description, number_of_baths: @house.number_of_baths, number_of_beds: @house.number_of_beds, price: @house.price, sq_footage: @house.sq_footage, user_id: @house.user_id, year_built: @house.year_built } }
    end

    assert_redirected_to house_url(House.last)
  end

  test "should show house" do
    get house_url(@house)
    assert_response :success
  end

  test "should get edit" do
    get edit_house_url(@house)
    assert_response :success
  end

  test "should update house" do
    patch house_url(@house), params: { house: { address: @house.address, description: @house.description, number_of_baths: @house.number_of_baths, number_of_beds: @house.number_of_beds, price: @house.price, sq_footage: @house.sq_footage, user_id: @house.user_id, year_built: @house.year_built } }
    assert_redirected_to house_url(@house)
  end

  test "should destroy house" do
    assert_difference('House.count', -1) do
      delete house_url(@house)
    end

    assert_redirected_to houses_url
  end
end
