require 'erb'

class Skill
  attr_reader :name, :strength

  def initialize( name, strength )
    @name = name
    @strength = strength
  end
end

@stuff = [
  Skill.new( "Ruby", 10 ),
  Skill.new( "Rails", 10 ),
  Skill.new( "HTML5", 10 ),
  Skill.new( "CSS3", 10 ),
  Skill.new( "JavaScript", 10 ),
  Skill.new( "jQuery", 8 ),
  Skill.new( "AngularJS", 8 )
]

while true
  input = ERB.new File.new("index.html.erb").read

  output = input.result( binding )

  File.open("index.html", 'w') do |f|
    f.write( output )
  end

  sleep 1
end
