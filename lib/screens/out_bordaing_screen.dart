import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_app/widgets/OutBordingWidget.dart';
class OutBordaingScreen extends StatefulWidget {
  const OutBordaingScreen({Key? key}) : super(key: key);

  @override
  _OutBordaingScreenState createState() => _OutBordaingScreenState();
}

class _OutBordaingScreenState extends State<OutBordaingScreen> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Visibility(
              visible: _currentPage!=2,
              replacement: TextButton(onPressed: (){},child: Text('START'),),
              child: TextButton(onPressed: (){
                _pageController.animateToPage(2, duration: Duration(seconds: 2), curve: Curves.easeInBack);
              }, child: Padding(
                padding: const EdgeInsets.all(15.8),
                child: Text('SKIP'),
              )),
            ),
          )
          ,Expanded(
            child: PageView(
             controller: _pageController,
              onPageChanged: (int page){
                setState(() {
                  _currentPage = page;
                });
              },
              scrollDirection: Axis.horizontal,
              children: const [
                  OutBordingWidget(image: 'images/imageStore.jpg', title: 'Welcom In Online Store!', subTitle: 'These example sentences are selected automatically'
                      ' from various online news sources to reflect current usage of the word '),
                OutBordingWidget(image: 'images/Online.jpg', title: 'Hello World!', subTitle: 'These example sentences are selected automatically'
                    ' from various online news sources to reflect current usage of the word '),
                OutBordingWidget(image: 'images/storeDesign.jpg', title: 'Start Now !', subTitle: 'These example sentences are selected automatically'
                    ' from various online news sources to reflect current usage of the word '),
              ],

            ),
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabPageSelectorIndicator(backgroundColor:_currentPage==0? Colors.blue:Colors.grey, borderColor: Colors.blue, size: 12),
              TabPageSelectorIndicator(backgroundColor: _currentPage==1? Colors.blue:Colors.grey, borderColor: Colors.blue, size: 12),
              TabPageSelectorIndicator(backgroundColor:_currentPage==2? Colors.blue:Colors.grey, borderColor: Colors.blue, size: 12)
            ],
          )
          ,SizedBox(height: 30,)
        ],
      ),
    );
  }
}


