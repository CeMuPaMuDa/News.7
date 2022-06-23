class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, comment: 'Пользователь(Автор)' do |t|
      t.with_options index: { unique: true } do
        string  :name,
                comment: 'Имя пользователя'
        string  :email,
                comment: 'E-mail пользователя'
      end
      t.boolean :active,
                default: true,
                comment: 'Состояние пользователя: активен(true), забанен(false)'
      t.timestamps
  end
  end
end
