class Salesman < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :email
	validates_presence_of :agent_id
end
