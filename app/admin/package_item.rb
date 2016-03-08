ActiveAdmin.register PackageItem do
  permit_params :item, :link, :description, :package_id, :image

	form do |f|
	  f.inputs do
	    f.input :package_id, :label => 'Package', :as => :select, :collection => Package.all.map{|p| ["#{p.description}", p.id]}
	    f.input :item
	    f.input :image
	    f.input :link
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
