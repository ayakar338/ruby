0.to_s(16) #="0"
# rejustメソッドは右寄せにしてくれるメソッド第一引数に桁数を指定できる
# 第2引数を指定するとその文字で列を埋めることができる
0.to_s(16).rjust(2, "0") #="00"