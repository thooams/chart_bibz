# ChartBibz
Use Chartjs with ruby. Generate your chart in one ruby line.

## Usage
How to use my plugin.
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
chart type: :bar, id: "my-chart", data: data
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'chart_bibz'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install chart_bibz
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
