Trestle.resource(:employees) do
  menu do
    item :employees, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :FirstName
    column :LastName
    column :email
    column :Phone
    column :HireDate
    column :JobID
    column :Salary
    column :DepartmentID
    column :ManagerID
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |employee|
    text_field :FirstName
    text_field :LastName
    text_field :email
    text_field :Phone
    date_field :HireDate
    text_field :JobID
    text_field :Salary
    text_field :DepartmentID
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
  #   params.require(:employee).permit(:name, ...)
  # end
end
