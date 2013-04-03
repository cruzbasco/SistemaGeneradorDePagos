class Consola
  def imprimir(cadena)
    print(cadena)
  end
  def imprimir_cheque(cheque)
    if(cheque.fecha_emision.next_day.day!=1)
      imprimir("No se pudo imprimir el cheque, porque aun no es fin de mes")
    else
      imprimir("Nombre completo: #{cheque.beneficiario}\nCi: #{cheque.ci}\nMonto a cobrar: #{cheque.monto}$\nFecha emision:"+Date.today.to_s+"\nFirma:___________________________")
    end
  end
end