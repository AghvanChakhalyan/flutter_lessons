import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
 List<Map<String, dynamic>> companyNameData = [
    {
      "image": "assets/nike.png",
      "company_name": "Nike",
    
    },
    {
      "image": "assets/pinderest.png",
      
      "company_name": "Pinterest",
    
    },
    {
      "image": "assets/sepora.png",
      "company_name": "Sephora",
      
    },
    {
      "image": "assets/paypal.jpg",
      "company_name": "PayPal",
      
    },
    {
      "image": "assets/fantango.jpg",
      "company_name": "Fandango",
      
    }
  ];

  List<Map<String, dynamic>> userFirendsData = [
    {
      "avatar_image": "assets/fantango.jpg",
      "user_name": "Fandango",
      "user_automated_tex": "Automated Messages",
      "user_text": " Inetanly get thowitimes, guasrantee ...",
    },
    {
      "avatar_image": "assets/wsj.jpg",
      "user_name": "Wall Street Joumal",
      "user_automated_tex": "Automated Messages",
      "user_text": " Inetanly get thowitimes, guasrantee ...",
     },
    {
      "avatar_image": "assets/apple_music.jpg",
      "user_name": "Apple Music",
      "user_automated_tex": "Automated Messages",
      "user_text": " Inetanly get thowitimes, guasrantee ...",
    },
    {
      "avatar_image": "assets/paypal.jpg",
      "user_name": "Paypal",
      "user_automated_tex": "Automated Messages",
      "user_text": " Inetanly get thowitimes, guasrantee ...",
    },
    {
      "avatar_image": "assets/nike.png",
      "user_name": "Nike ",
      "user_automated_tex": "Automated Messages",
      "user_text": " Inetanly get thowitimes, guasrantee ...",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

_appBar(){
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,   
           ),
     child: Row(
       children: [
         Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                "assets/avatar1.jpg",
                width: 45,
                height: 45,
              ),
            ),
            Text(
              "Discover",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
       ]
     ),
    ),
  );
}

 _body(){
   return Container(
     height: MediaQuery.of(context).size.height,
     color: Colors.white,
     child: SingleChildScrollView(
       child: Column(
          children: [
           Container(
             margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
             child: ClipRRect(
               borderRadius: BorderRadius.circular(30),
               child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: InputBorder.none,
                    prefixIcon: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    hintText: "Search",
                  ),
               ),
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Container(
                 width: 150,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   color: Colors.grey.shade300,
                 ),
                 child: Center(
                   child: Text(
                     "BUSINESSES",
                     style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.w700,
                       color: Colors.black,
                       ),
                     ),
                 ),
               ),
               Container(
                 child: Text("GAMES"),
               ),
              
             ],
           ),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Recently Used",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "SEE ALL",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      ),
                  ),
                ],
               ),
            _companyNameWidget(),
             Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Featured",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "SEE ALL",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      ),
                  ),
                ],
               ),
            _userFriendList(),
         ],
       ),
     ),
   );
 }
 Widget _companyNameWidget(){
   return Container(
     width: MediaQuery.of(context).size.width,
     height: 150,
     child: ListView.builder(
       padding: EdgeInsets.zero,
       scrollDirection: Axis.horizontal,
       itemCount: companyNameData.length, 
       itemBuilder: (context, index){
         return _companyName(companyNameData[index], index: index);
       }
       ),
   );
 }
 Widget _companyName(Map<String, dynamic> companyData, {int index}){
   return Container(
     width: 90,
  padding: EdgeInsets.all(1),
  margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 10),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    //  color: Colors.yellow,
      ),
     
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(companyData['image']),
        ),
           
         ),
        ),
        Text(
          companyData['company_name'],
          maxLines: 2,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
   );
 }

 Widget _userFriendList(){
  //  List<Widget> friendItemsWidgets = [];

    return Column(
      children: userFirendsData.map<Widget>((friendData) => _friendItem(friendData)).toList(),
    );
 }

  Widget _friendItem(Map<String, dynamic> friendData) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 55,
            height: 52,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(
                          friendData['avatar_image'],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
               ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                friendData['user_name'],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.yellow,
                    ),
                    margin: EdgeInsets.all(3),
                   child: Center(
                     child: Icon(
                       Icons.explore,
                       size: 15,
                     ),
                   ),
                  ),
                  Text(
                    friendData['user_automated_tex'],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                   ),
                  ),
                ],
              ),
               Text(
                  friendData['user_text'],
                   style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              
            ],
          ),
          
        ],
      ),
    );
  }

}