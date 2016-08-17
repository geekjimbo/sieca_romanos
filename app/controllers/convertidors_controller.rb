class ConvertidorsController < ApplicationController
  include ConvertidorsHelper

  def index
    @convertidor = Convertidor.find 1
    @romano = @convertidor.romano
  end

  def new
    @convertidor = Convertidor.find 1
    arabigo = params["convertidor"]["arabigo"]
    @convertidor.romano = convert arabigo.to_i  #convert_to_roman arabigo
    @convertidor.romano = "El número arábigo #{arabigo} convertido a Romano: #{@convertidor.romano}"
    @convertidor.save!
    @romano = @convertidor.romano
    redirect_to action: "index"
  end

  private

    def convert_to_roman(in_arabic)
      resultado = "... todavía no hay de piña" # aquí hay que implementar el convertidor
      "El resultado arábigo #{in_arabic} convertido a Romano es: #{resultado}"
    end
end
