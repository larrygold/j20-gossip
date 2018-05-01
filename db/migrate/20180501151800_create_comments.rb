class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :gossip
      t.string :anonymous_commentor
      t.string :body

      t.timestamps
    end
  end
end
