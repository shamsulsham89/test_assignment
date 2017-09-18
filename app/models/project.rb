class Project < ApplicationRecord
	validates :name, :start_date, :status, presence: true

	STATUS = [["In Progress","In Progress"],["Completed","Completed"],["Analysis","Analysis"]]
end
