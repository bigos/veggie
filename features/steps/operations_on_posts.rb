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
    @post_content = Post.last.body
    #finds myny elements that match
    #page.all(:xpath, "//a[@href=\"/posts/#{post.id}/edit\"]",:text=>'
    #finds DOM element that matches
    page.find(:xpath, "//a[@href=\"/posts/#{Post.last.id}/edit\"]").click
    # this is a locator "//a[@href=\"/posts/40/edit\"]"
  end

  step 'I enter new content' do
    #p page.body
    post = Post.last
    page.fill_in 'post_title', :with => post.title+ ' has been edited'
    page.fill_in 'post_body', :with => post.body+ ' has been altered'
  end

  step 'the post content should change' do
    #p @post_content
    #p Post.last
    Post.last.body.should_not equal(@post_content)
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
