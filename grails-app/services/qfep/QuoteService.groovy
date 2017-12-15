package qfep

import grails.gorm.transactions.Transactional

@Transactional
class QuoteService
{
  //Select * from Quote;
  //Stores it in allQuotes and returns it
  def getQuoteList()
  {
    def allQuotes = Quote.list()
    return allQuotes
  }



  def getTotalQuotes()
  {
    def allQuotes = getQuoteList()
    return allQuotes.size()
  }



    def getStaticQuote()
    {
      //Just makes a new quote in memory
      return new Quote(author: 'Anonymous', content: 'Better late than never, but never late is better.')
    }



    def getRandomQuote()
    {
      //Takes all of the quotes and slaps them in an array.
      def allQuotes = getQuoteList()
      def randomQuote = null

      //If database is populated grab a quote from it
      if (allQuotes.size() > 0)
      {
        def randomIndex = new Random().nextInt(allQuotes.size())
        randomQuote = allQuotes[randomIndex]
      }

      //If database is empty call the function that makes a quote
      else
      {
        //Takes the quote that was made and add to database
        getStaticQuote().save()
        randomQuote = getStaticQuote()
      }

      //Returns the Quote
      return randomQuote
    }
}
