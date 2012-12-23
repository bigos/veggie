class Spinach::Features::TestIfPostWorks < Spinach::FeatureSteps
  step 'I have an empty form' do
    @post=Post.new
  end

  step 'I fill it in with content' do
    @post.content='abcde'
  end

  step 'I click Submit' do
    @post.save
  end

  step 'the post content should be displayed in the post list' do
    @post.content.must_include 'abcde'
  end
end
