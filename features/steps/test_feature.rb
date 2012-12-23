class Spinach::Features::TestFeature < Spinach::FeatureSteps
  step 'I visit the posts page' do
    visit '/posts'
  end

  step 'I should see "Posts"' do
    page.has_content?('posts').must_equal true
  end
end
