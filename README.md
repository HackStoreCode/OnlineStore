# README
Art House

A one-sided online store that provides users with the ability to view, inspect and
purchase art posted by various potential sellers.

Tests

There are several tests within the test.rb file .e.g.

require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { email: @customer.email, login: @customer.login, name: @customer.name } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  This allowed for extensive debugging and resolution of conflicts within the source code.




Built With

Ruby on Rails - The web framework used
Ruby Gems - Dependency Management
Stripe - To generate payments.
Contributing


Versioning

We use Github as our primary source of version control. https://github.com/HackStoreCode/OnlineStore

Authors

Gregory Parkes-skelly
Alex Pham
Ali Ansari

License

This project is licensed under the MIT License - see the LICENSE.md file for details

Acknowledgments

Hat tip to anyone who's code was used
Inspiration
etc


* ERD
  *
![alt tag](https://raw.githubusercontent.com/https://github.com/HackStoreCode/OnlineStore/master/erd/erd.png)
