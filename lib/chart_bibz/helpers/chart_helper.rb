# frozen_string_literal: true

# The Main module
module ChartBibz
  # Add the Helpers module to Chart Bibz
  module Helpers
    # Helper for chart bibz
    module ChartHelper
      # Generate the html of the canvas
      #
      # @example Generate the canvas
      #   chart {datasets: {data: [1,2,3]}}, {type: :bar}, {class: "My-chart"}
      #
      # @see ChartBibz::ViewComponents::ChartViewComponent#initialize
      #
      # @param [Hash] data
      # @param [Hash] options
      # @param [Hash] html_options
      # @return [String] HTML
      #
      # @api public
      def chart(data = {}, options = {}, html_options = {})
        ChartBibz::ViewComponents::ChartViewComponent.new(data, options, html_options).render
      end
    end
  end
end
