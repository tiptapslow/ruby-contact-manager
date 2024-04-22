# frozen_string_literal: true

require_relative 'test_helper'
require 'minitest/autorun'
require_relative '../lib/contact_list'
require_relative '../lib/contact'

# This class represents a contact list.
# Each contact list has a collection of contacts.
class ContactListTest < Minitest::Test
  def setup
    @contact_list = ContactList.new
    @contact = Contact.new('John Doe', 'john@example.com', '123-456-7890')
  end

  def test_add_contact
    @contact_list.add_contact(@contact)
    assert_equal [@contact], @contact_list.contacts
  end

  def test_delete_contact
    @contact_list.add_contact(@contact)
    @contact_list.delete_contact(@contact)
    assert_empty @contact_list.contacts
  end

  def test_find_contact
    @contact_list.add_contact(@contact)
    assert_equal @contact, @contact_list.find_contact('John Doe')
  end

  def test_all_contact_names
    @contact_list.add_contact(@contact)
    assert_equal ['John Doe'], @contact_list.all_contact_names
  end

  def test_search_by_name
    @contact_list.add_contact(@contact)
    assert_equal [@contact], @contact_list.search('John')
  end

  def test_search_by_phone
    @contact_list.add_contact(@contact)
    assert_equal [@contact], @contact_list.search('123-456-7890')
  end
end
# q : how can i test this file?
# a : run the test file using the command `ruby lib/contact_list_test.rb` in the terminal.
