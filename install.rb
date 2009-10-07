# Install hook code here
puts "Copying files..."
{
  "validanguage.js" => "/public/javascripts/validanguage.js",
  "validanguage_uncompressed.js" => "/public/javascripts/validanguage_uncompressed.js",
  "ajax-loader.gif" => "/public/javascripts/ajax-loader.gif",
  "red_error.gif" => "/public/javascripts/red_error.gif",
  "validanguage.css" => "/public/javascripts/validanguage.css"
}.each do |src, dest|
  src = File.dirname(__FILE__) + src
  dest = RAILS_ROOT + dest
  puts "#{src} => #{dest}"
	FileUtils.cp_r(src, dest)
end

puts "Files copied - Installation complete!"
