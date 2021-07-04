country = "italy"

if country == "japan"
  "こんにちは"
elsif country == "us"
  "Hello"
elsif country == "italy"
  "ciao"
else
  "???"
end

#上記のif文がcase文だとシンプルに
case country
when "japan"
  "こんにちは"
when "us"
  "Hello"
when "italy"
  "ciao"
else
  "???"
end

#when節に複数の値を指定することも可能。どれか一致すれば処理をしてくれる
#結果を変数に格納も可能
country = "アメリカ"

message =
 case country
 when "japan","日本"
  "こんにちは"
 when "us","アメリカ"
  "Hello"
 when "italy","イタリア"
  "ciao"
 else
  "???"
 end
puts message