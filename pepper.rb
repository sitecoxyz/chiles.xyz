#! /usr/bin/env ruby

name = ARGV[0]
heat = ARGV[1]
filename = name.downcase.gsub(' ','-')

s = %Q{---
layout: pepper
cover: 'assets/images/#{filename}.jpg'
title: #{name}
avg_heat: '#{heat}'
tags: spicy
subclass: 'post tag-peppers'
navigation: True
img_link: ''
img_attr: ''
img_lic: 'https://creativecommons.org/licenses/by/2.0/legalcode'
---
}

File.open("_peppers/#{filename}.md", 'w') {|f|f.write s}