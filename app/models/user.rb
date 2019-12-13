class User < ApplicationRecord
    has_secure_password
    has_many :properties
    has_many :books
    attribute :is_host, default: 0
end
