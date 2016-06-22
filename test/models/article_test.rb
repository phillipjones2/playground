require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  test "should not save article without title" do
    article = Article.new
    assert_not article.save, "Saved the article without a title"
  end

  test "should save article without body" do
    article = Article.new
    article.title = "this"
    assert article.save
  end

  test "should report error" do
    some_undefined_variable
    assert true
  end

end
