Trestle.resource(:appointments) do
  menu do
    item :appointments, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :Title
    column :Description
    column :StartDate
    column :EndDate
    column :ManagerID
    column :EmployeeID
    
  end
  # Customize the form fields shown on the new/edit views.
  #
  form do |appointment|
    text_field :Title
    text_field :Description
    datetime_field :StartDate
    datetime_field :EndDate
    text_field :ManagerID
    text_field :EmployeeID
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:appointment).permit(:Title, :StartDate, :EndDate, :ManagerID, :EmployeeID)
  # end
end
