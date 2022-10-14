# File: lib/diary.rb
class Diary
    def initialize
      @entries = []
      @text = []
    end
  
    def add(entry) 
      @entries.push(entry.title)
      @text.push(entry.contents)
    end 
  
    def all
      @entries.each { |x| x }.join(", ")
    end
  
    def count_words
      @text.map { |text| text.split.count }.inject(&:+)
    end
  
    def reading_time(wpm)
      @text.join(" ").split.length / wpm
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
      wpt = @text.map { |e| e.split.count }
      diff = wpt.map { |x| (wpm * minutes) - x }
      valid_diff = diff.map { |y| y > -1 ? y : 100 }
      @entries[wpt.find_index(wpt[valid_diff.index(valid_diff.min)])]
      # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
    end
  end

  class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @counter = 0
    end
    def title
      # Returns the title as a string
      @title.to_s
    end
    def contents
      # Returns the contents as a string
      @contents.to_s
    end
    def count_words
      @contents.split.count
    end
    def reading_time(wpm) # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
      "#{@contents.split.count/(wpm/60)} seconds"
    end
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
      text_chunk = @contents.split.slice(@counter, (wpm * minutes))
      @counter += (wpm * minutes)
      return text_chunk.join(” “)
    end
  end