# frozen_string_literal: true

require 'chart_bibz/railtie'

module ChartBibz
  extend ActiveSupport::Autoload

  autoload :ViewComponents
  autoload :Helpers
end

require 'chart_bibz/rails/engine'
