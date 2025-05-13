require "debug"
require "digest"

prefix = "bgvyzdsv"

0.upto(999_999) do |n|
  str = "%06d" % n
  str = "#{prefix}#{str}"
  md5 = Digest::MD5.hexdigest(str)

  if md5[0..4] == "00000"
    puts n
    break
  end
end

0.upto(9_999_999) do |n|
  str = "%06d" % n
  str = "#{prefix}#{str}"
  md5 = Digest::MD5.hexdigest(str)

  if md5[0..5] == "000000"
    puts n
    break
  end
end
__END__

