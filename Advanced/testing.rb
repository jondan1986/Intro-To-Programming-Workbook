def get_UUID
  rand = Random.new()
  s = ""
  32.times {s += ((rand.rand) * (10**10) % 16).floor.to_s(16) }
  [8,13,18,23].each { |value| s.insert(value, "-") }
  s
end

p get_UUID
