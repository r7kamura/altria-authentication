class User < ActiveRecord::Base
  devise(
    :database_authenticatable,
    :rememberable,
    :trackable,
    :validatable,
    # :confirmable,
    # :lockable,
    # :omniauthable,
    # :recoverable,
    # :registerable,
    # :timeoutable,
    # :token_authenticatable,
  )
end
