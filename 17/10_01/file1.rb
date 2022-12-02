file_path = "sample.txt"

open(file_path, "w") { |f|
  f.print "hello, world!"
}

open(file_path, 'r') { |f|
  p f.read
}

open(file_path, "a") { |f|
  f.print "hello, world!!"
}

open(file_path, 'r') { |f|
  p f.read
}

pp open(file_path).readlines
# => ["hello, world!\n", "hello, world!!\n"]
