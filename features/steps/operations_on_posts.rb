class Spinach::Features::OperationsOnPosts < Spinach::FeatureSteps
  step 'I am on home page' do
    visit posts_path
  end

  step 'I click on New Post' do
    click_link 'New Post'
  end

  step 'I enter the post content' do
    p page.body
    page.fill_in "post_body", :with => 'this is content'
  end

  step 'I click Submit button' do
    pending 'step not implemented'
  end

  step 'the post should be created' do
    pending 'step not implemented'
  end

  step 'I should see it in the posts list' do
    pending 'step not implemented'
  end

  step 'I click on Post I want to edit' do
    pending 'step not implemented'
  end

  step 'I enter new content' do
    pending 'step not implemented'
  end

  step 'the post content should change' do
    pending 'step not implemented'
  end

  step 'I have selected the last post' do
    pending 'step not implemented'
  end

  step 'I click Delete button' do
    pending 'step not implemented'
  end

  step 'the post should be deleted' do
    pending 'step not implemented'
  end

  step 'I enter invalid data' do
    @error1=Post.new :title=>'', :body =>''
    @error2=Post.new :title=>'', :body =>'something'
    @error3=Post.new :title=>'some title', :body =>''
  end

  step 'validation errors shouls be raised' do
    @error1.valid?.should be_false
    @error2.valid?.should be_false
    @error3.valid?.should be_false
  end

end
