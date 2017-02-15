module DescriptiveStatistics
  def mean(collection = self, &block)
    values = Support::convert(collection, &block)
    return 0 if values.empty?

    values.sum / values.number
  end
end
