# frozen_string_literal: true

require_relative 'contact'

# This class represents a contact list.
# Each contact list has a collection of contacts.
class ContactList
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def add_contact(new_contact)
    @contacts << new_contact
  end

  def delete_contact(contact)
    @contacts.delete(contact)
  end

  def find_contact(name)
    @contacts.find { |contact| contact.name == name }
  end

  def all_contact_names
    @contacts.map(&:name)
  end

  def search(query)
    @contacts.select do |contact|
      contact.name.downcase.include?(query.downcase) || contact.phone.include?(query)
    end
  end
end

# Example usage:
# contact_list = ContactList.new
# contact = Contact.new('John Doe', 'johndoe@example.com', '123-456-7890')
# contact_list.add_contact(contact)
# puts contact_list.find_contact('John Doe')
# puts '--------------------------'
# puts contact_list.all_contact_names
# puts '--------------------------'
# puts contact_list.search('John')
# puts '++++++++++++++++++++++++++++'
# puts contact_list.search('123-456-7890')
