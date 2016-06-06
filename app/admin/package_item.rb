ActiveAdmin.register PackageItem do
  permit_params :item, :link, :description, :package_id, :image, :pack_type

  	index do
		column "Image" do |image| 
			"<img src='#{image.image}' height='100px' width='150px' >".html_safe
		end	
		column "Pacote" do |package|
			package.package.description
		end
		column "Tipo" do |package|
			package.package.package_type.package_type
		end
		column "Abrir link como"do |package|
			(package.pack_type == 1) ? "Abrir campo link em nova janela" : "Abrir show page do package_item e carregar link no iframe" 
		end
		column :item
		column :created_at
		column :updated_at
		actions
	end

	form do |f|
	  f.inputs do
	    f.input :package_id, :label => 'Pacote', :as => :select, :collection => Package.all.map{|p| ["#{p.description}", p.id]}
	    f.input :item
	    f.input :pack_type, :label => 'Abrir link como', :as => :select, :collection => {"Abrir campo link em nova janela" => 1, "Abrir show page do package_item e carregar link no iframe" => 2}
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
