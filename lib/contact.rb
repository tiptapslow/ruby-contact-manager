# frozen_string_literal: true

# This class represents a contact in a contact list.
# Each contact has a name, email, and phone number.
# Usage:
# contact = Contact.new('John Doe', 'johndoe@example.com', '123-456-7890')
class Contact
  attr_accessor :name, :email, :phone

  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone
  end

  def to_s
    "Name: #{@name}\nEmail: #{@email}\nPhone: #{@phone}"
  end
end

# # Example usage:
# contact = Contact.new('John Doe', 'johndoe@example.com', '123-456-7890')
# puts contact
