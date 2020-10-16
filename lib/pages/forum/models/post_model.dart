import 'package:bcare/pages/forum/models/author_model.dart';
import 'package:bcare/pages/forum/models/replies_model.dart';

class Question {
  String question;
  String content;
  int votes;
  int repliesCount;
  int views;
  String created_at;
  Author author;
  List<Reply> replies;

  Question(
      {this.question,
      this.content,
      this.votes,
      this.repliesCount,
      this.views,
      this.created_at,
      this.author,
      this.replies});
}

List<Question> questions = [
  Question(
      author: lisa,
      question: 'Fight BACK',
      content:
          "My first post other than a few replies I have sent! I am 62 and was diagnosed with breast cancer on 4/10/2018 and received masectomy on the 31/10/2018.",
      created_at: "1h ago",
      views: 120,
      votes: 100,
      repliesCount: 80,
      replies: replies),
  Question(
      author: veni,
      question: 'Stage 2 her2 positive breast cancer ',
      content:
          "Hello, my mum got diagnosed with breast cancer in August after feeling a lump. Biopsy confirmed the cancer, she then went on to have a mastectomy in September. Today we finally got the pathology results after waiting 5 weeks for them: ",
      created_at: "2h ago",
      views: 20,
      votes: 10,
      repliesCount: 10,
      replies: replies),
  Question(
      author: samantha,
      question: 'been told I have SCLC with tumour on brain',
      content:
          "i was told just over 2.5 weeks ago that i have non small cell lung cancer,( non smoker young and healthy) ended up in A&E for sommething eles can out with a tumour on the brain that was found to be secondary, to the lung...i have had no symptoms at all this was a real shock...",
      created_at: "4h ago",
      views: 220,
      votes: 107,
      repliesCount: 67,
      replies: replies),
  Question(
      author: lavanya,
      question: 'Metastatic Melanoma found in Lymph nodes ',
      content:
          "I’m not sure if any of this is going to make sense so sorry in advance. I was diagnosed with malignant melanoma T3B at the beginning of August following a mole removal. 2 weeks ago I had a wider excision of skin and a SLNB where the surgeon removed 2 sentinel nodes. ",
      created_at: "10h ago",
      views: 221,
      votes: 109,
      repliesCount: 67,
      replies: replies),
  Question(
      author: martha,
      question: 'Triple Negative Breast Cancer - Grade 3',
      content:
          "I've just been diagnosed with triple negative breast cancer and it has completely floored me. I'm so lucky to have enjoyed excellent health up to now and always keep myself fit.",
      created_at: "24h ago",
      views: 325,
      votes: 545,
      repliesCount: 120,
      replies: replies),
];
