ActiveAdmin.register UserAsPolitician do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :elected, :political_party, :office, :bio, :responsabilities, :verified

form do |f|
    f.inputs "Politician" do
      f.input :elected
      f.input :political_party
      f.input :office
      f.input :bio
      f.input :responsabilities
    end
    f.inputs "Verified" do
      f.input :verified
    end
    f.actions
  end

end
