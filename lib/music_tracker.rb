class MusicTracker
  def initialize
    @playlist = []
  end
  
  def music_printer
    @playlist.each { |song| puts song }.join(", ")
  end

  def music_adder(text)
    @playlist.push(text)
  end  
end    
