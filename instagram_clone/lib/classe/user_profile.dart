
class UserProfile {
 String userName;
 int follower;
 int followin;
 int publication;
 //String userEmail;
  
  UserProfile(String userName,int followin,int follower,int publication){
    this.userName=userName;
    this.follower=follower;
    this.followin=followin;
    this.publication=publication;
//    this.userEmail=userEmail;
  }
}