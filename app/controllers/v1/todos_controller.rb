class V1::TodosController < ApplicationController

    # 表示テスト用のアクション
    def index
        # todo = Todo.all
        todo = {'title' => 'サンプル', 'old' => 28}
        render json: todo
    end

    def create
        p todo_params
        todo = Todo.new(todo_params)
        if todo.save
        render json: todo
        else
        render json: todo.errors
        end
    end

    def destroy
        p params[:id]
        todo = Todo.find(params[:id])
        if todo.destroy
        render json: todo
        end
    end

    private

    # ストロングパラメーターの設定
    def todo_params
        params.require(:todo).permit(:title, :user_id)
    end

end
