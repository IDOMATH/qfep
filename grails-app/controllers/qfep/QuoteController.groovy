package qfep

class QuoteController
{
  static defaultAction = 'random'
    def random()
    {
      def staticAuthor = "Math"
      def staticContent = "yes."

      //Pass information to the view
      [author: staticAuthor, content: staticContent]
    }
}
