class Spinach::Features::CommentingToAPost < Spinach::FeatureSteps
  step 'I visit the posts page' do
    visit posts_path
  end

  step 'select a post' do
    visit post_path(Post.first)
  end

  step 'I should view the post' do
    p page.body
  end

  step 'I click comment link' do
    pending 'step not implemented'
  end

  step 'I should go to new_comment_path' do
    pending 'step not implemented'
  end

  step 'fill the text area with Test Comment.' do
    pending 'step not implemented'
  end

  step 'I click link Create Comment' do
    pending 'step not implemented'
  end

  step 'I should see flash saying comment was successfully created.' do
    pending 'step not implemented'
  end

  step 'I should be redirected to comment view page' do
    pending 'step not implemented'
  end

  step 'page content should contain Test Comment' do
    pending 'step not implemented'
  end
end
