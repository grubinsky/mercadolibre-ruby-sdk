#!/usr/bin/ruby

require 'rubygems'
require '../lib/meli'

meli = Meli.new(CLIENT_ID, CLIENT_SECRET, ACCESS_TOKEN, REFRESH_TOKEN)

file_path = "my_file.txt"
response = meli.post_file("/messages/attachments", file_path, {:access_token => meli.access_token})

#Json format
puts response.body

#ruby hash format
res = JSON.parse response.body
puts res.inspect
