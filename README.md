Introducing the Filetree_xml gem

    require 'filetree_xml'

    s =<<EOF

    <?polyrex schema='files[title,tags]/file[title]'?>

    title: Depot File Index
    tags: files index

    views
      products
        _form.html.erb
        new.html.erb

    EOF


    ftx = FileTreeXML.new s
    ftx.ls  #=> ["views"] 
    ftx.ls 'views/products' #=> ["_form.html.erb", "new.html.erb"]

The above example creates a representation of a file tree using plain text. It can then be used to list *files* in the selected directory.

## Resources 

* [filetree_xml](https://rubygems.org/gems/filetree_xml)

filetreexml gem filetree
