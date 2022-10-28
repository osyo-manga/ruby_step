begin
  raise TypeError, "original error"
rescue => e
  p e.message
  # => "original error"
  raise
end
