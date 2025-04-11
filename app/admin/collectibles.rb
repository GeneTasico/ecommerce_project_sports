ActiveAdmin.register Collectible do

    # What admins can change
    permit_params :name, :description, :price, :stock_quantity, :category_id

    # Search Filters
    filter :name
    filter :category
    filter :price
  
    # Customizes index/collectibles page
    index do
      selectable_column
      id_column
      column :name
      column :description
      column :price
      column :category
      actions
    end
  
    # Form outline to add and edit collectibles
    form do |f|
      f.inputs do
        f.input :name
        f.input :description
        f.input :price
        f.input :stock_quantity
        f.input :category, as: :select, collection: Category.all, include_blank: false
      end
      f.actions
    end
    
    # Product page view materials
    show do
      attributes_table do
        row :name
        row :description
        row :price
        row :stock_quantity
        row :category
      end
    end
end
