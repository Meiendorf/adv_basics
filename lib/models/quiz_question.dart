/* QuizQuestion model class
 * This class is used to create a QuizQuestion object
 * It has two properties: question and answers
 * The question property is a string that holds the question
 * The answers property is a list of strings that holds the possible answers
 */
class QuizQuestion {
  final String question;
  final List<String> answers;

  const QuizQuestion(this.question, this.answers);
}
