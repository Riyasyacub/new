class User < ApplicationRecord
    validates_length_of :password, in: (5..10)
end
