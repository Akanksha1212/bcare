import 'package:bcare/pages/forum/models/author_model.dart';

class Reply {
  Author author;
  String content;
  int likes;

  Reply({this.author, this.content, this.likes});
}

List<Reply> replies = [
  Reply(
      author: veni,
      content:
          ' I am sure you are still in shock as it can take a while to get used to. Chemo can be scary but I would look at it as a lifesaver, the cancer needs to go and if it takes some chemo then so be it.',
      likes: 10),
  Reply(
      author: samantha,
      content:
          'We have spoken before and I am sorry to hear your results but dont panic.',
      likes: 120),
  Reply(
      author: naomi,
      content:
          'I think you are right, chemo seems to be the route of choice for triple negative. I hope you get your results soon and know what is next.',
      likes: 67),
  Reply(
      author: lisa,
      content:
          'The further test will be on the mole tissue they initially removed. They will be doing a BRAF test on the tissue.  ',
      likes: 34),
  Reply(
      author: amelia,
      content:
          'Good luck and keep positive.  I will have my results next Friday.  ',
      likes: 89),
  Reply(
      author: lavanya,
      content:
          'In 2018 I was diagnosed with 23mm cancer, grade 3, her 2 and er positive,  I had three cancerous lymph nodes.  Stage 2B',
      likes: 12),
  Reply(author: lisa, content: 'Please take care ', likes: 27),
];
