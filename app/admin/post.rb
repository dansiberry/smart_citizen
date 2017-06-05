ActiveAdmin.register Post do
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

permit_params :title, :content, :category, :city, :neighbourhood, :verified

form do |f|
    f.inputs "Issue content" do
      f.input :title
      f.input :content
      f.input :category
      f.input :city
      f.input :neighbourhood
      f.input :photo
      f.input :verified
    end
    f.actions
  end

end
