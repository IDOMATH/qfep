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
    //Get the count of Quote
    def totalQuotes = quoteService.getTotalQuotes()
    //Pass information to the view
    [quote: randomQuote, totalQuotes: totalQuotes]
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


  def donate =
  {

  }
}
