class Tag < ApplicationRecord
  has_many :gossip_tags
  has_many :gossips, through: :gossip_tags

  validates :recipient_id,
	    presence: true,
	    
end
