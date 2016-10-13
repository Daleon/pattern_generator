class PatternGenerator

  def initialize(input)
    @formatted_input = input.upcase
    @encoded_output_pattern = []
  end

  def num_gen
    (1..9).to_a.sample
  end

  def char_gen
    ("A".."Z").to_a.sample
  end

  def pattern_gen
    output_size = 0
    until @encoded_output_pattern.join("").size == @formatted_input.size
      if @formatted_input[output_size] == "X"
        @encoded_output_pattern << char_gen
      else
        @encoded_output_pattern << num_gen
      end
      output_size += 1
    end
    @encoded_output_pattern.join("")
  end
end
  pattern_generator = PatternGenerator.new("xnxnxnxn")
  encoded_pattern = pattern_generator.pattern_gen
  puts "----------------------------------------------------------------------"
  puts "The first pattern is: #{encoded_pattern}"
  puts "The second length is #{encoded_pattern.size} characters long"
  puts ""

  pattern_generator_2 = PatternGenerator.new("xxxxnnxxnxnxnxnxn")
  encoded_pattern_2 = pattern_generator_2.pattern_gen
  puts "The second pattern is: #{encoded_pattern_2}"
  puts "The second length is #{encoded_pattern_2.size} characters long"
  puts "----------------------------------------------------------------------"
  puts "Still working on eliminating the x's and zeros..."
  puts "----------------------------------------------------------------------"
