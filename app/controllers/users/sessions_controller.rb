class Users::SessionsController < Devise::SessionsController
  skip_before_action :require_no_authentication

  def after_sign_in_path_for(resource)
    render layout: 'app/views/layouts/application.html.erb'
  end
end
