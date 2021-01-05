# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    class CanvasViewComponent < ApplicationViewComponent

      # Constants
      WIDTH = 400
      HEIGHT = 400

      def initialize(args = {})
        @args = args
      end

      def render
        tag.canvas(**html_options)
      end

      def id
        html_options[:id]
      end

      private

      def html_options
        @html_options ||= { id: "chart-#{Random.uuid}", width: WIDTH, height: HEIGHT }.merge(@args)
      end
    end
  end
end