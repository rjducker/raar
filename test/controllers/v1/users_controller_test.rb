require 'test_helper'

module V1
  class UsersControllerTest < ActionController::TestCase

    setup :login_as_admin

    test 'GET index returns list of all users' do
      get :index
      assert_equal ['admin', 'speedee'], json_attrs(:username)
    end

    test 'GET show returns user as admin' do
      get :show, params: { id: users(:admin).id }
      assert_equal 'admin', json['data']['attributes']['username']
    end

    test 'GET show returns himself as regular user' do
      login
      get :show, params: { id: users(:speedee).id }
      assert_equal 'speedee', json['data']['attributes']['username']
    end

    test 'GET show returns forbidden for other user' do
      login
      get :show, params: { id: users(:admin).id }
      assert_response 403
    end

    test 'GET show returns unauthorized if not logged in' do
      login(nil)
      get :show, params: { id: users(:speedee).id }
      assert_response 401
    end

    test 'POST create adds new user' do
      assert_difference('User.count', 1) do
        post :create,
             params: {
               data: {
                 attributes: {
                   username: 'foo',
                   first_name: 'Pit',
                   last_name: 'Foo' } } }
        assert_response 201
      end
      assert_equal 'foo', json['data']['attributes']['username']
    end

    test 'POST create fails for invalid params' do
      assert_no_difference('User.count') do
        post :create,
            params: {
              data: {
                attributes: {
                  username: 'speedee',
                  first_name: 'Pit',
                  last_name: 'Foo' } } }
        assert_response 422
      end
    end

    test 'PATCH update updates existing user' do
      patch :update,
            params: {
              id: users(:speedee).id,
              data: { attributes: { first_name: 'Spee', last_name: 'Dee' } } }
      assert_response 200
      assert_equal 'Spee', json['data']['attributes']['first_name']
      assert_equal 'Spee', users(:speedee).reload.first_name
      assert_equal 'Dee', users(:speedee).last_name
    end

    test 'PATCH update fails for invalid params' do
      patch :update,
            params: {
              id: users(:speedee).id,
              data: { attributes: { username: 'admin' } } }
      assert_response 422
      assert_match /bereits vergeben/, response.body
      assert_equal 'speedee', users(:speedee).reload.username
    end

    test 'PUT api_key regenerates api key' do
      user = users(:speedee)
      key = user.api_key
      put :regenerate_api_key, params: { id: user.id }
      assert_response 200
      assert_not_equal key, user.reload.api_key
      assert_equal user.api_key, json['data']['attributes']['api_key']
    end

    test 'DELETE destroy removes existing user' do
      assert_difference('User.count', -1) do
        delete :destroy, params: { id: users(:speedee).id }
      end
      assert_response 204
    end

  end
end