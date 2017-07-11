module Ocman
  class Item
    def self.create(file, path, options={})
      Ocman::Dav.new.put(file, URI.encode(path), options)
    end

    def self.get(path)
      Ocman::Dav.new.get(URI.encode(path))
    end

    def self.delete(path)
      Ocman::Dav.new.delete(URI.encode(path))
    end

    def self.move(source_path, destination_path)
      Ocman::Dav.new.move(URI.encode(source_path), URI.encode(destination_path))
    end
  end
end
