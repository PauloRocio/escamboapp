class Admin < ApplicationRecord
  enum role: {:full_access => 0, :restricted_access => 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :whith_full_access, -> { where( {role: 0 }) }
  scope :whith_restricted_access, -> { where( {role: 1 }) }
end
