# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    # Generate the canvas view through the render method
    class CanvasViewComponent < ApplicationViewComponent
      # Constants

      WIDTH = 400 # Default width for the html canvas
      HEIGHT = 400 # Default height for the html canvas

      # Only html_options can be passed
      #
      # @example
      #   ChartBibz::ViewComponents::CanvasViewComponent.new(class: 'test')
      #
      # @param [Hash] args The html options
      # @return [void]
      #
      # @api public
      def initialize(args = {})
        @args = args
      end

      # Generate the html canvas
      #
      # @example
      #   ChartBibz::ViewComponents::CanvasViewComponent.new(class:
      #   'test').render
      #
      # @return [String] The html canvas
      #
      # @api public
      def render
        tag.canvas(**html_options)
      end

      # Get the id
      #
      # @example
      #   ChartBibz::ViewComponents::CanvasViewComponent.new(class: 'test').id
      #
      # @return [String] The canvas html id
      #
      # @api public
      def id
        html_options[:id]
      end

      private

      # Get all html options
      #
      # @return [String] The canvas html attributes
      #
      # @api private
      def html_options
        @html_options ||= base_html_options.merge(@args).merge(class: join_classes('chart-bibz', @args[:class]))
      end

      # Get the html options base
      #
      # @return [String] The canvas html attributes
      #
      # @api private
      def base_html_options
        { id: "chart-#{Random.uuid}", width: WIDTH, height: HEIGHT, role: 'img' }
      end
    end
  end
end
