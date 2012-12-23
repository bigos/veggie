class Spinach::Features::TestSubmittingNewPost < Spinach::FeatureSteps
  text = 'Test me please.'
  step 'I visit the posts page' do
    visit '/posts'
  end

  step 'click New post link' do
    page.click_link('New Post')
  end

  step 'I should go to new_post_path' do
    visit new_post_path
  end

  step 'fill the text area with Test me please.' do
    page.fill_in "post_content", :with => text
  end

  step 'I click link Create Post' do
  page.click_button('Create Post')
  end

  step 'I should see flash saying Post was successfully created.' do
    page.should have_selector "#notice", text: "Post was successfully created."
  end

  step 'page content should contain Test me please' do
    page.body.should include(text)
  end

  step 'fill the text area with empty string' do
    page.fill_in "post_content", :with => ''
  end

  step 'I should see flash informing of an error' do
    page.should have_selector "#error_explanation"
  end
end
