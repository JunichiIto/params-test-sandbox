require 'test_helper'

class PeopleFlowsTest < ActionDispatch::IntegrationTest
  test "integerで渡す" do
    get people_path, { age_base: 20, range: 10 }
    assert_response :success
    assert_equal('20', assigns["base"])
    assert_equal('10', assigns["range"])
  end

  test "stringで渡す" do
    get people_path, { age_base: '20', range: '10' }
    assert_response :success
    assert_equal('20', assigns["base"])
    assert_equal('10', assigns["range"])
  end
end
