package qfep

class Quote
{
  String content
  String author
  Date created = new Date()

  static constraints =
  {
    author(blank: false)
    content(maxSize:255, blank:false)
  }
}
