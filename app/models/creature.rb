class Creature < ApplicationRecord
  belongs_to :category_second
  belongs_to :columned_by
  has_many :photos, dependent: :destroy

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
      user = find_by(id: row["id"]) || new
      # CSVからデータを取得し、設定する
      user.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
      user.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["id", "japanese_name", "scientific_name", "information", "category_second_id", "columned_by_id"]
  end
end
