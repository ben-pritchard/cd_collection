class CD

  attr_reader(:album, :artist, :id)

  @@collection = []

  define_method(:initialize) do |attributes|
    @album = attributes[:album]
    @artist = attributes[:artist]
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

  define_singleton_method(:search) do |search|
    results = []
    @@collection.each() do |cd|

      if cd.artist() == search
        results.push(cd)

      elsif cd.album() == search
        results.push(cd)
      end

    end
    results
  end


end
