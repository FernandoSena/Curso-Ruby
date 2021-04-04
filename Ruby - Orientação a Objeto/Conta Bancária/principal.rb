require './classe/conta_bancaria'
require './classe/conta_com_taxa'

conta_cadu = ContaComtaxa.new("Cadu", 100)
conta_pessoa2 = ContaBancaria.new("pessoa2", 200)

begin
  conta_cadu.transferir(conta_pessoa2, 250)
rescue StandardError => meu_erro
  p "Não foi possivel tranferir: #{meu_erro.message}"
end
p conta_cadu.saldo
p conta_pessoa2.saldo