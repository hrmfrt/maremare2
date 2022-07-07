class AqTasseidoController < ApplicationController

  def index
    @hokkaido = Aquarium.where(prefecture:"北海道")
    @tohoku = Aquarium.where(prefecture:["青森県","岩手県","秋田県","宮城県","福島県","山形県",])
    @kanto = Aquarium.where(prefecture:["東京都","神奈川県","千葉県","埼玉県","群馬県","茨城県","栃木県",])
    @chubu = Aquarium.where(prefecture:["山梨県","長野県","新潟県","富山県","石川県","福井県","静岡県","愛知県","岐阜県"])
    @kansai = Aquarium.where(prefecture:["三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県"])
    @chusikoku = Aquarium.where(prefecture:["鳥取県","島根県","岡山県","広島県","山口県","香川県","愛媛県","徳島県","高知県"])
    @kyusyu = Aquarium.where(prefecture:["福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"])
  end

  def result
    @num = params[:num]
    @numi = params[:num].to_i


    if @numi < 5 then
      @score = "コペポーダ級"
      @comment = "あなたは生まれたばかりの水族館マニアです。これから楽しい世界が待ってるよ！"
    elsif @numi <10 then
      @score = "イワシ級"
      @comment = "あなたは開発途上の水族館マニアです。近場の気になるところからレッツゴー"
    elsif @numi<20 then
      @score = "タイ級"
      @comment = "あなたは駆け出しの水族館マニアです。全国にはまだまだあなたの知らない世界が？"
    elsif @numi<30 then
      @score = "マグロ級"
      @comment = "あなたはそこそこの水族館マニアです。もう趣味の一つですね！この調子！"
    elsif @numi<50 then
      @score = "シャチ級"
      @comment = "あなたはかなりの水族館マニアです。旅行に行ったら水族館に行ってるタチですか？"
    elsif @numi<100 then
      @score = "ジンベエザメ級"
      @comment = "あなたはプロ級の水族館マニアです。目指せ！水族館マスター！"
    elsif @numi<120 then
      @score = "シロナガスクジラ級"
      @comment = "あなたは本物の水族館マニアです。もはやどこ行ったことないんですか！！"
    end
  end

end
