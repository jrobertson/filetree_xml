Gem::Specification.new do |s|
  s.name = 'filetree_xml'
  s.version = '0.1.0'
  s.summary = 'Represents a file tree in a Polyrex document'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_runtime_dependency('polyrex', '~> 0.9', '>=0.9.12')
  s.signing_key = '../privatekeys/filetree_xml.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/filetree_xml'
end