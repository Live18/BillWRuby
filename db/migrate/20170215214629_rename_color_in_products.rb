class RenameColorInProducts < ActiveRecord::Migration[5.0]
  def change
  	rename_column	:products,	:color,	:colour
  end
end
