class RegistrationsController < Devise::RegistrationsController

  def update_resource(resource, params)
    if current_user.email.include?("email.com")
      params.delete(:current_password)
      resource.update_without_password(params)
    else
      super
    end
  end


end
