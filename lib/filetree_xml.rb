#!/usr/bin/env ruby


# file: filetree_xml.rb


require 'polyrex'

class FileTreeXML


  def initialize(x, debug: false)

    @debug = debug
    
    case x.strip
    when /^<\?polyrex/
      @px = Polyrex.new
      @px.import x
    when /</
      @px = Polyrex.new x
    else
      puts 'importing  schemaless raw document' if debug
      @px = Polyrex.new schema: 'files[title,tags]/file[title]'
      @px.import x
    end

  end

  def ls(path='.')

    a = path.split('/')

    xpath = if a.length > 1 then
      a.map {|x| "records/file[summary/title='%s']" % x }.join('/')
    else
      path 
    end

    @px.xpath xpath + '/records/file/summary/title/text()'
  end

end
