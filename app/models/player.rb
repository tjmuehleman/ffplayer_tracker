class Player < ActiveRecord::Base
	self.table_name = "FFPlayers"
	self.primary_key = "id"
end
