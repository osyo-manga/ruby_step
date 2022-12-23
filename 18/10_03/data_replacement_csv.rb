require "csv"

class DataReplacemento
  attr_writer :inputfile, :outputfile

  def replace
    output = CSV.read(@inputfile).map do |content|
      name, sex_code, tel = content
      last_name, first_name = name.split
      [last_name, first_name, sex(sex_code), separated_tel(tel)]
    end

    CSV.open(@outputfile, "w") do |file|
      output.each do |line|
        file << line
      end
    end
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

# replacement.inputfile = ARGV[0]
# replacement.outputfile = ARGV[1]
replacement.inputfile = "./inputdata.csv"
replacement.outputfile = "./outputdata.csv"

replacement.replace
