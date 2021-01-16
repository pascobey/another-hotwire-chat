class User < ApplicationRecord
  has_and_belongs_to_many :rooms
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable, :timeoutable,
         :lockable
end
