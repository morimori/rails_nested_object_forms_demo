class Job < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true

  has_many :magics, :through => :job_magics
  has_many :job_magics, :dependent => :destroy

  accepts_nested_attributes_for :job_magics, :allow_destroy => true,
    :reject_if => lambda{ |attrs| attrs[:magic_id].blank? }
end
