Trestle.resource(:departments) do
  menu do
    item :departments, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :Name
    column :LocationID
    column :ManagerID
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |department|
    text_field :Name
    text_field :LocationID
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
  #   params.require(:department).permit(:name, ...)
  # end
end
