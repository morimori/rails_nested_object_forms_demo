class Magic < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :jobs, :through => :job_magics
  has_many :job_magics, :dependent => :destroy
end
