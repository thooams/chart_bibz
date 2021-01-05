# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    class ApplicationViewComponent
      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::CaptureHelper
      include ActionView::Helpers::TextHelper
      include ActionView::Helpers::TranslationHelper
      attr_accessor :output_buffer
    end
  end
end
