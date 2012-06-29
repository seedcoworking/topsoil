require 'date'

class DateTime
  def to_stime()
    self.strftime "%I:%M:%S"
  end
end
