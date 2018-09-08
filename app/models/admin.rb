class Admin < ApplicationRecord
  enum role: [:full_acccess, :restricted_access]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role_br
    if self.role == 'full_acccess'
      'Acesso completo'
    else
      'Acesso restrito'
    end
  end
end
