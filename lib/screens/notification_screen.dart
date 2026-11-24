import 'package:flutter/material.dart';
import 'package:bituon_mobprog/widgets/notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NotificationWidget(
          name: 'Tony Stark',
          post: 'New Suit',
          description: 'Created a new Iron Man armor.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Steve Rogers',
          post: 'Team Update',
          description: 'Avengers meeting tomorrow.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Peter Parker',
          post: 'School Project',
          description: 'Finished Flutter laboratory activity.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Thor',
          post: 'Asgard News',
          description: 'Returning from a mission.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Bruce Banner',
          post: 'Research',
          description: 'Published a new study.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Natasha Romanoff',
          post: 'Mission',
          description: 'Mission completed successfully.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Clint Barton',
          post: 'Training',
          description: 'Archery session completed.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Doctor Strange',
          post: 'Multiverse',
          description: 'Monitoring timeline activity.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Wanda Maximoff',
          post: 'Magic',
          description: 'Practicing chaos magic.',
        ),

        Divider(),

        NotificationWidget(
          name: 'Black Panther',
          post: 'Wakanda',
          description: 'National update released.',
        ),
      ],
    );
  }
}