class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :name  #名前
      t.string :tel #電話番号
      t.string :email #メールアドレス
      t.string :address #住所
      t.string :wide #平米数
      t.string :period #希望時期
      t.string :remarks #備考
      t.timestamps
    end
  end
end
