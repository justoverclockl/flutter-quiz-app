class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // shuffle do shuffle "in place" so to return a shuffled list first we need to copy it, then shuffle, then return
    final shuffledList = List.of(answers);
    shuffledList.shuffle();

    return shuffledList;
  }
}
