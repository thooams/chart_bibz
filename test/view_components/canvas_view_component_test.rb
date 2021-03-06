# frozen_string_literal: true

require 'test_helper'

class CanvasViewComponentTest < ActiveSupport::TestCase
  test 'create a blank canvas' do
    canvas_view_component = ChartBibz::ViewComponents::CanvasViewComponent.new
    actual = canvas_view_component.render
    expected = "<canvas id=\"#{canvas_view_component.id}\" width=\"400\" height=\"400\" role=\"img\" class=\"chart-bibz\"></canvas>"

    assert_equal expected, actual
  end

  test 'create a canvas with html_options' do
    canvas_view_component = ChartBibz::ViewComponents::CanvasViewComponent.new(id: 'test', width: 100, height: 200,
                                                                               class: 'test')
    actual = canvas_view_component.render
    expected = '<canvas id="test" width="100" height="200" role="img" class="chart-bibz test"></canvas>'

    assert_equal expected, actual
  end
end
