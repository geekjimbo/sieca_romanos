class ConvertidorsController < ApplicationController

  def index
    @convertidor = Convertidor.find 1
    @romano = @convertidor.romano
  end

  def new
    @convertidor = Convertidor.find 1
    romano = params["convertidor"]["arabigo"]
    @convertidor.romano = convert_to_roman romano
    @convertidor.save!
    redirect_to action: "index"
  end

  private

    def convert_to_roman(in_arabic)
      resultado = "... todavía no hay de piña" # aquí hay que implementar el convertidor
      "El resultado arábigo #{in_arabic} convertido a Romano es: #{resultado}"
    end
end
