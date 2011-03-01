class String
  require 'iconv' 
  def to_iso
    Iconv.conv('ISO-8859-1', 'utf-8', self)
  end
end

