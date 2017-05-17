################################################################################
#
# Para todos os exercícios considere que você tem um vetor 'quotes' com as
# quotações diárias das ações, por exemplo:
quotes = [24, 20, 21, 18, 19, 23]
# Nesse vetor, cada índice representa um dia.
#
################################################################################
# Método 'evaluate'
#-------------------------------------------------------------------------------
# Dado um vetor da seguinte forma:
commands = [
  {type: "buy", amount: 500, day: 1},
  {type: "buy", amount: 200, day: 3},
  {type: "sell", amount: 400, day: 6}
]
# E um valor inicial:
budget = 4500
# Retorne o capital e a quantidade de ações no último dia. Não é possível ficar
# vendido. Se o usuário que enviou comandos que não seriam permitidos, eles são
# ignorados simplesmente. Se algum comando foi ignorado, deve ser retornado
# junto com as duas outras coisas.
#
################################################################################
# Método 'find_some_ramp'
#-------------------------------------------------------------------------------
# Encontre uma rampa qualquer. Uma "rampa" é um dia D a partir do qual a ação
# subiu pelo menos por 3 dias seguidos. Por exemplo, para esse vetor:
[
  127,
  125,
  126,
  130,
  129,
  131,
  130
]
# O método retornaria 1. Caso não exista, retorne 'nil'.
#
################################################################################
# Método 'find_all_ramps'
#-------------------------------------------------------------------------------
#
# 1. Primeiro, corrija o método anterior para que uma rampa seja considerada tanto para
#    preço subindo como descendo.
# 2. Encontre todas as rampas. Retorne um vetor com os índices.
#
################################################################################
# Método 'measure_influence_by_terms'
#-------------------------------------------------------------------------------
#
# De cada notícia que foi emitida um dia D, foram extraídos os termos chaves,
# assim:
news = {
  3 => ['Zuckerberg', 'Snapchat'],
  5 => ['Hurricane'],
  11 => ['Snapchat', 'Trump', 'Syria', 'Travis Kalanick']
}
#
# Determine a influência de cada termo no preço da ação. A influência é o
# número de vezes que aquele termo causou uma rampa no mesmo dia ou no dia
# seguinte sobre o número de vezes que o termo não causou nada.
#
################################################################################
#
# Escreva o método 'evaluate_with_news_strategy' e corrija quaisquer outros métodos
# necessários, para que ele seja análogo ao 'evaluate', mas levando em
# consideração as notícias emitidas no dia. Se sairem notícias que fazem a ação
# flutuar (influência > 0.5), este "robô" deve sair do mercado, esperar e retomar
# a posição 3 dias depois. Cuidado para não usar informações que não estavam
# disponíveis no dia (o robô não é vidente).
#
# Retorne o capital final e a quantidade de ações no último dia.
#
################################################################################

class Stocks
  def initialize(quotes:)
    @quotes = quotes
  end

  def evaluate(commands:, budget:)
    # ...
  end

  def find_some_ramp
  end

  def find_all_ramps
  end

  def measure_influence_by_terms(news:)
  end

  def evaluate_with_news_strategy(commands:, budget:, news:)
  end
end

module DownloadedData
  def self.get_quotes
    lines = []
    File.foreach("fb.csv") { |line| lines.push(line.split(",")) }
    quotes = lines[1..-1].map { |vals| vals[1].to_f.to_i }
    quotes.reverse
  end
end

Stocks.new(quotes: DownloadedData.get_quotes)
