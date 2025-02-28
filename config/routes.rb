Rails.application.routes.draw do
  # home
  get("/", { :controller => "users", :action => "index" })

  #users
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:username", { :controller => "users", :action => "show" })
  get("/insert_user_record", { :controller => "users", :action => "create" })
  get("/update_user/:user_id", { :controller => "users", :action => "update" })

  #venues
  get("/venues", { :controller => "venues", :action => "index" })
  get("/insert_venue_record", { :controller => "venues", :action => "create" })
  get("/venues/:an_id", { :controller => "venues", :action => "show" })
  get("/update_venue/:the_id", { :controller => "venues", :action => "update" })
  get("/delete_venue/:id_to_delete", { :controller => "venues", :action => "destroy" })

  #comments
  get("/insert_comment_record", { :controller => "comments", :action => "create" })
end
