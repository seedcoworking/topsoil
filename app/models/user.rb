class User < ActiveRecord::Base
  belongs_to :card
  belongs_to :plan

  validates_uniqueness_of :email, :case_sensitive => false
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

 def as_json(options={})
    options[:include] ||= [ :card, :plan ]
    options[:except] ||= [ :card_id, :plan_id ]
    super options
  end
end
