module RecordNotFound
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound, with:  :not_found
  end

  private

  def not_found
    redirect_to( { action: 'index' }, flash: { warn: "Record not found" } )
  end

end
