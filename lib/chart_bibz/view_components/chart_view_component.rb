# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    # Generate the chart view through the render method
    class ChartViewComponent < ApplicationViewComponent
      # @see CanvasViewComponent#id
      delegate :id, to: :canvas

      # @param data [Hash] the chartjs data
      # @param options [Hash] the chartjs options
      # @option options [Symbol] :type The chart type [:bar, :line, ...]
      #
      # @param html_options [Hash] the html_options of the canvas
      # @option html_options [String] :id The id of the canvas
      # @option html_options [String] :class The class of the canvas
      #
      # @return [void]
      def initialize(data = {}, options = {}, html_options = {})
        @data = data
        @options = options
        @html_options = html_options
      end

      # @return [String] The canvas html
      delegate :render, to: :canvas

      # @see CanvasViewComponent
      # @return [Object] The canvas object
      def canvas
        @canvas ||= CanvasViewComponent.new(new_html_options)
      end

      private

      # @return [Hash] The new html options with the data attributes
      def new_html_options
        @html_options['data-cb-data'] = @data.to_json
        @html_options['data-cb-type'] = @options.delete(:type) || :bar
        @html_options['data-cb-options'] = @options.to_json
        @html_options['aria-label'] = aria_label
        @html_options
      end

      def aria_label
        @options[:title].nil? ? 'Chart' : "Chart of #{@options[:title]}"
      end
    end
  end
end
