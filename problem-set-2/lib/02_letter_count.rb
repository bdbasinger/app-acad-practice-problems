# bundle exec rspec spec/02_letter_count_spec.rb

# Correct
def letter_count(str)
  count = Hash.new(0)
  str = str.split('')
  str.each do |x|
    if x != " "
      count[x] += 1
    end
  end
  count
end
