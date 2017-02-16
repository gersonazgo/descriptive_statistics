module DescriptiveStatistics
  def standard_deviation(collection = self, &block)
    values = Support::convert(collection, &block)
    return 0 if values.empty?

    Math.sqrt(values.variance)
  end
end
