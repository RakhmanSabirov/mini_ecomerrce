import 'package:flutter/material.dart';
import 'package:somewidgets/consts/AppImages.dart';
import '../home_page/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(AppImages.nikeLogo,height: 240),
            ),
            const SizedBox(height: 50,),
            const Text("Just Do It",style: TextStyle(
              fontSize: 18,color: Colors.black,
            ),),
            const SizedBox(height: 30,),
            const Text("Brand new Sneakers and custom kicks made with premium quality.",style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage())),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[900],
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(child: Text("Shop Now",style: TextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
