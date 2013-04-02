ActiveAdmin.register Player do
  # New/Edit forms  
  form( :html => { :multipart => true } ) do |f|
	f.inputs '' do
		f.input :name
		f.input :born, :as => :datepicker
  	end
  	f.buttons
  end
end
