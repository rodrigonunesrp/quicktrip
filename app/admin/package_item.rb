ActiveAdmin.register PackageItem do
  permit_params :item, :link, :description, :package_id, :image, :pack_type

  	index do
		column :package_id
		column :item
		column :pack_type
		column image_tag :image
		column :created_at
		column :updated_at
		actions
	end

	form do |f|
	  f.inputs do
	    f.input :package_id, :label => 'Package', :as => :select, :collection => Package.all.map{|p| ["#{p.description}", p.id]}
	    f.input :item
	    f.input :pack_type, :label => 'Tipo do Pacote', :as => :select, :collection => {"Abrir campo link em nova janela" => 1, "Abrir show page do package_item e carregar link no iframe" => 2}
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
