require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  test "Test home route" do
    assert_routing '/', controller: "pages", action: "home"
  end

end
