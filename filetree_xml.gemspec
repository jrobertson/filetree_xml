Gem::Specification.new do |s|
  s.name = 'filetree_xml'
  s.version = '0.1.3'
  s.summary = 'Represents a file tree using a Polyrex document'
  s.authors = ['James Robertson']
  s.files = Dir['lib/filetree_xml.rb']
  s.add_runtime_dependency('polyrex', '~> 1.1', '>=1.1.13')
  s.signing_key = '../privatekeys/filetree_xml.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/filetree_xml'
end
