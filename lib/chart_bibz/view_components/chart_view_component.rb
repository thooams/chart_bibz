# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    # Generate the chart view through the render method
    class ChartViewComponent < ApplicationViewComponent
      # Constants

      # Attr_accessors
      def initialize(data = [], options = {}, html_options = {})
        @canvas = CanvasViewComponent.new(options, html_options)
        @data = data
        @options = options
        @html_options = html_options
      end
    end
  end
end
