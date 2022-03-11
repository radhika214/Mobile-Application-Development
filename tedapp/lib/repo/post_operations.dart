import 'package:tedapp/model/post.dart';

class PostOperations{
   static PostOperations _postOperations = PostOperations();
   _PostOperations(){}
   static PostOperations getInstance(){
     return _postOperations;
   }
     List<Post> getPosts(){
      return [
          Post(title: 'AAAA', author: 'BB', time: '10:10', imageURL: 'https://news.olemiss.edu/wp-content/uploads/2019/10/UCIMG-1027-2048x1150.jpg'),
           Post(title: 'AAAA', author: 'BB', time: '10:10', imageURL: 'https://www.incimages.com/uploaded_files/image/1920x1080/2015-10-03-Alejandro-Garcia-TEDx-UC-Irvine-2015-52_111941.jpg'),
            Post(title: 'AAAA', author: 'BB', time: '10:10', imageURL: 'https://pb-assets.tedcdn.com/system/baubles/files/000/000/554/original/TEDx_talks_1.jpg'),
             Post(title: 'AAAA', author: 'BB', time: '10:10', imageURL: 'https://news.olemiss.edu/wp-content/uploads/2019/10/UCIMG-1027-2048x1150.jpg'),
              Post(title: 'AAAA', author: 'BB', time: '10:10', imageURL: 'https://news.olemiss.edu/wp-content/uploads/2019/10/UCIMG-1027-2048x1150.jpg'),
               Post(title: 'AAAA', author: 'BB', time: '10:10', imageURL: 'https://www.incimages.com/uploaded_files/image/1920x1080/2015-10-03-Alejandro-Garcia-TEDx-UC-Irvine-2015-52_111941.jpg')
      ];
    }
}