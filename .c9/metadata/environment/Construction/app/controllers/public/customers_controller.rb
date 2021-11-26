{"filter":false,"title":"customers_controller.rb","tooltip":"/Construction/app/controllers/public/customers_controller.rb","undoManager":{"mark":4,"position":4,"stack":[[{"start":{"row":0,"column":0},"end":{"row":33,"column":3},"action":"remove","lines":["lass Public::CustomersController < ApplicationController","  def show","    @customer = Customer.find_by(id: current_customer.id)","  end","","  def cancel","  end","","  def withdraw","    current_customer.update(is_deleted: \"退会\")","    reset_session","    redirect_to public_root_path","  end","","  def edit","    @customer = Customer.find_by(id: current_customer.id)","  end","","  def update","    @customer = Customer.find_by(id: current_customer.id)","    if @customer.update(customer_params)","      flash[:createdflag] = true","      redirect_to public_customers_path","    else","      render:edit","    end","  end","","  private","  # ストロングパラメータ","  def customer_params","   params.require(:customer).permit(:name,  :email )","  end","end"],"id":2},{"start":{"row":0,"column":0},"end":{"row":34,"column":0},"action":"insert","lines":["class Public::CustomersController < ApplicationController","  def show","    @customer = Customer.find_by(id: current_customer.id)","  end","","  def cancel","  end","","  def withdraw","    current_customer.update(is_deleted: \"退会\")","    reset_session","    redirect_to public_root_path","  end","","  def edit","    @customer = Customer.find_by(id: current_customer.id)","  end","","  def update","    @customer = Customer.find_by(id: current_customer.id)","    if @customer.update(customer_params)","      flash[:createdflag] = true","      redirect_to public_customers_path","    else","      render:edit","    end","  end","","  private","  # ストロングパラメータ","  def customer_params","   params.require(:customer).permit(:last_name, :first_name, :last_name_ruby, :first_name_ruby, :email, :postal_code, :address, :phone_number,)","  end","end",""]}],[{"start":{"row":31,"column":41},"end":{"row":31,"column":42},"action":"remove","lines":["_"],"id":3},{"start":{"row":31,"column":40},"end":{"row":31,"column":41},"action":"remove","lines":["t"]},{"start":{"row":31,"column":39},"end":{"row":31,"column":40},"action":"remove","lines":["s"]},{"start":{"row":31,"column":38},"end":{"row":31,"column":39},"action":"remove","lines":["a"]},{"start":{"row":31,"column":37},"end":{"row":31,"column":38},"action":"remove","lines":["l"]}],[{"start":{"row":31,"column":43},"end":{"row":31,"column":91},"action":"remove","lines":[":first_name, :last_name_ruby, :first_name_ruby, "],"id":4}],[{"start":{"row":31,"column":49},"end":{"row":31,"column":89},"action":"remove","lines":[", :postal_code, :address, :phone_number,"],"id":5}],[{"start":{"row":11,"column":22},"end":{"row":11,"column":23},"action":"remove","lines":["_"],"id":6},{"start":{"row":11,"column":21},"end":{"row":11,"column":22},"action":"remove","lines":["c"]},{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"remove","lines":["i"]},{"start":{"row":11,"column":19},"end":{"row":11,"column":20},"action":"remove","lines":["l"]},{"start":{"row":11,"column":18},"end":{"row":11,"column":19},"action":"remove","lines":["b"]},{"start":{"row":11,"column":17},"end":{"row":11,"column":18},"action":"remove","lines":["u"]},{"start":{"row":11,"column":16},"end":{"row":11,"column":17},"action":"remove","lines":["p"]}]]},"ace":{"folds":[],"scrolltop":295.5,"scrollleft":0,"selection":{"start":{"row":11,"column":25},"end":{"row":11,"column":25},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1637746040465,"hash":"9df89c8f682a7ffe25ecb554733f7ae41b4295d9"}