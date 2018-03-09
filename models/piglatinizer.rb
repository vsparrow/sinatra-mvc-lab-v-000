class PigLatinizer


  def initalize(word=nil)
    @word = word
  end

  def piglatinize(word)
    word_a = word.split("")
    begining_letters = []
    vowel_found=false
    #####################################################################start with vowel
    test_c = word_a[0].downcase
    if test_c == 'a' || test_c == 'e' || test_c == 'i' || test_c == 'o' || test_c == 'u' && word_a.size == word.size#begins with vowe
      vowel_found = true
      word_a.push("w",'a','y')
      #now will not hit while because first letter vowel
    end
    ######################################################################not start with vowel
    while(!vowel_found)
      test_c = word_a[0].downcase
      if test_c == 'a' || test_c == 'e' || test_c == 'i' || test_c == 'o' || test_c == 'u' && word_a.size < word.size
        vowel_found = true
        # STDERR.puts "#{begining_letters}"
        begining_letters.each {|c| word_a.push(c)} #if begining_letters.size > 0
        word_a.push('a','y')
      else
        letter = word_a.shift
        begining_letters.push(letter)
      end #if
    end #while
    word_a.join("")
  end #piglatinize

  def to_pig_latin(centance)
    #split on space
    centance_array = centance.split(" ")
    #class piglatinize
    # centance_array_pigged = []
    centance_array.map {|s| self.piglatinize(s)}.join(" ")
    #join and return
  end
end #class
