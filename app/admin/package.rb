ActiveAdmin.register Package do
  permit_params :description, :link, :package_type_id, :image

	form do |f|
	  f.inputs do
	    f.input :package_type_id, :label => 'Package Type', :as => :select, :collection => PackageType.all.map{|pt| ["#{pt.package_type}", pt.id]}
	    f.input :link
	    f.input :image
	    f.input :description
	    f.submit
	  end
	end

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


end
