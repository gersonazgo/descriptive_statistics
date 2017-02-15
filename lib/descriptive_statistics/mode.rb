module DescriptiveStatistics
  def mode(collection = self, &block)
    values = Support::extract(collection, &block)
    return if values.to_a.empty?

    mode_count = values
      .group_by { |e| e }
      .values
      .max_by(&:size)
      .count

    return if mode_count == 1

    modes = 0 

    values.group_by { |e| e }.values.each do |elements|
        if elements.count == mode_count
            modes += 1
        end 
    end

    return if modes >=2

    return values.group_by { |e| e }.values.max_by(&:size).first

  end
end
