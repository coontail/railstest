class ApplicationController < ActionController::API

  def current_user
    User.find_or_create_by(email: 'test@test.net')
  end
  
end
