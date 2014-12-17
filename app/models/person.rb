class Person < ActiveRecord::Base
    has_many :organizations, through: :employments
    has_many :employments

  def full_name
    "#{first_name} #{last_name}"
  end

end
