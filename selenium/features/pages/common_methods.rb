class CommonMethods

   def generate_random_number
      return rand.to_s[2..8]
     end

  def get_random_name(length=5)
   source=("a".."z").to_a + ("A".."Z").to_a + (0..9).to_a + ["_","-","."]
   key=""
   length.times{ key += source[rand(source.size)].to_s }
   return key
 end
end