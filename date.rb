require 'date'

d = Date.today
next_week = d + 7

d.upto(next_week) {|date| puts %Q<#{date} is a #{date.strftime('%A')}>}