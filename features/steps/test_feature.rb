class Spinach::Features::TestFeature < Spinach::FeatureSteps
  step 'I visit the posts page' do
    visit posts_path
  end

  step 'I should see "Posts"' do
    page.has_content?('Posts').must_equal true
  end
end
