require 'ostruct'

class Lyrics

  def self.all
    [
      {id: 1, time: 1, keyword: "fox", line: "I met a fox"},
      {id: 2, time: 2, keyword: "road", line: "On a road that I crossed"},
      {id: 3, time: 3, keyword: "seen", line: "In a park that I'd seen"},
      {id: 4, time: 4, keyword: "dream", line: "In a pitch black dream"},

      {id: 5, time: 5, keyword: "she", line: "She asked my name"},
      {id: 6, time: 6, keyword: "same", line: "Cause we seemed the same"},
      {id: 7, time: 7, keyword: "sea", line: "We both liked the sea"},
      {id: 8, time: 8, keyword: "old", line: "And old movies"},

      {id: 9, time: 9, keyword: "along", line: "So we got along"},
      {id: 10, time: 10, keyword: "hummed", line: "Though we hummed different songs"},
      {id: 11, time: 11, keyword: "arm", line: "She wrote on my arm"},
      {id: 12, time: 12, keyword: "Little", line: "Little messages"},

      {id: 13, time: 13, keyword: "hello", line: "Like hello goodbye"},
      {id: 14, time: 14, keyword: "sky", line: "And see that blue sky"},
      {id: 15, time: 15, keyword: "amazed", line: "And I was amazed"},
      {id: 16, time: 16, keyword: "dexterity", line: "At her dexterity"},

      {id: 17, time: 17, keyword: "fox"},
      {id: 18, time: 19, keyword: "fox"},

      {id: 19, time: 21.25, keyword: "rude", line: "And she could be rude"},
      {id: 20, time: 22.25, keyword: "silly", line: "And silly and crude"},
      {id: 21, time: 23.25, keyword: "sticks", line: "She put sticks in the spokes"},
      {id: 22, time: 24.25, keyword: "bicycle", line: "Of my bicycle"},

      {id: 23, time: 25.25, keyword: "ground", line: "And when I hit the ground"},
      {id: 24, time: 26.25, keyword: "sound", line: "With a deafening sound"},
      {id: 25, time: 27.25, keyword: "rolled", line: "She rolled around"},
      {id: 26, time: 28.25, keyword: "Laughing", line: "Laughing uncontrollably"},

      {id: 27, time: 29.25, keyword: "night", line: "And when night would fall"},
      {id: 28, time: 30.25, keyword: "talk", line: "We'd have cookouts and talk"},
      {id: 29, time: 31.25, keyword: "everyone", line: "About if everyone hears"},
      {id: 30, time: 32.25, keyword: "see", line: "And can see the sounds"},

      {id: 31, time: 33.25, keyword: "space", line: "Of time and of space"},
      {id: 32, time: 34.25, keyword: "gravity", line: "Oh gravity oh haste"},
      {id: 33, time: 35.25, keyword: "world", line: "And the world spinning round"},
      {id: 34, time: 36.25, keyword: "spins", line: "The world spins round"},

      {id: 35, time: 37, keyword: "fox"},
      {id: 36, time: 39, keyword: "fox"},

      {id: 37, time: 41, keyword: "fox"},
      {id: 38, time: 43, keyword: "fox"},
      {id: 39, time: 45, keyword: "fox"},
      {id: 40, time: 47, keyword: "fox"}
    ].map {|l| OpenStruct.new(l)}
  end

end