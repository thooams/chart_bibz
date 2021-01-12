# frozen_string_literal: true

module ChartBibz
  module Helpers
    # Helper for chart bibz
    module ChartHelper
      # Generate the html of the canvas
      #
      # @see ChartBibz::ViewComponents::ChartViewComponent#initialize
      # @return [String] HTML
      def chart(data = {}, options = {}, html_options = {})
        ChartBibz::ViewComponents::ChartViewComponent.new(data, options, html_options).render
      end
    end
  end
end
