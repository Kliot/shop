require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get pages_index_url
    assert_response :success
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
