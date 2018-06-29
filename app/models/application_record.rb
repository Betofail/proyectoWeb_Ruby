class ApplicationRecord < ActiveRecord::Base
	self.include_root_in_json = true
	self.abstract_class = true
end
