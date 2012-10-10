class SettingsController < ApplicationController
  def index
  end

  def update_credential
  	Setting.update_value_for_key 'username', params[:username]
  	Setting.update_value_for_key 'password', params[:password]
  	redirect_to :action => "index"
  end
end
