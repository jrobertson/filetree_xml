#!/usr/bin/env ruby


# file: filetree_xml.rb


require 'polyrex'

class FileTreeXML


  def initialize(x)

    case x.strip
    when /^<\?polyrex/
      @px = Polyrex.new
      @px.import x
    else
      @px = Polyrex.new x

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
