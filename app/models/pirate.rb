class Pirate
  attr_reader :name, :weight, :height

  @@pirates = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end

  def self.clear
    @@pirates = []
  end
end

# "pirate"=>
    #   {"name"=>"Matt",
    #    "weight"=>"150",
    #    "height"=>"5'9\"",
    #    "ships"=>