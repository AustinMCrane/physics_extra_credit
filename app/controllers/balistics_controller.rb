class BalisticsController < ApplicationController
  def index

  end
  def calculate_distance_above
    puts known_params
    render json: {theta: theta}
  end
  private
  # Solve for theta
  def theta
    # initial velocity
    v = known_params[:velocity].to_f
    # distance the target is away from origen
    d = known_params[:distance].to_f
    sin_of_angle = ((9.8*(d - v))/2*v)
    return sin_of_angle
  end
  def known_params
    params.require(:knowns).permit(:velocity, :distance)
  end
end
