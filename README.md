![Chart Bibz logo](https://raw.githubusercontent.com/thooams/chart_bibz/main/chart-bibz-logo.gif)

# ChartBibz
Use Chartjs with ruby. Generate your chart in one ruby line.

[![Build Status](https://github.com/thooams/ui-bibz/workflows/CI/badge.svg)](https://github.com/thooams/ui-bibz/workflows/CI/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/7e8e319e9f7197593733/maintainability)](https://codeclimate.com/github/thooams/chart_bibz/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/7e8e319e9f7197593733/test_coverage)](https://codeclimate.com/github/thooams/chart_bibz/test_coverage)
[![security](https://hakiri.io/github/thooams/chart_bibz/main.svg)](https://hakiri.io/github/thooams/chart_bibz/main)

## Usage
How to use the plugin.
```ruby
data = {
  datasets: [{
    barPercentage: 0.5,
    barThickness: 6,
    maxBarThickness: 8,
    minBarLength: 2,
    data: [10, 20, 30, 40, 50, 60, 70]
  }]
}
chart data: data
# or
chart type: :bar, id: "my-chart", data: data, width: 100, height: 520
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'chart_bibz'
```

And then execute:
```bash
$ bundle
$ yarn add chart.js
```

Or install it yourself as:
```bash
$ gem install chart_bibz
```

Add this js in your javascript/packs/application.js
```js
...
require("chart-bibz").start()
...
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
