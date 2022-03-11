import 'package:bookmyshow/model/post.dart';

// Singleton
class PostOperations{
   static  PostOperations _postOperations = PostOperations();
   _PostOperations(){}
   static PostOperations getInstance(){
     return _postOperations;
   }
     List<Post> getPosts(){
      return [
        Post(movieTitle: "Hindi Medium",tags: ["2D"],language: "Hindi", ageRestriction: "U", imageURL: 'https://upload.wikimedia.org/wikipedia/en/f/f4/Hindi_Medium_poster.jpg', percentage: 87, votes: 7809),
        Post(movieTitle: "Half Girlfriend",tags: ["2D","3D"],language: "Hindi", ageRestriction: "UA", imageURL: 'https://st1.bollywoodlife.com/wp-content/uploads/2017/04/Half-Girlfriend-1.jpg?impolicy=Medium_Resize&w=600&h=600', percentage: 69, votes: 13314),
        Post(movieTitle: "Gangubai Kathiawadi",tags: ["2D"],language: "Hindi", ageRestriction: "U", imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiUaICNSQMaMl-IOIBm2B_sncbje-AWZpW3Q&usqp=CAU', percentage: 87, votes: 7809),
        Post(movieTitle: "The Ironman",tags: ["2D"],language: "English", ageRestriction: "UA", imageURL: 'https://www.giantfreakinrobot.com/wp-content/uploads/2021/05/iron-man-flying.jpeg', percentage: 69, votes: 13314),
       
      
      ];
    }
    
}


