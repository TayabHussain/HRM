Trestle.resource(:managers) do
  menu do
    item :managers, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :FirstName
    column :LastName
    column :email
    column :phone
    column :DepartmentID
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |manager|
    text_field :FirstName
    text_field :LastName
    text_field :email
    text_field :phone
    text_field :DepartmentID

  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:manager).permit(:name, ...)
  # end
end
