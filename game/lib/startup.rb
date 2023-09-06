class Startup
  def self.initializing
    system 'clear'
    print "Inicializando."
    4.times do |i|
      sleep 1
      print "."
    end
    puts "."
  end
end