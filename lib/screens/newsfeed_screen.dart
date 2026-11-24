import 'package:flutter/material.dart';
import 'package:bituon_mobprog/widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Steve Rogers',
          postContent: 'I can do this all day! #AvengersAssemble',
          date: '2 hours ago',
          numOfLikes: 10,
          hasImage: false,
        ),

        NewsFeedCard(
          userName: 'Tony Stark',
          postContent:
              'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
          date: 'December 1, 2023',
          numOfLikes: 3000,
          hasImage: true,
        ),

        NewsFeedCard(
          userName: 'Peter Parker',
          postContent:
              'Finished my Flutter laboratory activity today.',
          date: '1 day ago',
          numOfLikes: 550,
          hasImage: false,
        ),

        NewsFeedCard(
          userName: 'Thor',
          postContent: 'Bring me Thanos!',
          date: '3 days ago',
          numOfLikes: 1200,
          hasImage: true,
        ),

        NewsFeedCard(
          userName: 'Bruce Banner',
          postContent: 'Sometimes angry, always green.',
          date: '4 days ago',
          numOfLikes: 850,
          hasImage: false,
        ),

        NewsFeedCard(
          userName: 'Natasha Romanoff',
          postContent: 'Mission accomplished successfully.',
          date: '5 days ago',
          numOfLikes: 920,
          hasImage: true,
        ),

        NewsFeedCard(
          userName: 'Clint Barton',
          postContent: 'Never miss the target.',
          date: '1 week ago',
          numOfLikes: 400,
          hasImage: false,
        ),

        NewsFeedCard(
          userName: 'Doctor Strange',
          postContent:
              'Protecting reality one timeline at a time.',
          date: '1 week ago',
          numOfLikes: 1450,
          hasImage: true,
        ),

        NewsFeedCard(
          userName: 'Wanda Maximoff',
          postContent: 'Chaos magic is beautiful.',
          date: '2 weeks ago',
          numOfLikes: 1750,
          hasImage: true,
        ),

        NewsFeedCard(
          userName: 'Black Panther',
          postContent: 'Wakanda Forever!',
          date: '3 weeks ago',
          numOfLikes: 2200,
          hasImage: true,
        ),
      ],
    );
  }
}