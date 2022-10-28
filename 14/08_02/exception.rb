begin
  p a
rescue => e
  p e.full_message
  p "This is rescue block"
ensure
  p "This is ensure block"
end
