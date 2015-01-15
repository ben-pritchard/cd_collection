class CD

  attr_reader(:album, :artist, :id)

  @@collection = []

  define_method(:initialize) do |attributes|
    @album = attributes.fetch(:album)
    @artist = attributes.fetch(:artist)
    @id = (@@collection.length() + 1)
    add()
  end

  define_singleton_method(:all) do
    @@collection
  end

  define_method(:add) do
    @@collection.push(self)
  end

  define_singleton_method(:clear) do
    @@collection = []
  end
end
