class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :co #会社名
      t.string :name  #名前
      t.string :tel #電話番号
      t.string :email #メールアドレス
      t.string :address #住所
      t.string :url #会社HP
      t.string :business #業種
      t.string :period #納品期限
      t.string :remarks #作りたい動画内容
      t.timestamps
    end
  end
end
