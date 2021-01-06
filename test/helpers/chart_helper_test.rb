# frozen_string_literal: true

require 'test_helper'

class ChartHelperTest < ActiveSupport::TestCase
  include ChartBibz::Helpers::ChartHelper

  test 'create a blank chart' do
    actual = chart({}, {}, {id: 'test'})
    expected = "<canvas id=\"test\" width=\"400\" height=\"400\" data-cb-data=\"{}\" data-cb-type=\"bar\" data-cb-options=\"{}\" class=\"chart-bibz\"></canvas>"

    assert_equal expected, actual
  end
end
