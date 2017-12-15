package qfep

class QuoteController
{
  static defaultAction = 'random'

  static scaffold = Quote

  def quoteService

  def random =
  {
    //Get a random quote
    def randomQuote = quoteService.getRandomQuote()

    //Pass information to the view
    [quote: randomQuote]
  }

  def ajaxRandom()
  {
    def randomQuote = quoteService.getRandomQuote()
    render
    {
      q(randomQuote.content)
      p(randomQuote.author)
    }
  }

  def renderView()
  {
    render (view:'renderView')
  }
}
