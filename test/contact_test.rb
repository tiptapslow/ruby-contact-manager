# frozen_string_literal: true

require_relative 'test_helper'
require 'minitest/autorun'
require_relative '../lib/contact'

class ContactTest < Minitest::Test
  def setup
    @contact = Contact.new('John Doe', 'johndoe@example.com', '123-456-7890')
  end

  def test_name
    assert_equal 'John Doe', @contact.name
  end

  def test_email
    assert_equal 'johndoe@example.com', @contact.email
  end

  def test_phone
    assert_equal '123-456-7890', @contact.phone
  end

  def test_to_s
    expected = "Name: John Doe\nEmail: johndoe@example.com\nPhone: 123-456-7890"
    assert_equal expected, @contact.to_s
  end
end
