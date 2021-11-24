require 'stringio'
require_relative 'decommenter'

input = <<EOM
# This is a comment.
This isn't a comment.
#    This is.
    # So is this...
This is also not a comment.
EOM

fin = StringIO.new(input)
fout = StringIO.new("")

DeCommenter.decomment(fin, fout)

puts "Test succeeded" if fout.string == <<EOM
This isn't a comment.
This is also not a comment.
EOM