class AddSeoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :metatitulo, :string
    add_column :posts, :metadescricion, :text
    add_column :posts, :metapalabrasclave, :text
  end
end
