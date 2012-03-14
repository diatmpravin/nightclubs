class Bar
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  
  #RELATIONS
  belongs_to :user
  has_many :servicelistings
  
  #VALIDATIONS
  validates_presence_of :name
  
  #FIELDS
  field :name, :type => String
  field :owner, :type => String
  field :phone, :type => String
  field :city, :type => String
  field :website, :type => String
  field :location, :type => String
end
