# Rails plugin install hook code here
puts "Copying files..."
{
  "validanguage.js"              => %w(public javascripts validanguage.js),
  "validanguage_uncompressed.js" => %w(public javascripts validanguage_uncompressed.js),
  "ajax-loader.gif"              => %w(public images ajax-loader.gif),
  "red_error.gif"                => %w(public images red_error.gif),
  "validanguage.css"             => %w(public stylesheets validanguage.css)
}.each do |src, dest|
  src  = File.join(File.dirname(__FILE__), src)
  dest = File.join(RAILS_ROOT, dest)
  puts "#{src} => #{dest}"
	FileUtils.cp_r(src, dest)
end

puts "Files copied - Installation complete!"
