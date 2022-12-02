Trestle.resource(:notes) do
  menu do
    item :notes, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :Title
    column :Description
    column :EmployeeID
    column :ManagerID
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |note|
    text_field :Title
    text_field :Description
    text_field :EmployeeID
    text_field :ManagerID
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:note).permit(:name, ...)
  # end
end
