import 'package:flutter/material.dart';
import 'package:mahalle_manavim_ui/controller/phonecaller.dart';
import 'package:mahalle_manavim_ui/detailscreens/acibiber.dart';
import 'package:mahalle_manavim_ui/detailscreens/ananas.dart';
import 'package:mahalle_manavim_ui/detailscreens/cilek.dart';
import 'package:mahalle_manavim_ui/detailscreens/domates.dart';
import 'package:mahalle_manavim_ui/detailscreens/elma.dart';
import 'package:mahalle_manavim_ui/detailscreens/kiraz.dart';
import 'package:mahalle_manavim_ui/detailscreens/mandalina.dart';
import 'package:mahalle_manavim_ui/detailscreens/muz.dart';
import 'package:mahalle_manavim_ui/main.dart';
import 'package:mahalle_manavim_ui/otherpages/about.dart';
import 'package:mahalle_manavim_ui/otherpages/profile.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}
enum LegendShape { Circle, Rectangle }

class _HomePageWidgetState extends State<HomePageWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  ChartType _chartType = ChartType.disc;
  bool _showCenterText = true;
  double _ringStrokeWidth = 32;
  double _chartLegendSpacing = 32;

  bool _showLegendsInRow = false;
  bool _showLegends = true;

  bool _showChartValueBackground = true;
  bool _showChartValues = true;
  bool _showChartValuesInPercentage = false;
  bool _showChartValuesOutside = false;

  LegendShape _legendShape = LegendShape.Circle;
  LegendPosition _legendPosition = LegendPosition.right;

  int key = 0;






    @override
    Widget build(BuildContext context) {
      final chart = PieChart(
        key: ValueKey(key),
        dataMap: dataMap,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: _chartLegendSpacing,
        chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
            ? 300
            : MediaQuery.of(context).size.width / 3.2,
        colorList: colorList,
        initialAngleInDegree: 0,
        chartType: _chartType,
        centerText: _showCenterText ? "HYBRID" : null,
        legendOptions: LegendOptions(
          showLegendsInRow: _showLegendsInRow,
          legendPosition: _legendPosition,
          showLegends: _showLegends,
          legendShape: _legendShape == LegendShape.Circle
              ? BoxShape.circle
              : BoxShape.rectangle,
          legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValueBackground: _showChartValueBackground,
          showChartValues: _showChartValues,
          showChartValuesInPercentage: _showChartValuesInPercentage,
          showChartValuesOutside: _showChartValuesOutside,
        ),
        ringStrokeWidth: _ringStrokeWidth,
        emptyColor: Colors.grey,
      );
      return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xFFD85224),
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: true,
          title: Text(
            'Mahalle Manavım',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Lora',
              color: Color(0xFFFDFBFB),
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 10,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Pcall()));
          },
          child: const Icon(
            Icons.phone,
            size: 30,
          ),
          backgroundColor: Color(0xFF39E034),
          elevation: 10,
        ),
        drawer: Drawer(
          elevation: 16,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xFFD85224)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/nano.jpg"),
                  backgroundColor: Color(0xFFDCC2B8),
                ),
                accountName: Text("Ali ÖZTEN"),
                accountEmail: Text("aliozten92@gmail.com"),
              ),
              ListTile(
                title: Text(
                  "Ana Sayfa",
                  style: TextStyle(
                    fontFamily: 'Lora',
                    color: Color(0xFF026134),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                leading: Icon(Icons.home, color: Colors.green),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  "Profil",
                  style: TextStyle(
                    fontFamily: 'Lora',
                    color: Color(0xFF026134),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                leading: Icon(Icons.person, color: Colors.green),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
              ListTile(
                title: Text(
                  "Hakkında",
                  style: TextStyle(
                    fontFamily: 'Lora',
                    color: Color(0xFF026134),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                leading: Icon(Icons.info_outline, color: Colors.green),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                title: Text(
                  "Cikis Yap",
                  style: TextStyle(
                    fontFamily: 'Lora',
                    color: Color(0xFF026134),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                leading: Icon(Icons.remove_circle, color: Colors.green),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              children: [
                TabBar(
                  labelColor: Color(0xFFDA5D32),
                  unselectedLabelColor: Color(0xFF1F7817),
                  indicatorColor: Color(0xFF242222),
                  tabs: [
                    Tab(
                      text: 'Ana Sayfa ',
                      icon: Icon(
                        Icons.home,
                      ),
                    ),
                    Tab(
                      text: 'Ürünler',
                      icon: Icon(
                        Icons.storefront,
                      ),
                    ),
                    Tab(
                      text: 'Sepetim',
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                    ),
                    Tab(
                      text: 'Beğeni',
                      icon: Icon(
                        Icons.favorite_border,
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 340),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 500,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: PageView(
                                    controller: pageViewController,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1460400355256-e87506dcec4f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
                                        width: 100,
                                        height: 800,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.network(
                                        'https://images.unsplash.com/photo-1421494756418-72f0f89c6bfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1800&q=80',
                                        width: 100,
                                        height: 800,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.network(
                                        'https://images.unsplash.com/photo-1482012792084-a0c3725f289f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
                                        width: 100,
                                        height: 800,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.network(
                                        'https://images.unsplash.com/photo-1501777814630-33bc4a3c3ee7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80',
                                        width: 100,
                                        height: 800,
                                        fit: BoxFit.cover,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                         /* child: LayoutBuilder(
                        builder: (_, constraints) {
                          if (constraints.maxWidth >= 600) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: chart,
                                ),
                                Flexible(
                                  flex: 1,

                                )
                              ],
                            );
                          } else {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    child: chart,
                                    margin: EdgeInsets.symmetric(
                                      vertical: 32,
                                    ),
                                  ),

                                ],
                              ),
                            );
                          }
                        },
                      ),

                          */
                          child: CustomScrollView(
                            primary: false,
                            slivers: <Widget>[
                              SliverPadding(
                                padding: const EdgeInsets.all(20),
                                sliver: SliverGrid.count(
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 2,
                                  children: <Widget>[
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Elma()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/elma.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Cilek()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/cilek.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Kiraz()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/kiraz.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Acibiber()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/acibiber.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Mandalina()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/mandalina.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Ananas()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/ananas.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Domates()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/domates.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Muz()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/muz.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Container(),
                      Container(
                         child: SingleChildScrollView(
                            child: Card(
                              margin: EdgeInsets.all(12),
                              child: Column(
                                children: [


                                  SwitchListTile(
                                    value: _showCenterText,
                                    title: Text("showCenterText"),
                                    onChanged: (val) {
                                      setState(() {
                                        _showCenterText = val;
                                      });
                                    },
                                  ),
                                  ListTile(
                                    title: Text("chartLegendSpacing"),
                                    trailing: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                      child: DropdownButton<double>(
                                        value: _chartLegendSpacing,
                                        disabledHint: Text("select chartType.ring"),
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("16"),
                                            value: 16,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("32"),
                                            value: 32,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("48"),
                                            value: 48,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("64"),
                                            value: 64,
                                          ),
                                        ],
                                        onChanged: (val) {
                                          setState(() {
                                            _chartLegendSpacing = val;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Legend Options'.toUpperCase(),
                                      style: Theme.of(context).textTheme.overline.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SwitchListTile(
                                    value: _showLegendsInRow,
                                    title: Text("showLegendsInRow"),
                                    onChanged: (val) {
                                      setState(() {
                                        _showLegendsInRow = val;
                                      });
                                    },
                                  ),
                                  SwitchListTile(
                                    value: _showLegends,
                                    title: Text("showLegends"),
                                    onChanged: (val) {
                                      setState(() {
                                        _showLegends = val;
                                      });
                                    },
                                  ),
                                  ListTile(
                                    title: Text("legendShape"),
                                    trailing: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                      child: DropdownButton<LegendShape>(
                                        value: _legendShape,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("BoxShape.circle"),
                                            value: LegendShape.Circle,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("BoxShape.rectangle"),
                                            value: LegendShape.Rectangle,
                                          ),
                                        ],
                                        onChanged: (val) {
                                          setState(() {
                                            _legendShape = val;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("legendPosition"),
                                    trailing: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                      child: DropdownButton<LegendPosition>(
                                        value: _legendPosition,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("left"),
                                            value: LegendPosition.left,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("right"),
                                            value: LegendPosition.right,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("top"),
                                            value: LegendPosition.top,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("bottom"),
                                            value: LegendPosition.bottom,
                                          ),
                                        ],
                                        onChanged: (val) {
                                          setState(() {
                                            _legendPosition = val;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Chart values Options'.toUpperCase(),
                                      style: Theme.of(context).textTheme.overline.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SwitchListTile(
                                    value: _showChartValueBackground,
                                    title: Text("showChartValueBackground"),
                                    onChanged: (val) {
                                      setState(() {
                                        _showChartValueBackground = val;
                                      });
                                    },
                                  ),
                                  SwitchListTile(
                                    value: _showChartValues,
                                    title: Text("showChartValues"),
                                    onChanged: (val) {
                                      setState(() {
                                        _showChartValues = val;
                                      });
                                    },
                                  ),
                                  SwitchListTile(
                                    value: _showChartValuesInPercentage,
                                    title: Text("showChartValuesInPercentage"),
                                    onChanged: (val) {
                                      setState(() {
                                        _showChartValuesInPercentage = val;
                                      });
                                    },
                                  ),
                                  SwitchListTile(
                                    value: _showChartValuesOutside,
                                    title: Text("showChartValuesOutside"),
                                    onChanged: (val) {
                                      setState(() {
                                        _showChartValuesOutside = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
