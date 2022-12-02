Trestle.resource(:locations) do
  menu do
    item :locations, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :StreetAddress
    column :PostalCode
    column :City
    column :Province
    column :Country
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |location|
    text_field :StreetAddress
    text_field :PostalCode
    text_field :City
    text_field :Province
    text_field :Country
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:location).permit(:name, ...)
  # end
end
