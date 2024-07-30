class User < ApplicationRecord
    has_one :email


    def name_and_role
        name + " - " + role
    end
end
