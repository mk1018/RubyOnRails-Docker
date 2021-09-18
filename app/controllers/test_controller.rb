class TestController < ApplicationController

  def hello
    @msg = "ハロー"
    render
  end

end
