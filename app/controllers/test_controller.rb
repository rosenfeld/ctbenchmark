class TestController < ApplicationController
  def regular
    render action: 'regular'
  end

  def catch_throw
    catch :rendered do
      render action: 'catch_throw'
      throw :rendered
    end
  end

end
