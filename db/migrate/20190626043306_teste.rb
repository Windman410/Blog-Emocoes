class Teste < ActiveRecord::Migration[5.2]
  def change
  	rename_column :comentarios, :article_id, :artigo_id
  end
end
