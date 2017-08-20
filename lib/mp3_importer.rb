require 'pry'
class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        @files || a=Dir.glob("#{path}/*.mp3")
        a.collect{ |f| f.gsub("#{path}/", "") }
    end

    def import
        files.each {|song| Song.new_by_filename(song)}
    end




end
