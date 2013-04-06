class ApplicationController < ActionController::Base
  protect_from_forgery
  include PublicActivity::StoreController
  helper_method :activities

  def activities
  	@activities ||= PublicActivity::Activity.order("created_at desc")
  end

  # Override build_footer method in ActiveAdmin::Views::Pages
  require 'active_admin.rb'
end
