class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, comment: 'Статьи' do |t|
      t.string :title, comment: 'Заголовок статьи'
      t.text :content, comment: 'Содержимое статьи'

      t.timestamps
    end
  end
end
