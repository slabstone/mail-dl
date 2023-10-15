# frozen_string_literal: true

def sanitize_filename(filename)
  if filename.nil? || filename.empty?
    '(no filename)'
  else
    filename.gsub(%r{[<>:"/\\|?*]}, '_').strip
  end
end
