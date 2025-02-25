import 'package:flutter/material.dart';

class FirstClass extends StatelessWidget {
  const FirstClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column( spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Logo_of_Ministry_of_Education_and_Culture_of_Republic_of_Indonesia.svg/2048px-Logo_of_Ministry_of_Education_and_Culture_of_Republic_of_Indonesia.svg.png")
                      )
                  ),
                )
              ],
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
              ),
              child: Center(
                child: Container(
                    height: 110,
                    width: 110,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'images/foto_latar_merah.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ),
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon( Icons.person,
                color: Colors.amber,),
                SizedBox(width: 8,),
                 Text("Biodata Saya",
                          style: TextStyle(
                            fontSize: 30 ),
                          ),
              ],
            ),
            Container(child: rowLabel("Nama :","Adikuasa Mangkualam"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.cyan,
              )),
            Container(child: rowLabel("Umur :","18"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.cyan,
              )),
            Container(child: rowLabel("Alamat :","Depok"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.cyan,
              )),
            Container(child: rowLabel("Kelas :","Mobile Programming"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.cyan,
              )),
            Container(child: rowLabel("Nomor Hp :","085609239872"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.cyan,
              )),
            Container(child: rowLabel("Pekerjaan :","Belum Ada"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.cyan,
              )),
            Container(child: rowLabel("Hobby :","Makan Nasi"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.cyan,
              )),         
          ],
        ),
      ),
    );
  }

  Row rowLabel(String title,String result) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                   Text(title,
                 style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                 )),
                ],
              ),
              Column(
                children: [
                    Text(result,style: TextStyle(
                    fontSize: 23,
                    fontStyle: FontStyle.italic)),
                ],
              )
            ],
          );
  }


}