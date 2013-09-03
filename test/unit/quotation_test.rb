require 'test_helper'

class QuotationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Quotation.new.valid?
  end
end
