=begin
Description:

Write a function that takes an (unsigned) integer as input, and returns the number of bits that are equal to one in the binary representation of that number.

Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case
ALGORITHMS BITS BINARY
=end
def count_bits(n)
  # TODO: Program me
  #n.bit_length.inject{|sum, i| sum + n[i]}
  somme = 0
  n.bit_length.times do |i|
    somme += n[i]
  end
  somme

end