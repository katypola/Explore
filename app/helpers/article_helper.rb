module ArticleHelper
  def button_remove_article(article)
    button_to 'Remove From Saved Articles', article_remove_path(article), remote: true
  end
  def button_add_article(article)
    button_to "Save Article To Your Profile", { action: 'add', controller: 'article', method: :post}, {params: { article_id: article.id }, remote: true}
  end
end
