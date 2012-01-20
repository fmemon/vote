require 'test_helper'

class VoteRecordsControllerTest < ActionController::TestCase
  setup do
    @vote_record = vote_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_record" do
    assert_difference('VoteRecord.count') do
      post :create, vote_record: @vote_record.attributes
    end

    assert_redirected_to vote_record_path(assigns(:vote_record))
  end

  test "should show vote_record" do
    get :show, id: @vote_record.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_record.to_param
    assert_response :success
  end

  test "should update vote_record" do
    put :update, id: @vote_record.to_param, vote_record: @vote_record.attributes
    assert_redirected_to vote_record_path(assigns(:vote_record))
  end

  test "should destroy vote_record" do
    assert_difference('VoteRecord.count', -1) do
      delete :destroy, id: @vote_record.to_param
    end

    assert_redirected_to vote_records_path
  end
end
