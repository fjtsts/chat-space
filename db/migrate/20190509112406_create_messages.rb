class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text        :body
      t.string      :image
      t.integer     :user_id,   references: true
      t.integer     :group_id,   references: true
      t.timestamps
    end
  end
end
