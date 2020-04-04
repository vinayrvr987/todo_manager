class TodosController < ApplicationController
    def index
      render plain: Todo.all.to_s
    end
end  