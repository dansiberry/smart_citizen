class RegistrationsController < Devise::RegistrationsController

  def update_resource(resource, params)
    if current_user.email.include?("email.com")
      params.delete(:current_password)
      resource.update_without_password(params)
    else
      super
    end
  end

 def create
  super
  if resource.active_for_authentication?
    flash[:analytics] = '/goals/signup'
    set_flash_message! :notice, :signed_up
    sign_up(resource_name, resource)
    respond_with resource, location: after_sign_up_path_for(resource)
  else
    super
  end
  super
end

def destroy
  resource.destroy
  Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
  flash[:analytics] = '/goals/delete_account'
  super
end

end
