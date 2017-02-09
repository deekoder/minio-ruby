require 'minio_ruby'
require 'open-uri'
 

mc = MinioRuby::MinioClient.new(endPoint:"https://s3.amazonaws.com", accessKey:"AKIAITFCLT5MNJ3C6CNA" , secretKey:"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", region: "us-east-1" )
puts mc.getObject("deeruby","ip_table.png")

file = open("hello.txt").read
mc.putObject("deeruby", "tfile.txt", file, file.size, 'text/plain')

mc.getObject("deeruby","tfile.txt")

 
