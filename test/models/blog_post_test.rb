require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? return true for draft blog post" do
    assert blog_posts(:draft).draft?
  end

  test "draft? return false for published blog post" do
    refute blog_posts(:published).draft?
  end

  test "draft? return false for schedule blog post" do
    refute blog_posts(:schedule).draft?
  end

  test "published? return false for published blog post" do
    assert blog_posts(:published).published?
  end

  test "published? return true for published blog post" do
    refute blog_posts(:draft).published?
  end

  test "published? return false for schedule blog post" do
    refute blog_posts(:schedule).published?
  end

  test "schedule? return false for schedule blog post" do
    assert blog_posts(:schedule).schedule?
  end

  test "schedule? return true for draft blog post" do
    refute blog_posts(:draft).schedule?
  end

  test "schedule? return false for published blog post" do
    refute blog_posts(:published).schedule?
  end

  def draft_blog_post
    BlogPost.new(published_at: nil)
  end
end
