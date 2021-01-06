# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    # Generate the canvas view through the render method
    class CanvasViewComponent < ApplicationViewComponent
      # Constants
      WIDTH = 400
      HEIGHT = 400

      def initialize(args = {})
        @args = args
      end

      # Generate the html canvas
      def render
        tag.canvas(**html_options)
      end

      # Get the html id
      def id
        html_options[:id]
      end

      private

      def html_options
        @html_options ||= { id: "chart-#{Random.uuid}", width: WIDTH, height: HEIGHT }
          .merge(@args)
          .merge(class: join_classes("chart-bibz", @args[:class]))
      end
    end
  end
end
