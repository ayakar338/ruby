# to_hexメソッドは受け取った3つの整数を16進数に変える
def to_hex(r, g, b)
  "#" +
    r.to_s(16).rjust(2, "0") +
    g.to_s(16).rjust(2, "0") +
    b.to_s(16).rjust(2, "0")
end

# リファクタリング（修正が簡単になるようにコードをまとめたりすること）
def to_hex(r, g, b)
  hex = "#"
  [r, g, b].each do |n|
    hex += n.to_s(16).rjust(2, "0")
  end
  hex
end

# injectでさらにまとめる（処理が最後まで終わるとinjectメソッド自身が戻り値になる）
def to_hex(r, g, b)
  [r, g, b].inject("#") do |hex, n|
    hex + n.to_s(16).rjust(2, "0")
  end
end

# to_intsは16進数を10進数（3つの整数）に変える

def to_ints(hex)
  [0, 0, 0]
end