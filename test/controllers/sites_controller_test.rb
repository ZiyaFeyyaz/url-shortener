require 'test_helper'

class SitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site = sites(:one)
  end

  test "should get index" do
    get sites_url
    assert_response :success
  end

  test "should get new" do
    get new_site_url
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post sites_url, params: { site: { origin_url: @site.origin_url, short_path: @site.short_path, usage_amount: @site.usage_amount } }
    end

    assert_redirected_to site_url(Site.last)
  end

  test "should show site" do
    get site_url(@site)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_url(@site)
    assert_response :success
  end

  test "should update site" do
    patch site_url(@site), params: { site: { origin_url: @site.origin_url, short_path: @site.short_path, usage_amount: @site.usage_amount } }
    assert_redirected_to site_url(@site)
  end

  test "should destroy site" do
    assert_difference('Site.count', -1) do
      delete site_url(@site)
    end

    assert_redirected_to sites_url
  end
end