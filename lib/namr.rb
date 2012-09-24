require "namr/version"

module NAMR
   class Generator
     def self.level_one
       File.open("./levels/level1.txt")
     end
   end
end
