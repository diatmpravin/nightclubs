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
	
	#VALIDATIONS
	validates_presence_of :title, :message => 'Please provide title to your service'
   validates_presence_of :description, :message => 'Please introduce brief discription of service'
	validates_presence_of :buyPirce, :message => 'Please list buy price of service'
	validates_presence_of :minBidPrice, :message => 'What will be the minmum bid of servie'
	validates_presence_of :status, :message => 'Is servie active?'
end
