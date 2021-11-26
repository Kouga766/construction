{"filter":false,"title":"reviews_controller.rb","tooltip":"/Construction/app/controllers/public/reviews_controller.rb","undoManager":{"mark":88,"position":88,"stack":[[{"start":{"row":1,"column":2},"end":{"row":13,"column":0},"action":"remove","lines":["def index","  end","","  def show","  end","","  def new","  end","","  def edit","  end","end",""],"id":2},{"start":{"row":1,"column":2},"end":{"row":63,"column":3},"action":"insert","lines":["","  def new","    @question = Question.find(params[:question_id])","    @answer = Answer.new","  end","","  def create","    @question = Question.find(params[:answer][:question_id])","    @answer = current_customer.answers.new(answer_params)","    @answer.question_id = @question.id","    answer_count = Answer.where(question_id: params[:answer][:question_id]).where(customer_id: current_customer.id).count","    #answer_count = @question.answers.where(customer_id: current_customer.id).count","    # バリデーションによるエラーがあるか判定","    if @answer.valid?","      # バリデーションエラーが無い、且つレビューを一度もしたことない場合","      if answer_count < 1","        @answer.save","        redirect_to public_question_path(@question), notice: \"レビューを保存しました\"","      else","        redirect_to public_question_path(@question), notice: \"レビューの投稿は一度までです\"","      end","    else","      flash.now[:alert] = \"レビューの保存に失敗しました\"","      render :new","    end","  end","","  def edit","    @question = Question.find(params[:question_id])","    @answer = Answer.find(params[:id])","    @answers = Answer.all","","  end","","  def update","    @question = Question.find(params[:answer][:question_id])","    @answer = Answer.find(params[:id])","    @answer.question_id = @question.id","","    if @answer.update(answer_params)","      flash[:createdflag] = true","      redirect_to public_question_path(@question.id)","    else","","      render :edit","    end","  end","","  def destroy","    @answer = Answer.find(params[:id])","    @answer.destroy","    redirect_to public_question_path","  end","","private","  # ストロングパラメータ","  def answer_params","   params.require(:answer).permit(:name, :answer ,:image )","","  end","","","end"]}],[{"start":{"row":3,"column":12},"end":{"row":3,"column":13},"action":"remove","lines":["n"],"id":3},{"start":{"row":3,"column":11},"end":{"row":3,"column":12},"action":"remove","lines":["o"]},{"start":{"row":3,"column":10},"end":{"row":3,"column":11},"action":"remove","lines":["i"]},{"start":{"row":3,"column":9},"end":{"row":3,"column":10},"action":"remove","lines":["t"]},{"start":{"row":3,"column":8},"end":{"row":3,"column":9},"action":"remove","lines":["s"]},{"start":{"row":3,"column":7},"end":{"row":3,"column":8},"action":"remove","lines":["e"]},{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"remove","lines":["u"]}],[{"start":{"row":3,"column":5},"end":{"row":3,"column":6},"action":"remove","lines":["q"],"id":4}],[{"start":{"row":3,"column":5},"end":{"row":3,"column":6},"action":"insert","lines":["i"],"id":5},{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"insert","lines":["t"]},{"start":{"row":3,"column":7},"end":{"row":3,"column":8},"action":"insert","lines":["e"]}],[{"start":{"row":3,"column":8},"end":{"row":3,"column":9},"action":"insert","lines":["m"],"id":6}],[{"start":{"row":3,"column":19},"end":{"row":3,"column":20},"action":"remove","lines":["n"],"id":7},{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"remove","lines":["o"]},{"start":{"row":3,"column":17},"end":{"row":3,"column":18},"action":"remove","lines":["i"]},{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"remove","lines":["t"]},{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"remove","lines":["s"]},{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"remove","lines":["e"]},{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"remove","lines":["u"]},{"start":{"row":3,"column":12},"end":{"row":3,"column":13},"action":"remove","lines":["Q"]}],[{"start":{"row":3,"column":12},"end":{"row":3,"column":13},"action":"insert","lines":["I"],"id":8},{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"insert","lines":["t"]},{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"insert","lines":["e"]},{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"insert","lines":["m"]}],[{"start":{"row":3,"column":37},"end":{"row":3,"column":38},"action":"remove","lines":["n"],"id":9},{"start":{"row":3,"column":36},"end":{"row":3,"column":37},"action":"remove","lines":["o"]},{"start":{"row":3,"column":35},"end":{"row":3,"column":36},"action":"remove","lines":["i"]},{"start":{"row":3,"column":34},"end":{"row":3,"column":35},"action":"remove","lines":["t"]},{"start":{"row":3,"column":33},"end":{"row":3,"column":34},"action":"remove","lines":["s"]},{"start":{"row":3,"column":32},"end":{"row":3,"column":33},"action":"remove","lines":["e"]},{"start":{"row":3,"column":31},"end":{"row":3,"column":32},"action":"remove","lines":["u"]},{"start":{"row":3,"column":30},"end":{"row":3,"column":31},"action":"remove","lines":["q"]}],[{"start":{"row":3,"column":30},"end":{"row":3,"column":31},"action":"insert","lines":["i"],"id":10},{"start":{"row":3,"column":31},"end":{"row":3,"column":32},"action":"insert","lines":["t"]},{"start":{"row":3,"column":32},"end":{"row":3,"column":33},"action":"insert","lines":["e"]},{"start":{"row":3,"column":33},"end":{"row":3,"column":34},"action":"insert","lines":["m"]}],[{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"remove","lines":["r"],"id":11},{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"remove","lines":["e"]},{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"remove","lines":["w"]},{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"remove","lines":["s"]},{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"remove","lines":["n"]},{"start":{"row":4,"column":5},"end":{"row":4,"column":6},"action":"remove","lines":["a"]}],[{"start":{"row":4,"column":5},"end":{"row":4,"column":6},"action":"insert","lines":["r"],"id":12},{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"insert","lines":["e"]}],[{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"insert","lines":["b"],"id":13}],[{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"remove","lines":["b"],"id":14},{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"remove","lines":["e"]},{"start":{"row":4,"column":5},"end":{"row":4,"column":6},"action":"remove","lines":["r"]}],[{"start":{"row":4,"column":5},"end":{"row":4,"column":11},"action":"insert","lines":["review"],"id":15}],[{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"remove","lines":["r"],"id":16},{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"remove","lines":["e"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"remove","lines":["w"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"remove","lines":["s"]},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"remove","lines":["n"]},{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"remove","lines":["A"]}],[{"start":{"row":4,"column":14},"end":{"row":4,"column":20},"action":"insert","lines":["review"],"id":17}],[{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"remove","lines":["r"],"id":18}],[{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":["R"],"id":19}],[{"start":{"row":8,"column":5},"end":{"row":8,"column":13},"action":"remove","lines":["question"],"id":20},{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"insert","lines":["i"]},{"start":{"row":8,"column":6},"end":{"row":8,"column":7},"action":"insert","lines":["t"]},{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"insert","lines":["e"]},{"start":{"row":8,"column":8},"end":{"row":8,"column":9},"action":"insert","lines":["m"]}],[{"start":{"row":8,"column":19},"end":{"row":8,"column":20},"action":"remove","lines":["n"],"id":21},{"start":{"row":8,"column":18},"end":{"row":8,"column":19},"action":"remove","lines":["o"]},{"start":{"row":8,"column":17},"end":{"row":8,"column":18},"action":"remove","lines":["i"]},{"start":{"row":8,"column":16},"end":{"row":8,"column":17},"action":"remove","lines":["t"]},{"start":{"row":8,"column":15},"end":{"row":8,"column":16},"action":"remove","lines":["s"]},{"start":{"row":8,"column":14},"end":{"row":8,"column":15},"action":"remove","lines":["e"]},{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"remove","lines":["u"]},{"start":{"row":8,"column":12},"end":{"row":8,"column":13},"action":"remove","lines":["Q"]}],[{"start":{"row":8,"column":12},"end":{"row":8,"column":13},"action":"insert","lines":["I"],"id":22},{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"insert","lines":["t"]},{"start":{"row":8,"column":14},"end":{"row":8,"column":15},"action":"insert","lines":["e"]},{"start":{"row":8,"column":15},"end":{"row":8,"column":16},"action":"insert","lines":["m"]}],[{"start":{"row":8,"column":35},"end":{"row":8,"column":36},"action":"remove","lines":["r"],"id":23},{"start":{"row":8,"column":34},"end":{"row":8,"column":35},"action":"remove","lines":["e"]},{"start":{"row":8,"column":33},"end":{"row":8,"column":34},"action":"remove","lines":["w"]},{"start":{"row":8,"column":32},"end":{"row":8,"column":33},"action":"remove","lines":["s"]},{"start":{"row":8,"column":31},"end":{"row":8,"column":32},"action":"remove","lines":["n"]},{"start":{"row":8,"column":30},"end":{"row":8,"column":31},"action":"remove","lines":["a"]}],[{"start":{"row":8,"column":30},"end":{"row":8,"column":31},"action":"insert","lines":["r"],"id":24},{"start":{"row":8,"column":31},"end":{"row":8,"column":32},"action":"insert","lines":["e"]},{"start":{"row":8,"column":32},"end":{"row":8,"column":33},"action":"insert","lines":["v"]}],[{"start":{"row":8,"column":33},"end":{"row":8,"column":34},"action":"insert","lines":["i"],"id":25}],[{"start":{"row":8,"column":30},"end":{"row":8,"column":34},"action":"remove","lines":["revi"],"id":26},{"start":{"row":8,"column":30},"end":{"row":8,"column":36},"action":"insert","lines":["review"]}],[{"start":{"row":8,"column":46},"end":{"row":8,"column":47},"action":"remove","lines":["n"],"id":27},{"start":{"row":8,"column":45},"end":{"row":8,"column":46},"action":"remove","lines":["o"]},{"start":{"row":8,"column":44},"end":{"row":8,"column":45},"action":"remove","lines":["i"]},{"start":{"row":8,"column":43},"end":{"row":8,"column":44},"action":"remove","lines":["t"]},{"start":{"row":8,"column":42},"end":{"row":8,"column":43},"action":"remove","lines":["s"]},{"start":{"row":8,"column":41},"end":{"row":8,"column":42},"action":"remove","lines":["e"]},{"start":{"row":8,"column":40},"end":{"row":8,"column":41},"action":"remove","lines":["u"]},{"start":{"row":8,"column":39},"end":{"row":8,"column":40},"action":"remove","lines":["q"]}],[{"start":{"row":8,"column":39},"end":{"row":8,"column":40},"action":"insert","lines":["i"],"id":28},{"start":{"row":8,"column":40},"end":{"row":8,"column":41},"action":"insert","lines":["t"]},{"start":{"row":8,"column":41},"end":{"row":8,"column":42},"action":"insert","lines":["e"]},{"start":{"row":8,"column":42},"end":{"row":8,"column":43},"action":"insert","lines":["m"]}],[{"start":{"row":9,"column":10},"end":{"row":9,"column":11},"action":"remove","lines":["r"],"id":29},{"start":{"row":9,"column":9},"end":{"row":9,"column":10},"action":"remove","lines":["e"]},{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"remove","lines":["w"]},{"start":{"row":9,"column":7},"end":{"row":9,"column":8},"action":"remove","lines":["s"]},{"start":{"row":9,"column":6},"end":{"row":9,"column":7},"action":"remove","lines":["n"]},{"start":{"row":9,"column":5},"end":{"row":9,"column":6},"action":"remove","lines":["a"]}],[{"start":{"row":9,"column":5},"end":{"row":9,"column":6},"action":"insert","lines":["r"],"id":30},{"start":{"row":9,"column":6},"end":{"row":9,"column":7},"action":"insert","lines":["e"]},{"start":{"row":9,"column":7},"end":{"row":9,"column":8},"action":"insert","lines":["v"]},{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"insert","lines":["i"]}],[{"start":{"row":9,"column":5},"end":{"row":9,"column":9},"action":"remove","lines":["revi"],"id":31},{"start":{"row":9,"column":5},"end":{"row":9,"column":11},"action":"insert","lines":["review"]}],[{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"remove","lines":["r"],"id":32},{"start":{"row":9,"column":35},"end":{"row":9,"column":36},"action":"remove","lines":["e"]},{"start":{"row":9,"column":34},"end":{"row":9,"column":35},"action":"remove","lines":["w"]},{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"remove","lines":["s"]},{"start":{"row":9,"column":32},"end":{"row":9,"column":33},"action":"remove","lines":["n"]},{"start":{"row":9,"column":31},"end":{"row":9,"column":32},"action":"remove","lines":["a"]}],[{"start":{"row":9,"column":31},"end":{"row":9,"column":32},"action":"insert","lines":["r"],"id":33},{"start":{"row":9,"column":32},"end":{"row":9,"column":33},"action":"insert","lines":["e"]}],[{"start":{"row":9,"column":31},"end":{"row":9,"column":33},"action":"remove","lines":["re"],"id":34},{"start":{"row":9,"column":31},"end":{"row":9,"column":37},"action":"insert","lines":["review"]}],[{"start":{"row":9,"column":48},"end":{"row":9,"column":49},"action":"remove","lines":["r"],"id":35},{"start":{"row":9,"column":47},"end":{"row":9,"column":48},"action":"remove","lines":["e"]},{"start":{"row":9,"column":46},"end":{"row":9,"column":47},"action":"remove","lines":["w"]},{"start":{"row":9,"column":45},"end":{"row":9,"column":46},"action":"remove","lines":["s"]},{"start":{"row":9,"column":44},"end":{"row":9,"column":45},"action":"remove","lines":["n"]},{"start":{"row":9,"column":43},"end":{"row":9,"column":44},"action":"remove","lines":["a"]}],[{"start":{"row":9,"column":43},"end":{"row":9,"column":44},"action":"insert","lines":["r"],"id":36},{"start":{"row":9,"column":44},"end":{"row":9,"column":45},"action":"insert","lines":["e"]},{"start":{"row":9,"column":45},"end":{"row":9,"column":46},"action":"insert","lines":["v"]}],[{"start":{"row":9,"column":43},"end":{"row":9,"column":46},"action":"remove","lines":["rev"],"id":37},{"start":{"row":9,"column":43},"end":{"row":9,"column":49},"action":"insert","lines":["review"]}],[{"start":{"row":10,"column":10},"end":{"row":10,"column":11},"action":"remove","lines":["r"],"id":38},{"start":{"row":10,"column":9},"end":{"row":10,"column":10},"action":"remove","lines":["e"]},{"start":{"row":10,"column":8},"end":{"row":10,"column":9},"action":"remove","lines":["w"]},{"start":{"row":10,"column":7},"end":{"row":10,"column":8},"action":"remove","lines":["s"]},{"start":{"row":10,"column":6},"end":{"row":10,"column":7},"action":"remove","lines":["n"]},{"start":{"row":10,"column":5},"end":{"row":10,"column":6},"action":"remove","lines":["a"]}],[{"start":{"row":10,"column":5},"end":{"row":10,"column":6},"action":"insert","lines":["r"],"id":39},{"start":{"row":10,"column":6},"end":{"row":10,"column":7},"action":"insert","lines":["e"]},{"start":{"row":10,"column":7},"end":{"row":10,"column":8},"action":"insert","lines":["v"]}],[{"start":{"row":10,"column":5},"end":{"row":10,"column":8},"action":"remove","lines":["rev"],"id":40},{"start":{"row":10,"column":5},"end":{"row":10,"column":11},"action":"insert","lines":["review"]}],[{"start":{"row":10,"column":19},"end":{"row":10,"column":20},"action":"remove","lines":["n"],"id":41},{"start":{"row":10,"column":18},"end":{"row":10,"column":19},"action":"remove","lines":["o"]},{"start":{"row":10,"column":17},"end":{"row":10,"column":18},"action":"remove","lines":["i"]},{"start":{"row":10,"column":16},"end":{"row":10,"column":17},"action":"remove","lines":["t"]},{"start":{"row":10,"column":15},"end":{"row":10,"column":16},"action":"remove","lines":["s"]},{"start":{"row":10,"column":14},"end":{"row":10,"column":15},"action":"remove","lines":["e"]},{"start":{"row":10,"column":13},"end":{"row":10,"column":14},"action":"remove","lines":["u"]},{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"remove","lines":["q"]}],[{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"insert","lines":["i"],"id":42},{"start":{"row":10,"column":13},"end":{"row":10,"column":14},"action":"insert","lines":["t"]},{"start":{"row":10,"column":14},"end":{"row":10,"column":15},"action":"insert","lines":["e"]},{"start":{"row":10,"column":15},"end":{"row":10,"column":16},"action":"insert","lines":["m"]}],[{"start":{"row":10,"column":30},"end":{"row":10,"column":31},"action":"remove","lines":["n"],"id":43},{"start":{"row":10,"column":29},"end":{"row":10,"column":30},"action":"remove","lines":["o"]},{"start":{"row":10,"column":28},"end":{"row":10,"column":29},"action":"remove","lines":["i"]},{"start":{"row":10,"column":27},"end":{"row":10,"column":28},"action":"remove","lines":["t"]},{"start":{"row":10,"column":26},"end":{"row":10,"column":27},"action":"remove","lines":["s"]},{"start":{"row":10,"column":25},"end":{"row":10,"column":26},"action":"remove","lines":["e"]},{"start":{"row":10,"column":24},"end":{"row":10,"column":25},"action":"remove","lines":["u"]},{"start":{"row":10,"column":23},"end":{"row":10,"column":24},"action":"remove","lines":["q"]}],[{"start":{"row":10,"column":23},"end":{"row":10,"column":24},"action":"insert","lines":["i"],"id":44},{"start":{"row":10,"column":24},"end":{"row":10,"column":25},"action":"insert","lines":["t"]},{"start":{"row":10,"column":25},"end":{"row":10,"column":26},"action":"insert","lines":["e"]},{"start":{"row":10,"column":26},"end":{"row":10,"column":27},"action":"insert","lines":["m"]}],[{"start":{"row":11,"column":9},"end":{"row":11,"column":10},"action":"remove","lines":["r"],"id":45},{"start":{"row":11,"column":8},"end":{"row":11,"column":9},"action":"remove","lines":["e"]},{"start":{"row":11,"column":7},"end":{"row":11,"column":8},"action":"remove","lines":["w"]},{"start":{"row":11,"column":6},"end":{"row":11,"column":7},"action":"remove","lines":["s"]},{"start":{"row":11,"column":5},"end":{"row":11,"column":6},"action":"remove","lines":["n"]}],[{"start":{"row":11,"column":4},"end":{"row":11,"column":5},"action":"remove","lines":["a"],"id":46}],[{"start":{"row":11,"column":4},"end":{"row":11,"column":5},"action":"insert","lines":["r"],"id":47},{"start":{"row":11,"column":5},"end":{"row":11,"column":6},"action":"insert","lines":["e"]},{"start":{"row":11,"column":6},"end":{"row":11,"column":7},"action":"insert","lines":["v"]},{"start":{"row":11,"column":7},"end":{"row":11,"column":8},"action":"insert","lines":["i"]}],[{"start":{"row":11,"column":4},"end":{"row":11,"column":8},"action":"remove","lines":["revi"],"id":48},{"start":{"row":11,"column":4},"end":{"row":11,"column":10},"action":"insert","lines":["review"]}],[{"start":{"row":11,"column":24},"end":{"row":11,"column":25},"action":"remove","lines":["r"],"id":49},{"start":{"row":11,"column":23},"end":{"row":11,"column":24},"action":"remove","lines":["e"]},{"start":{"row":11,"column":22},"end":{"row":11,"column":23},"action":"remove","lines":["w"]},{"start":{"row":11,"column":21},"end":{"row":11,"column":22},"action":"remove","lines":["s"]},{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"remove","lines":["n"]},{"start":{"row":11,"column":19},"end":{"row":11,"column":20},"action":"remove","lines":["A"]}],[{"start":{"row":11,"column":19},"end":{"row":11,"column":20},"action":"insert","lines":["R"],"id":50},{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"insert","lines":["e"]}],[{"start":{"row":11,"column":19},"end":{"row":11,"column":21},"action":"remove","lines":["Re"],"id":51},{"start":{"row":11,"column":19},"end":{"row":11,"column":25},"action":"insert","lines":["Review"]}],[{"start":{"row":11,"column":39},"end":{"row":11,"column":40},"action":"remove","lines":["n"],"id":52},{"start":{"row":11,"column":38},"end":{"row":11,"column":39},"action":"remove","lines":["o"]},{"start":{"row":11,"column":37},"end":{"row":11,"column":38},"action":"remove","lines":["i"]},{"start":{"row":11,"column":36},"end":{"row":11,"column":37},"action":"remove","lines":["t"]},{"start":{"row":11,"column":35},"end":{"row":11,"column":36},"action":"remove","lines":["s"]},{"start":{"row":11,"column":34},"end":{"row":11,"column":35},"action":"remove","lines":["e"]},{"start":{"row":11,"column":33},"end":{"row":11,"column":34},"action":"remove","lines":["u"]},{"start":{"row":11,"column":32},"end":{"row":11,"column":33},"action":"remove","lines":["q"]}],[{"start":{"row":11,"column":32},"end":{"row":11,"column":33},"action":"insert","lines":["i"],"id":53},{"start":{"row":11,"column":33},"end":{"row":11,"column":34},"action":"insert","lines":["t"]},{"start":{"row":11,"column":34},"end":{"row":11,"column":35},"action":"insert","lines":["e"]},{"start":{"row":11,"column":35},"end":{"row":11,"column":36},"action":"insert","lines":["m"]}],[{"start":{"row":11,"column":54},"end":{"row":11,"column":55},"action":"remove","lines":["r"],"id":54},{"start":{"row":11,"column":53},"end":{"row":11,"column":54},"action":"remove","lines":["e"]},{"start":{"row":11,"column":52},"end":{"row":11,"column":53},"action":"remove","lines":["w"]},{"start":{"row":11,"column":51},"end":{"row":11,"column":52},"action":"remove","lines":["s"]},{"start":{"row":11,"column":50},"end":{"row":11,"column":51},"action":"remove","lines":["n"]},{"start":{"row":11,"column":49},"end":{"row":11,"column":50},"action":"remove","lines":["a"]}],[{"start":{"row":11,"column":49},"end":{"row":11,"column":50},"action":"insert","lines":["r"],"id":55},{"start":{"row":11,"column":50},"end":{"row":11,"column":51},"action":"insert","lines":["e"]},{"start":{"row":11,"column":51},"end":{"row":11,"column":52},"action":"insert","lines":["v"]},{"start":{"row":11,"column":52},"end":{"row":11,"column":53},"action":"insert","lines":["i"]},{"start":{"row":11,"column":53},"end":{"row":11,"column":54},"action":"insert","lines":["e"]},{"start":{"row":11,"column":54},"end":{"row":11,"column":55},"action":"insert","lines":["r"]}],[{"start":{"row":11,"column":54},"end":{"row":11,"column":55},"action":"remove","lines":["r"],"id":56}],[{"start":{"row":11,"column":54},"end":{"row":11,"column":55},"action":"insert","lines":["w"],"id":57}],[{"start":{"row":11,"column":49},"end":{"row":11,"column":55},"action":"remove","lines":["review"],"id":58},{"start":{"row":11,"column":49},"end":{"row":11,"column":55},"action":"insert","lines":["review"]}],[{"start":{"row":11,"column":65},"end":{"row":11,"column":66},"action":"remove","lines":["n"],"id":59},{"start":{"row":11,"column":64},"end":{"row":11,"column":65},"action":"remove","lines":["o"]},{"start":{"row":11,"column":63},"end":{"row":11,"column":64},"action":"remove","lines":["i"]},{"start":{"row":11,"column":62},"end":{"row":11,"column":63},"action":"remove","lines":["t"]},{"start":{"row":11,"column":61},"end":{"row":11,"column":62},"action":"remove","lines":["s"]},{"start":{"row":11,"column":60},"end":{"row":11,"column":61},"action":"remove","lines":["e"]},{"start":{"row":11,"column":59},"end":{"row":11,"column":60},"action":"remove","lines":["u"]},{"start":{"row":11,"column":58},"end":{"row":11,"column":59},"action":"remove","lines":["q"]}],[{"start":{"row":11,"column":58},"end":{"row":11,"column":59},"action":"insert","lines":["i"],"id":60},{"start":{"row":11,"column":59},"end":{"row":11,"column":60},"action":"insert","lines":["t"]},{"start":{"row":11,"column":60},"end":{"row":11,"column":61},"action":"insert","lines":["e"]},{"start":{"row":11,"column":61},"end":{"row":11,"column":62},"action":"insert","lines":["m"]}],[{"start":{"row":12,"column":4},"end":{"row":12,"column":83},"action":"remove","lines":["#answer_count = @question.answers.where(customer_id: current_customer.id).count"],"id":61}],[{"start":{"row":14,"column":8},"end":{"row":14,"column":14},"action":"remove","lines":["answer"],"id":62},{"start":{"row":14,"column":8},"end":{"row":14,"column":14},"action":"insert","lines":["review"]}],[{"start":{"row":16,"column":9},"end":{"row":16,"column":15},"action":"remove","lines":["answer"],"id":63},{"start":{"row":16,"column":9},"end":{"row":16,"column":15},"action":"insert","lines":["review"]}],[{"start":{"row":17,"column":9},"end":{"row":17,"column":15},"action":"remove","lines":["answer"],"id":64},{"start":{"row":17,"column":9},"end":{"row":17,"column":15},"action":"insert","lines":["review"]}],[{"start":{"row":30,"column":5},"end":{"row":30,"column":11},"action":"remove","lines":["answer"],"id":65},{"start":{"row":30,"column":5},"end":{"row":30,"column":11},"action":"insert","lines":["review"]}],[{"start":{"row":31,"column":5},"end":{"row":31,"column":11},"action":"remove","lines":["answer"],"id":66},{"start":{"row":31,"column":5},"end":{"row":31,"column":11},"action":"insert","lines":["review"]}],[{"start":{"row":36,"column":38},"end":{"row":36,"column":44},"action":"remove","lines":["answer"],"id":67},{"start":{"row":36,"column":38},"end":{"row":36,"column":44},"action":"insert","lines":["review"]}],[{"start":{"row":37,"column":5},"end":{"row":37,"column":11},"action":"remove","lines":["answer"],"id":68},{"start":{"row":37,"column":5},"end":{"row":37,"column":11},"action":"insert","lines":["review"]}],[{"start":{"row":38,"column":5},"end":{"row":38,"column":11},"action":"remove","lines":["answer"],"id":69},{"start":{"row":38,"column":5},"end":{"row":38,"column":11},"action":"insert","lines":["review"]}],[{"start":{"row":40,"column":8},"end":{"row":40,"column":14},"action":"remove","lines":["answer"],"id":70},{"start":{"row":40,"column":8},"end":{"row":40,"column":14},"action":"insert","lines":["review"]}],[{"start":{"row":40,"column":22},"end":{"row":40,"column":28},"action":"remove","lines":["answer"],"id":71},{"start":{"row":40,"column":22},"end":{"row":40,"column":28},"action":"insert","lines":["review"]}],[{"start":{"row":50,"column":5},"end":{"row":50,"column":11},"action":"remove","lines":["answer"],"id":72},{"start":{"row":50,"column":5},"end":{"row":50,"column":11},"action":"insert","lines":["review"]}],[{"start":{"row":51,"column":5},"end":{"row":51,"column":11},"action":"remove","lines":["answer"],"id":73},{"start":{"row":51,"column":5},"end":{"row":51,"column":11},"action":"insert","lines":["review"]}],[{"start":{"row":57,"column":6},"end":{"row":57,"column":12},"action":"remove","lines":["answer"],"id":74},{"start":{"row":57,"column":6},"end":{"row":57,"column":12},"action":"insert","lines":["review"]}],[{"start":{"row":58,"column":19},"end":{"row":58,"column":25},"action":"remove","lines":["answer"],"id":75},{"start":{"row":58,"column":19},"end":{"row":58,"column":25},"action":"insert","lines":["review"]}],[{"start":{"row":58,"column":47},"end":{"row":58,"column":48},"action":"remove","lines":["r"],"id":76},{"start":{"row":58,"column":46},"end":{"row":58,"column":47},"action":"remove","lines":["e"]},{"start":{"row":58,"column":45},"end":{"row":58,"column":46},"action":"remove","lines":["w"]},{"start":{"row":58,"column":44},"end":{"row":58,"column":45},"action":"remove","lines":["s"]},{"start":{"row":58,"column":43},"end":{"row":58,"column":44},"action":"remove","lines":["n"]},{"start":{"row":58,"column":42},"end":{"row":58,"column":43},"action":"remove","lines":["a"]}],[{"start":{"row":58,"column":42},"end":{"row":58,"column":49},"action":"insert","lines":["comment"],"id":77}],[{"start":{"row":30,"column":14},"end":{"row":30,"column":20},"action":"remove","lines":["Answer"],"id":78},{"start":{"row":30,"column":14},"end":{"row":30,"column":20},"action":"insert","lines":["Review"]},{"start":{"row":31,"column":15},"end":{"row":31,"column":21},"action":"remove","lines":["Answer"]},{"start":{"row":31,"column":15},"end":{"row":31,"column":21},"action":"insert","lines":["Review"]},{"start":{"row":37,"column":14},"end":{"row":37,"column":20},"action":"remove","lines":["Answer"]},{"start":{"row":37,"column":14},"end":{"row":37,"column":20},"action":"insert","lines":["Review"]},{"start":{"row":50,"column":14},"end":{"row":50,"column":20},"action":"remove","lines":["Answer"]},{"start":{"row":50,"column":14},"end":{"row":50,"column":20},"action":"insert","lines":["Review"]}],[{"start":{"row":29,"column":16},"end":{"row":29,"column":24},"action":"remove","lines":["Question"],"id":79},{"start":{"row":29,"column":16},"end":{"row":29,"column":20},"action":"insert","lines":["Item"]}],[{"start":{"row":36,"column":16},"end":{"row":36,"column":24},"action":"remove","lines":["Question"],"id":80},{"start":{"row":36,"column":16},"end":{"row":36,"column":20},"action":"insert","lines":["Item"]}],[{"start":{"row":18,"column":27},"end":{"row":18,"column":35},"action":"remove","lines":["question"],"id":81},{"start":{"row":18,"column":27},"end":{"row":18,"column":31},"action":"insert","lines":["item"]},{"start":{"row":18,"column":38},"end":{"row":18,"column":46},"action":"remove","lines":["question"]},{"start":{"row":18,"column":38},"end":{"row":18,"column":42},"action":"insert","lines":["item"]},{"start":{"row":20,"column":27},"end":{"row":20,"column":35},"action":"remove","lines":["question"]},{"start":{"row":20,"column":27},"end":{"row":20,"column":31},"action":"insert","lines":["item"]},{"start":{"row":20,"column":38},"end":{"row":20,"column":46},"action":"remove","lines":["question"]},{"start":{"row":20,"column":38},"end":{"row":20,"column":42},"action":"insert","lines":["item"]},{"start":{"row":29,"column":5},"end":{"row":29,"column":13},"action":"remove","lines":["question"]},{"start":{"row":29,"column":5},"end":{"row":29,"column":9},"action":"insert","lines":["item"]},{"start":{"row":29,"column":30},"end":{"row":29,"column":38},"action":"remove","lines":["question"]},{"start":{"row":29,"column":30},"end":{"row":29,"column":34},"action":"insert","lines":["item"]},{"start":{"row":36,"column":5},"end":{"row":36,"column":13},"action":"remove","lines":["question"]},{"start":{"row":36,"column":5},"end":{"row":36,"column":9},"action":"insert","lines":["item"]},{"start":{"row":36,"column":39},"end":{"row":36,"column":47},"action":"remove","lines":["question"]},{"start":{"row":36,"column":39},"end":{"row":36,"column":43},"action":"insert","lines":["item"]},{"start":{"row":38,"column":12},"end":{"row":38,"column":20},"action":"remove","lines":["question"]},{"start":{"row":38,"column":12},"end":{"row":38,"column":16},"action":"insert","lines":["item"]},{"start":{"row":38,"column":23},"end":{"row":38,"column":31},"action":"remove","lines":["question"]},{"start":{"row":38,"column":23},"end":{"row":38,"column":27},"action":"insert","lines":["item"]},{"start":{"row":42,"column":25},"end":{"row":42,"column":33},"action":"remove","lines":["question"]},{"start":{"row":42,"column":25},"end":{"row":42,"column":29},"action":"insert","lines":["item"]},{"start":{"row":42,"column":36},"end":{"row":42,"column":44},"action":"remove","lines":["question"]},{"start":{"row":42,"column":36},"end":{"row":42,"column":40},"action":"insert","lines":["item"]},{"start":{"row":52,"column":23},"end":{"row":52,"column":31},"action":"remove","lines":["question"]},{"start":{"row":52,"column":23},"end":{"row":52,"column":27},"action":"insert","lines":["item"]}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"remove","lines":["  "],"id":82},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"remove","lines":["    "]}],[{"start":{"row":9,"column":11},"end":{"row":9,"column":12},"action":"insert","lines":["s"],"id":83}],[{"start":{"row":9,"column":11},"end":{"row":9,"column":12},"action":"remove","lines":["s"],"id":84}],[{"start":{"row":8,"column":48},"end":{"row":9,"column":0},"action":"insert","lines":["",""],"id":85},{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":9,"column":4},"end":{"row":9,"column":5},"action":"insert","lines":["b"],"id":86},{"start":{"row":9,"column":5},"end":{"row":9,"column":6},"action":"insert","lines":["y"]},{"start":{"row":9,"column":6},"end":{"row":9,"column":7},"action":"insert","lines":["e"]}],[{"start":{"row":9,"column":7},"end":{"row":9,"column":8},"action":"insert","lines":["b"],"id":87},{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"insert","lines":["u"]}],[{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"remove","lines":["u"],"id":88}],[{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"insert","lines":["u"],"id":89},{"start":{"row":9,"column":9},"end":{"row":9,"column":10},"action":"insert","lines":["g"]}],[{"start":{"row":9,"column":9},"end":{"row":9,"column":10},"action":"remove","lines":["g"],"id":90},{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"remove","lines":["u"]},{"start":{"row":9,"column":7},"end":{"row":9,"column":8},"action":"remove","lines":["b"]},{"start":{"row":9,"column":6},"end":{"row":9,"column":7},"action":"remove","lines":["e"]},{"start":{"row":9,"column":5},"end":{"row":9,"column":6},"action":"remove","lines":["y"]},{"start":{"row":9,"column":4},"end":{"row":9,"column":5},"action":"remove","lines":["b"]},{"start":{"row":9,"column":2},"end":{"row":9,"column":4},"action":"remove","lines":["  "]},{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"remove","lines":["  "]},{"start":{"row":8,"column":48},"end":{"row":9,"column":0},"action":"remove","lines":["",""]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":8,"column":48},"end":{"row":8,"column":48},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1637842639224,"hash":"093765f320d9243db6e70fed071bdd7e06cfac19"}