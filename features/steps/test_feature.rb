require 'spinach/capybara'
class Spinach::Features::TestFeature < Spinach::FeatureSteps
  Given 'I visit the posts page' do    
    visit '/posts'
    p current_path
  end
  Then 'I should see "Posts"' do
    p page.methods.sort
    #display html content of tested page
    p page.body

    p page.has_text?('pogggggsts')
  end
end
