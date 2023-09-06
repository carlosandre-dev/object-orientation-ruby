class RaffleNUmber
  def self.raffle
    vector = []
    File.open(File.expand_path('../../numbers.txt', __FILE__),'r') do |arq|
      while line = arq.gets
        vector.push(line.to_i)
      end
    end
    vector.sample
  end
end