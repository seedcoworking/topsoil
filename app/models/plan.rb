class Plan < ActiveRecord::Base
  has_many :days

  def schedule
    days
  end

  def as_json(options={})
    options[:include] ||= [ :schedule ]
    super options
  end
end
