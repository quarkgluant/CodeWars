=begin
You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

Example:

longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

n being the length of the string array, if n = 0 or k > n or k <= 0 return "".
=end
def longest_consec(strarr, k)
    return "" if strarr.length == 0 or k > strarr.length or k <= 0
    hash_len_str = {}
    hash_str_len = {}
    strarr.each{|chaine| hash_len_str[chaine.length] = chaine}
    strarr.each{|chaine| hash_str_len[chaine] = chaine.length}
    puts hash_len_str
    puts hash_str_len  
    res = ""
    n = 0
    hash_len_str.keys.sort{|x,y| y <=> x}.each do |leng|
      res << hash_len_str[leng]
      n += 1
      return res if n == k
    end
 end