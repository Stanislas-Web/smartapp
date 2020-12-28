import 'package:Smartdrc/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/stanis.jpg',
);

// USERS
final User luc = User(
  id: 1,
  name: 'Luc',
  imageUrl: 'assets/images/photo2.jpg',
);
final User belinda = User(
  id: 2,
  name: 'Belinda',
  imageUrl: 'assets/images/photo1.png',
);
final User rico = User(
  id: 3,
  name: 'Rico',
  imageUrl: 'assets/images/rico.png',
);
final User kenny = User(
  id: 4,
  name: 'Kenny',
  imageUrl: 'assets/images/photo6.jpg',
);
final User landry = User(
  id: 5,
  name: 'Landry',
  imageUrl: 'assets/images/landry.jpg',
);
final User aline = User(
  id: 6,
  name: 'Aline',
  imageUrl: 'assets/images/photo5.jpg',
);
final User leslie = User(
  id: 7,
  name: 'Leslie',
  imageUrl: 'assets/images/photo7.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [landry, belinda, kenny, aline, rico, leslie];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: landry,
    time: '5:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: belinda,
    time: '4:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: kenny,
    time: '3:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: aline,
    time: '2:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: leslie,
    time: '1:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: rico,
    time: '11:30 AM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: rico,
    time: '5:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text:
        'Je viens de vendre mon chien. il était super mignon. Le meilleur chiot !!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: landry,
    time: '3:45 PM',
    text: 'Comment va le doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: landry,
    time: '3:15 PM',
    text: 'Toute la nourriture',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Agréable! Quel genre de nourriture as-tu mangé?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: leslie,
    time: '2:00 PM',
    text: 'J\'ai mangé tellement de nourriture aujourd\'hui.',
    isLiked: false,
    unread: true,
  ),
];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> onLigne = [
  Message(
    sender: rico,
    time: '11:30 AM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: aline,
    time: '2:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: belinda,
    time: '4:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: kenny,
    time: '3:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: aline,
    time: '2:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: leslie,
    time: '1:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: landry,
    time: '12:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: landry,
    time: '5:30 PM',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
];

List<Message> call = [
  Message(
    sender: aline,
    time: 'il y\'a 10 munites',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: rico,
    time: 'il y\'a 1 munite',
    text: 'il y\'a 1 munite',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: belinda,
    time: 'il y\'a 2 jours',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: kenny,
    time: 'il y\'a 10 munites',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: leslie,
    time: 'il y\'a 10 munites',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: landry,
    time: 'il y\'a 10 munites',
    text: 'Salut comment ça va? Qu\'as-tu fait aujourd\'hui?',
    isLiked: false,
    unread: true,
  ),
];
