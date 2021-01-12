# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    # Generate the canvas view through the render method
    class CanvasViewComponent < ApplicationViewComponent
      # Constants
      WIDTH = 400
      HEIGHT = 400

      # Only html_options can be passed
      #
      # @param [Hash] args The html options
      # @return [void]
      def initialize(args = {})
        @args = args
      end

      # Generate the html canvas
      #
      # @return [String] The html canvas
      def render
        tag.canvas(**html_options)
      end

      # @return [String] The canvas html id
      def id
        html_options[:id]
      end

      private

      # @return [String] The canvas html attributes
      def html_options
        @html_options ||= base_html_options.merge(@args).merge(class: join_classes('chart-bibz', @args[:class]))
      end

      def base_html_options
        { id: "chart-#{Random.uuid}", width: WIDTH, height: HEIGHT, role: 'img' }
      end
    end
  end
end
