#require "namr/version"

module NAMR
  class Generator
    def self.object_all
      File.open(File.dirname(__FILE__) + "/levels/object.txt").read.split("\n")
    end

    def self.pick_object
      os = self.object_all
      os[rand(os.length-1)]
    end

    def self.adjective_all
      File.open(File.dirname(__FILE__) + "/levels/adjective.txt").read.split("\n")
    end

    def self.pick_adjective
      as = self.adjective_all
      as[rand(as.length-1)]
    end

    def self.identifier
      [self.pick_adjective, self.pick_object].join(" ")
    end

    def self.safe_identifier
      self.identifier.downcase.gsub(/[^0-9a-z ]/i, '').gsub(/ +/, ' ')
    end

    def self.capitalized_identifier
      self.safe_identifier.split(" ").map(&:capitalize).join('')
    end
    
    def self.separated_identifier
      self.safe_identifier.gsub(' ','-')
    end
  end
end
