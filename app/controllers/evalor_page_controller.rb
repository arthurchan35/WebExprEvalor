require_relative "ExprEvalor.rb"

class EvalorPageController < ApplicationController
	def index
		if (params.has_key?(:y_expr) && params.has_key?(:x_val))
			@ree = RubyExprEvalor.new(params[:y_expr], params[:x_val].to_f)
			@result = @ree.expr()
		end
	end
end
