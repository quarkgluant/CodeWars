def count_bits(n)
  # TODO: Program me
  #n.bit_length.inject{|sum, i| sum + n[i]}
  somme = 0
  n.bit_length.times do |i|
    somme += n[i]
  end
  somme

end