class CalculationsController < ApplicationController
  def new_square_form
    # This method will just render the form view.
    render({ :template => "calculation_templates/square_form" })
  end

  def calculate_square
    # Retrieve user input from params
    @number = params.fetch("user_number").to_f
    @square_of_number = @number ** 2

    render({ :template => "calculation_templates/square_results" })
  end

  def new_square_root_form
    render({ :template => "calculation_templates/square_root_form" })
  end

  def calculate_square_root
    @number = params.fetch("user_number").to_f
    @square_root_of_number = Math.sqrt(@number)

    render({ :template => "calculation_templates/square_root_results" })
  end

  def new_payment_form
    render({ :template => "calculation_templates/payment_form" })
  end

  def calculate_payment
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_principal").to_f

    monthly_rate = @apr / 100 / 12
    number_of_payments = @years * 12
    @monthly_payment = (@principal * monthly_rate) / (1 - (1 + monthly_rate) ** -number_of_payments)

    render({ :template => "calculation_templates/payment_results" })
  end

  def new_random_form
    render({ :template => "calculation_templates/random_form" })
  end

  def calculate_random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random_number = rand(@min..@max)

    render({ :template => "calculation_templates/random_results" })
  end
end
