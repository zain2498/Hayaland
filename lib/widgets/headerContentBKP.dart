import 'package:flutter/material.dart';

class headerContent extends StatelessWidget {
 const headerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset("assets/images/brandmark-design.png",
                        width: 200,),
                        const Spacer(
                  
                        ),
                        TextButton(onPressed: (){}, 
                        child: const Text("Corporate Sites",
                        style: TextStyle(
                          color: Colors.black,
                        ))
                        ),
                        TextButton(onPressed: (){}, 
                        child: const Text("Corporate Customers",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                        ),
                        IconButton(onPressed: (){},
                         icon: const Icon(Icons.search)
                         )
                  
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child : Row(
                    
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                    children: [
                        buildTextField("Home"),
                        buildTextField("Shop"),
                        buildTextField("Outlet"),
                        buildTextField("Guide"),
                        buildTextField("FAQ"),
                        buildTextField("Inquiry"),
                        IconButton(
                          onPressed: (){},
                         icon: const Icon(Icons.shopping_basket, color: Colors.white,)
                         )
                    ],
                  )
                  ),
                ],
                
              ),
            ),
            const Expanded(
              child: SizedBox(),
              )
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String fieldName)
  {
      return Container(
        color: Colors.black,
        child: Container(
          child:Text(
          fieldName,
          style: const TextStyle(
            color: Colors.white
          ),
        ) 
 
        )
      );
  }
}