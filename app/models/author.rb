class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: true
    validates_format_of :phone_number, :with =>  /\A[0-9]{10}\Z/
end
