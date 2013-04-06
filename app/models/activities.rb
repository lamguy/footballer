class Activities < PublicActivities::Activity
	has_and_belongs_to_many :users
end