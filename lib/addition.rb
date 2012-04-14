class Addition
  def self.method_missing(*args)
    name = args.first.to_s
    return super(*args) unless name =~ /^compute_sum_of_\d+(?:_and_\d+)+$/
    name.scan(/\d+/).map(&:to_i).inject(:+)
  end
end
