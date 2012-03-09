class Bar
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  
  #relations
  belongs_to :user
  field :name, :type => String
  field :owner, :type => String
  field :phone, :type => String
  field :city, :type => String
  field :website, :type => String
  field :location, :type => String
end
