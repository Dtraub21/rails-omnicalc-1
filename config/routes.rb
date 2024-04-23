Rails.application.routes.draw do

  root({ :controller => "home", :action => "index" })



get("/square/new", { :controller => "calculations", :action => "new_square_form" })
post("/square/results", { :controller => "calculations", :action => "calculate_square" })

get("/square_root/new", { :controller => "calculations", :action => "new_square_root_form" })
post("/square_root/results", { :controller => "calculations", :action => "calculate_square_root" })


get("/payment/new", { :controller => "calculations", :action => "new_payment_form" })
post("/payment/results", { :controller => "calculations", :action => "calculate_payment" })

get("/random/new", { :controller => "calculations", :action => "new_random_form" })
post("/random/results", { :controller => "calculations", :action => "calculate_random" })



end
