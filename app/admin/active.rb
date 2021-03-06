# Active settings in activeadmin

ActiveAdmin.register Active do
  permit_params :name, :email, :major, :pledge_class, :hometown, :linkedin, :previous_positions, 
                :eboard_position, :display, :biography, :photo, :password

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do
    id_column
    column :name
    column :email
    column :major
    column :hometown
    column "Executive Board Position", :eboard_position
    column :previous_positions
    column :pledge_class
    column "LinkedIn Url", :linkedin
    column "Show On Brothers Page", :display
    actions
  end

  # Form for 
  form do |f|
    f.inputs "Active information" do
      f.input :name
      f.input :email
      f.input :major
      f.input :hometown
      f.input :eboard_position, :label => "Executive board position"
      f.input :previous_positions
      f.input :pledge_class
      f.input :linkedin, :label => "LinkedIn url"
      f.input :display, :label => "Show on brothers page"
      f.input :biography
      f.input :photo
      if f.object.new_record?
          f.input :password
          f.input :password_confirmation
      end
    end
    f.actions
  end

end
