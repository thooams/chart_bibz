# frozen_string_literal: true

require 'test_helper'

class ChartViewComponentTest < ActiveSupport::TestCase
  test 'create a blank chart' do
    chart_view_component = ChartBibz::ViewComponents::ChartViewComponent.new
    actual = chart_view_component.render
    expected = "<canvas id=\"#{chart_view_component.id}\" width=\"400\" height=\"400\" role=\"img\" data-cb-data=\"{}\" data-cb-type=\"bar\" data-cb-options=\"{}\" aria-label=\"Chart\" class=\"chart-bibz\"></canvas>"

    assert_equal expected, actual
  end

  test 'create a complete chart' do
    chart_view_component = ChartBibz::ViewComponents::ChartViewComponent.new data_example, options_example,
                                                                             { id: 'test' }
    actual = chart_view_component.render
    expected = "<canvas id=\"test\" width=\"400\" height=\"400\" role=\"img\" data-cb-data=\"{&quot;labels&quot;:[&quot;Red&quot;,&quot;Blue&quot;,&quot;Yellow&quot;,&quot;Green&quot;,&quot;Purple&quot;,&quot;Orange&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;# of Votes&quot;,&quot;data&quot;:[12,19,3,5,2,3]}]}\" data-cb-type=\"bar\" data-cb-options=\"{&quot;title&quot;:&quot;My chart&quot;,&quot;scales&quot;:{&quot;yAxes&quot;:[{&quot;ticks&quot;:{&quot;beginAtZero&quot;:true}}]}}\" aria-label=\"Chart of My chart\" class=\"chart-bibz\"></canvas>"

    assert_equal expected, actual
  end

  def data_example
    {
      labels: %w[Red Blue Yellow Green Purple Orange],
      datasets: [{
        label: '# of Votes',
        data: [12, 19, 3, 5, 2, 3]
      }]
    }
  end

  def options_example
    {
      title: "My chart",
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: true
          }
        }]
      }
    }
  end
end
