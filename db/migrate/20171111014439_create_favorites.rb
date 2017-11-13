class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      # 「誰が」「何のマイクロポストを」お気に入りにするデータを保持する
       t.references :user, foreign_key: true
       t.references :micropost, foreign_key: true

       t.timestamps
       t.index [:user_id, :micropost_id], unique: true
    end
  end
end