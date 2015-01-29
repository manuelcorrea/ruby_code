def rgb(r, g, b)
  "#{"%02X" % (r>255?255:(r<0?0:r)) }#{"%02X" % (g>255? 255:(g<0?0:g))}#{"%02X" % (b>255?255:(b<0?0:b)) }"
end


puts rgb(255, 255, 255) # returns FFFFFF
puts rgb(255, 255, 300) # returns FFFFFF
puts rgb(0,0,0) # returns 000000
puts rgb(148, 0, 211) # returns 9400D3