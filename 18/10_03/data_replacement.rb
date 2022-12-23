class DataReplacemento
  attr_writer :inputfile, :outputfile

  def replace
    output = File.read(@inputfile).split("\n").map do |content|
      name, sex_code, tel = content.split(",")
      last_name, first_name = name.split
      [last_name, first_name, sex(sex_code), separated_tel(tel)].join(",")
    end.join("\n")
    File.write(@outputfile, output)
  end

  private

  def sex(code)
    code.to_i == 1 ? "男性" : "女性"
  end

  def separated_tel(number)
  number.match(/(\d{3})(\d{4})(\d{4})/)
  "#{$1}-#{$2}-#{$3}"
  end
end

replacement = DataReplacemento.new

replacement.inputfile = ARGV[0]
replacement.outputfile = ARGV[1]

replacement.replace
