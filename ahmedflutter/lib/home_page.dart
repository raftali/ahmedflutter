import 'package:flutter/material.dart';
import 'dua_model.dart';
import 'dua_page.dart';

class HomePage extends StatelessWidget {
  final List<Dua> duas = [
    Dua(
      title: 'دعاء السفر',
      content: 'الله أكبر، الله أكبر، الله أكبر، سبحان الذي سخّر لنا هذا وما كنّا له مقرنين، وإنا إلى ربّنا لمنقلبون. اللهم إنا نسألك في سفرنا هذا البر والتقوى، ومن العمل ما ترضى. اللهم هوّن علينا سفرنا هذا واطوِ عنّا بعده. اللهم أنت الصاحب في السفر، والخليفة في الأهل. اللهم إني أعوذ بك من وعثاء السفر، وكآبة المنظر، وسوء المنقلب في المال والأهل. ...',
    ),
    Dua(
      title: 'دعاء الضيق',
      content: 'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ ...',
    ),
    Dua(
      title: 'دعاء الاستخارة',
      content: 'اللهم إن كنت تعلم أن هذا الأمر (وتسمي حاجتك) خيرٌ لي في ديني ومعاشي وعاقبة أمري — أو قال: عاجل أمري وآجله — فاقْدره لي ويسره لي، ثم بارك لي فيه....',
    ),
    Dua(
      title: 'دعاء الحزن',
      content: '"اللهم إني عبدك، ابن عبدك، ابن أمتك، ناصيتي بيدك، ماضٍ فيَّ حكمك، عدلٌ فيَّ قضاؤك،',
    ),
    Dua(
      title: 'دعاء الدخول الى المسجد',
      content: 'بِسْمِ اللهِ، وَالصَّلَاةُ وَالسَّلَامُ عَلَى رَسُولِ اللهِ، اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ...',
    ),
    Dua(
      title: 'دعاء الخروج من المسجد',
      content: 'بِسْمِ اللهِ، وَالصَّلَاةُ وَالسَّلَامُ عَلَى رَسُولِ اللهِ، للَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('حصن المسلم'),




        backgroundColor: Colors.blueAccent,


      ),
      body: ListView.builder(
        itemCount: duas.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: double.infinity,
                  height: 80,
                  child:  TextButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    ) ,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DuaPage(dua: duas[index]),
                          ));
                    }, child: Text(duas[index].title),),
                )
              )
            ],
          );
        },
      ),
    );
  }
}
