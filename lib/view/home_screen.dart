import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/top_news.dart';
import 'package:news_app/view_model/news_view_moodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NewsViewModel newsViewModel = NewsViewModel();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'images/category_icon.png',
            height: 30,
            width: 30,
          ),
        ),
        title: Center(
          child: Text(
            'News',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.55,
            width: width,
            child: FutureBuilder<TopNewsModels>(
              future: newsViewModel.fetchTopNewsApi(),
              builder: (BuildContext context, AsyncSnapshot<TopNewsModels> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: SpinKitCircle(
                      color: Colors.blue,
                      size: 50,
                    ),
                  );
                } else if (snapshot.hasData &&
                    snapshot.data!.articles != null &&
                    snapshot.data!.articles!.length > 2) {
                  final newsData = snapshot.data!;
                  final article = newsData.articles![2];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Top Headline:',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          article.title ?? 'No title',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: Text('No data found.'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
