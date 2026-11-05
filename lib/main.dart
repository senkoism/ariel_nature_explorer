import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(), debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nature Explorer'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children:[
                _GalleryImage('https://picsum.photos/id/10/200/300'),
              ],
            ),
            ),
            SizedBox(height: 24,),
            Text(
              'A Peacefull Natural Escape',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24,),
            Text(
              'Discover, Explore, Reconnect',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 24,),
            Text('Discover the beauty of nature through breathtaking landscape, peaceful, forest, and stunning mountain views. Explore remarkable destinations, enjoy, the fresh air and reconnect with the natural world. From quiet lakes to scenic trails, every journey offers a new experience. Let nature inspure your next advanture'),
            SizedBox(height: 24,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children:[
                _buildGalleryImage('https://picsum.photos/id/10/300/200'),
                const SizedBox(width: 10,),
                _buildGalleryImage('https://picsum.photos/id/29/300/200'),
                const SizedBox(width: 10,),
                _buildGalleryImage('https://picsum.photos/id/37/300/200'),
              ],
            ),
            ),
            
          ],
          
          ),
        ),
      
      ),
    );
  }
  Widget _buildGalleryImage(String url){
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        url,
        height: 300,
        width: 150,
        fit: BoxFit.cover,
      ),
    );
  }
  Widget _GalleryImage(String url){
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        url,
        height: 250,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

