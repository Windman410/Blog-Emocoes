class RenameTablesToPortuguese < ActiveRecord::Migration[5.2]
  def change
  	rename_table :articles, :artigos
  	rename_table :comments, :comentarios

  	rename_column :comentarios, :commenter, :nome
  	rename_column :comentarios, :body, :texto
  	
  	rename_column :artigos, :title, :titulo
  	rename_column :artigos, :text, :texto

  	

  end
end
