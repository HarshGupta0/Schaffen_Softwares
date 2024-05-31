import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool showSearch = false;
  bool isMute = false;

  void _toggleSearch() {
    setState(() {
      showSearch = !showSearch;
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.person_add),
                title: const Text('Invite'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.group_add),
                title: const Text('Add member'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text('Add Group'),
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 350.0,
              floating: false,
              pinned: true,
              backgroundColor: const Color(0xffC32422),
              leading: const BackButton(color: Colors.white),
              actions: [
                InkWell(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  var top = constraints.biggest.height;
                  return FlexibleSpaceBar(
                    title: top <= 80.0
                        ? Container(
                      child: Row(
                        children: [
                          Container(
                            margin:EdgeInsets.only(top: 5),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/image 121.png',),
                              radius: 20,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The Weeknd',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Community 100k+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                        : null,
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'images/image 121.png',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 70.0,
                            color: Color(0xffC32422),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'The Weeknd',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              letterSpacing: 2 * .8,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Community 100k+',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                wordSpacing: 2),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.0,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(right: 30),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          _showBottomSheet(context);
                                        },
                                        icon: const Icon(
                                          Icons.share_rounded,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            if (showSearch)
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search member',
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: _toggleSearch,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: !showSearch,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame...Read more',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              const SizedBox(height: 16.0),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    for (int i = 0; i < 6; i++)
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 6),
                                        child: OutlinedButton(
                                          onPressed: () {},
                                          child: Text('Outdoor'),
                                          style: OutlinedButton.styleFrom(
                                            primary: Color(0xffC32422),
                                            side: BorderSide(color: Color(0xffC32422)),
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Media, docs and links',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 16.0),
                              Container(
                                height: 120.0,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Image.asset('images/image 121.png'),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              ListTile(
                                title: const Text('Mute notification'),
                                trailing: Switch(
                                  value: isMute,
                                  onChanged: (bool value) {
                                    setState(() {
                                      isMute = !isMute;
                                    });
                                  },
                                ),
                              ),
                              CustomListTile(
                                  CupertinoIcons.delete, "Clear chat",
                                  Colors.black, Colors.black, onTap: () {}),
                              CustomListTile(CupertinoIcons.lock, "Encryption",
                                  Colors.black, Colors.black, onTap: () {}),
                              CustomListTile(
                                  Icons.exit_to_app, "Exit community",
                                  Colors.red, Colors.red, onTap: () {}),
                              CustomListTile(
                                  Icons.thumb_down_alt_outlined, "Report",
                                  Colors.red, Colors.red, onTap: () {}),
                              const SizedBox(height: 16.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Members',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                    onPressed: _toggleSearch,
                                    icon: const Icon(
                                      CupertinoIcons.search,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const CircleAvatar(
                                backgroundImage: AssetImage('images/image 121.png'),
                              ),
                              title: Text('Yashika, 29, India'),
                              trailing: index == 0
                                  ? ElevatedButton(
                                onPressed: () {},
                                child: Text('Following'),
                              )
                                  : ElevatedButton(
                                onPressed: () {},
                                child: Text('Add'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomListTile(IconData icon, String text, Color iconColor, Color textColor, {required VoidCallback onTap}) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: InkWell(
        onTap: onTap,
        highlightColor: Colors.transparent,
        child: ListTile(
          leading: Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
          title: Text(
            text,
            style: TextStyle(fontSize: 16, color: textColor),
          ),
        ),
      ),
    );
  }
}
