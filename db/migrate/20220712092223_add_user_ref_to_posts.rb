class AddUserRefToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :user, null: false, foreign_key: true,
    comment: 'связь пользователей с постами'
  end
end
