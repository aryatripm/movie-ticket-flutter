import 'package:card_swiper/card_swiper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket/services/movie_service.dart';
import 'package:movie_ticket/services/user_services.dart';
import 'package:movie_ticket/widgets/movie_item.dart';
import 'package:movie_ticket/widgets/movie_item_2.dart';
import 'package:movie_ticket/entity/user.dart' as MyUser;

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: FutureBuilder(
                    future: MovieService().getListMovieNowShowing(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return MovieItem(movie: snapshot.data![index]);
                          },
                          itemCount: snapshot.data?.length ?? 0,
                          viewportFraction: 1,
                          scale: 0.8,
                          autoplay: true,
                          autoplayDelay: 3000,
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StreamBuilder(
                        stream: UserService()
                            .getUser(FirebaseAuth.instance.currentUser!.uid),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            MyUser.User user = MyUser.User.fromJson(
                                snapshot.data!.data() as Map<String, dynamic>);
                            return CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://avatars.dicebear.com/api/initials/${user.name}.png"),
                              backgroundColor: Colors.white,
                            );
                          } else {
                            return const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://avatars.dicebear.com/api/initials/a.png"),
                              backgroundColor: Colors.white,
                            );
                          }
                        },
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5),
                          Text("Bandung"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text(
              "Coming Soon",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 200,
            child: FutureBuilder(
              future: MovieService().getListMovieTrendingComingSoon(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return MovieItem2(movie: snapshot.data![index]);
                    },
                    itemCount: snapshot.data?.length ?? 0,
                    viewportFraction: 0.8,
                    indicatorLayout: PageIndicatorLayout.COLOR,
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
