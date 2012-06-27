# XSD4R - Charset handling with iconv.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.

require 'iconv' unless String.method_defined?(:encode)


module XSD


class IconvCharset
  def self.safe_iconv(to, from, str)
    iconv = Iconv.new(to, from)
    out = ""
    begin
      if String.method_defined?(:encode)
        str.encode(to)
      else
        out << iconv.iconv(str)
      end
    rescue Iconv::IllegalSequence => e
      out << e.success
      ch, str = e.failed.split(//, 2)
      out << '?'
      warn("Failed to convert #{ch}")
      retry
    end
    return out
  end
end


end
