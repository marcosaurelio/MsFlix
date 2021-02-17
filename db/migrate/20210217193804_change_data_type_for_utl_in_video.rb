class ChangeDataTypeForUtlInVideo < ActiveRecord::Migration[6.0]
  def self.up
    change_table :videos do |t|
      t.change :url, :text
    end
  end
  def self.down
    change_table :videos do |t|
      t.change :url, :string
    end
  end
end
