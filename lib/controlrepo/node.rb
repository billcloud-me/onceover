class Controlrepo
  class Node
    @@all = []


    attr_accessor :name
    attr_accessor :beaker_node
    attr_accessor :fact_set

    def initialize(name)
      @name = name
      @beaker_node = nil
      @fact_set = nil
      @@all << self
    end

    def self.find(node_name)
      @@all.each do |node|
        if node.name == node_name
          return node
        end
      end
      nil
    end
  end
end