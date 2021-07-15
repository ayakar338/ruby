# 範囲オブジェクトについて
# 最初の値..最後の値（最後の値を含む）
# 最初の値...最後の値（最後の値を含まない）
1..5
1...5
"a".."e"
"a"..."e"
# include?メソッドは含まれているかを見るメソッド
range = 1..5
range.include?(5) #=ture
renge = 1...5
renge.include?(5) #=false
# 範囲オブジェクトを変数に入れずそのまま使用するときは()が必要
(1..5).include?(5)

# 範囲オブジェクトの主な使い方
# 配列や文字列の一部を抜き出す
a = [1,2,3,4,5]
a[1..3] #=[2,3,4]
# 文字列も同じようにできる
a = "absdef"
a[1..3] #="bcd"

# to_aメソッドは配列を作成する
(1..5).to_a #=[1,2,3,4,5]

# stepメソッドは引数に数値を入れればその分だけ飛ばして処理を行ってくれる
number = []
(1..10).step(2) { |n| number << n}
number #=[1,3,5,7,9]