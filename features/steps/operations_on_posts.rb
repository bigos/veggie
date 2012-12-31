class Spinach::Features::OperationsOnPosts < Spinach::FeatureSteps
  step 'I am on home page' do
    visit posts_path
  end

  step 'I click on New Post' do
    click_link 'New Post'
  end

  step 'I enter the post content' do
    page.fill_in "post_title", :with => 'some title'
    page.fill_in "post_body", :with => 'this is content'
  end

  step 'I click Save button' do
    page.click_button 'Save'
    page.body.should_not include('error_explanation')
  end

  step 'the post should be created' do
    p=Post.last
    p.body.should include('this is content')
    p.body.should include('this is content')
  end

  step 'I should see it in the posts list' do
    visit posts_path
    page.body.should include('this is content') 
  end

  step 'I click on Post I want to edit' do
    post = Post.last
    #puts page.body
    pp = page.all(:xpath, "//a[@href=\"/posts/#{post.id}/edit\"]",:text=>'Edit')
    p pp
    page.click_link "/posts/#{post.id}/edit"
  end

  step 'I enter new content' do
    p page.body
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
