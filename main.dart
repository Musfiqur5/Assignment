



import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      backgroundColor: Colors.greenAccent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6))
      )
    );

    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text("HUMMING\nBIRD .",
          style: TextStyle(
              fontWeight: FontWeight.bold,
          ),
        ),
        )
      ),
      body: SingleChildScrollView(
    child:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
                padding: EdgeInsets.all(10),
              child: Text("FLUTTER WEB.\nTHE BASICS",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(10),
              child: Text("In this course we will go over the basics of using Flutter Web for development. "
                  "Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, "
                  "Modals and more.",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed:(){},
                    style: buttonStyle,
                      child: const Text("Join course",
                        style: TextStyle(color: Colors.white),
                      ),
                  ),
            ),
          ],
        ),
      ),
      ),
      drawer: Drawer(
              child: ListView(
                children: const [
                  DrawerHeader(
                    padding: EdgeInsets.all(0),
                      child: UserAccountsDrawerHeader(
                          accountName: Text("SKILL UP NOW",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                          ),
                          accountEmail: Text("TAP HERE",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          decoration: BoxDecoration(color: Colors.greenAccent),
                      )
                  ),
                  ListTile(
                    title: Text("Episodes"),
                    leading: Icon(Icons.ondemand_video),
                  ),
                  ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.messenger),
                  )
                ],
              ),
      ),

    );
  }
}
