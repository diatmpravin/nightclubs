class Servicelisting
	include Mongoid::Document
	include Mongoid::Timestamps::Created
	include Mongoid::Timestamps::Updated
  
	# RELATIONS
	belongs_to :bar
	belongs_to :user
	
	#FIELDS
	field :title, :type => String
	field :description, :type => String
	field :availability, :type => Date
	field :buyPirce, :type => Integer
	field :minBidPrice, :type => Integer
	field :noOfGuest, :type => Integer
	field :status, :type => Integer
	field :hightestBid, :type => Integer
end
