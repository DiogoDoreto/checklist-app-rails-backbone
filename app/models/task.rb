class Task < ActiveRecord::Base
  attr_accessible :description, :done

  validates :description, :presence => true

  after_initialize :default_values

  private
    def default_values
      self.done = false if self.done.nil?
    end
end
