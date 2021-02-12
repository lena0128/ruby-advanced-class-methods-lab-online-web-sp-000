class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end


  def self.create
    song = self.new
    @@all << song
    song
  end

def self.new_by_name(name)
  song = self.new
  song.name = name
  song
end

def self.create_by_name(name)
  song = self.new
  song.name = name
  @@all << song
  song
end

def self.find_by_name(name)
  song = @@all.find {|song| song.name == name }
  song
end

def self.find_or_create_by_name(title)
  find_song = self.find_by_name(title)
  if find_song
    return find_song
  else
    song = self.create_by_name(title)
    song
  end
end

def self.alphabetical(name)
result = self.all.sort_by { |name| song.name }
result
end

  def save
    self.class.all << self
  end

  def self.destroy_all
      self.all.clear
    end

end
