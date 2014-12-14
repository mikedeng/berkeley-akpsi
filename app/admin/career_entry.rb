ActiveAdmin.register CareerEntry do
  permit_params :name, :company, :group, :year, :location, :fulltime_or_intern, :job_category

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
    column :name
    column :company
    column :group
    column :year
    column :location
    column :fulltime_or_intern
    column :job_category
    actions
  end

  form do |f|
    f.inputs "Career information" do
      f.input :name
      f.input :company
      f.input :group
      f.input :year
      f.input :location
      f.input :fulltime_or_intern, as: :select, collection: ["Internship", "Full-time"]
      f.input :job_category
    end

    f.actions
  end

end
