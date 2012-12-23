require 'spinach/capybara'
class Spinach::Features::TestFeature < Spinach::FeatureSteps
  step 'I visit the posts page' do    
    visit '/posts'    
    p current_path
  end
  step 'I should see "Posts"' do
    #display html content of tested page
    p page.html
    page.has_content? 'posts'
  end
end
