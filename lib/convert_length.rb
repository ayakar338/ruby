UNTIS = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from: :m, to: :m)
  (length / UNTIS[from] * UNTIS[to]).round(2)
end