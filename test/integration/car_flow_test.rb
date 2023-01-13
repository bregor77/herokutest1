require "test_helper"

class CarFlowTest < ActionDispatch::IntegrationTest
  
  
  test "can see the welcome page" do
    get "/"
    assert_select "h1", "Car Rental Home Page"
  end
end


  # test "can show car list" do
  #   get cars_url
  #   assert_response :success
  # end  

  # test "can create a new car" do
  #   # get "/cars/new"
  #   get new_car_url    
  #   assert_response :success
  # end
  
  #   # post "/cars",
  #     # params: { car: { brand: "Toyota", carmodel: "Yaris", year: 2022, body: "Some description", price: 100 } }
    
  #   post cars_url,
  #   # params: { car: { brand: @car.brand, carmodel: @car.carmodel, body: @car.body, price: @car.price, year: @car.year, status: @car.status } }
  #   params: { car: { brand: "Toyota", carmodel: "Yaris", year: 2022, body: "Some description", price: 100, status: "public" } }
  #   assert_response :redirect
  #   follow_redirect!
  #   assert_response :success
  #   assert_select "a", "New Car"
  # end  
# end



# setup do
#   sign_in users(:mariusz)
#   @car = cars(:one)
# end