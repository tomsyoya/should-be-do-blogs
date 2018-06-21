
[1mFrom:[0m /home/ubuntu/workspace/should-be-do-blogs/app/controllers/posts_controller.rb @ line 23 PostsController#create:

    [1;34m19[0m: [32mdef[0m [1;34mcreate[0m
    [1;34m20[0m:   @post = [1;34;4mPost[0m.new(post_params)
    [1;34m21[0m:   @post.user_id = current_user.id
    [1;34m22[0m: 
 => [1;34m23[0m:   binding.pry
    [1;34m24[0m: 
    [1;34m25[0m:    [32mif[0m @post.save
    [1;34m26[0m:      redirect_to @post, [35mnotice[0m: [31m[1;31m"[0m[31m新規ポスト: #{@post.title}[0m[31m の投稿に成功しました[1;31m"[0m[31m[0m
    [1;34m27[0m:    [32melse[0m
    [1;34m28[0m:      render [33m:new[0m
    [1;34m29[0m:    [32mend[0m
    [1;34m30[0m: [32mend[0m

