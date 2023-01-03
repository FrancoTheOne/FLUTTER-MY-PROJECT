import 'package:flutter/material.dart';
import 'package:my_poly_auction/data/repository/auction_repository.dart';
import 'package:my_poly_auction/data/repository/user_repository.dart';
import 'package:my_poly_auction/service/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userRepository = getIt.get<UserRepository>();

  final auctionRepository = getIt.get<AuctionRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: auctionRepository.getAuctionListRepository(),
        builder: (context, snapshot) {
          return Container();
        },
      ),
      // body: FutureBuilder<List<UserModel>>(
      //   future: userRepository.getUsersRequested(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(child: CircularProgressIndicator());
      //     } else if (snapshot.hasError) {
      //       final error = snapshot.error;
      //       return Center(
      //         child: Text(
      //           "Error: $error",
      //         ),
      //       );
      //     } else if (snapshot.hasData) {
      //       if (snapshot.data!.isEmpty) {
      //         return const Center(
      //           child: Text('No data'),
      //         );
      //       }
      //       return ListView.builder(
      //         itemCount: snapshot.data?.length,
      //         itemBuilder: (context, index) {
      //           final user = snapshot.data![index];
      //           return ListTile(
      //             leading: user.avatar != null
      //                 ? ClipRRect(
      //                     borderRadius: BorderRadius.circular(50),
      //                     child: Image.network(
      //                       user.avatar!,
      //                       width: 50,
      //                       height: 50,
      //                     ),
      //                   )
      //                 : null,
      //             title: Text(user.email ?? ''),
      //             subtitle: Text(user.firstName ?? ''),
      //           );
      //         },
      //       );
      //     }
      //     return Container();
      //   },
      // ),
    );
  }
}
