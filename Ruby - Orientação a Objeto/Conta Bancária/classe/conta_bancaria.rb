class ContaBancaria
  def initialize(proprietario, valor_inicial)
    @proprietario = proprietario
    @valor = valor_inicial
  end

  def transferir(outra_conta, valor)
    #logica de tranferencia
    if(saldo >= valor)
      debitar(valor)
      outra_conta.depositar(valor)
    else
      raise "Tranferencia não realizada devido a saldo insulficiente"
    end
  end

  def saldo
    @valor
  end

  private
  def debitar(valor)
    @valor -= valor
  end

  protected
  def depositar(valor)
    @valor += valor
  end
end