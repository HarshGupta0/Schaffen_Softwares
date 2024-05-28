import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool _showSearch = false;

  void _toggleSearch() {
    setState(() {
      _showSearch = !_showSearch;
    });
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
              backgroundColor: Color(0xffC32422),
              leading: BackButton(color: Colors.white),
              actions: [
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: _toggleSearch,
                ),
              ],
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  var top = constraints.biggest.height;
                  return FlexibleSpaceBar(
                    title: top <= 80.0
                        ? Column(
                      mainAxisSize: MainAxisSize.min,
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
                            fontSize: 14,
                          ),
                        ),
                      ],
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
                            child: Column(
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
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
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
            if (_showSearch)
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search member',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.cancel),
                            onPressed: _toggleSearch,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/avatar.png'),
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
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame...Read more',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 16.0),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 4.0,
                          children: List.generate(6, (index) {
                            return Chip(
                              label: Text('Outdoor'),
                            );
                          }),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Media, docs and links',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16.0),
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
                        SizedBox(height: 16.0),
                        ListTile(
                          title: Text('Mute notification'),
                          trailing: Switch(value: false, onChanged: (bool value) {}),
                        ),
                        ListTile(
                          title: Text('Clear chat'),
                        ),
                        ListTile(
                          title: Text('Encryption'),
                        ),
                        ListTile(
                          title: Text('Exit community'),
                          trailing: Icon(Icons.exit_to_app),
                        ),
                        ListTile(
                          title: Text('Report'),
                          trailing: Icon(Icons.report),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Members',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('images/avatar.png'),
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
        bottomSheet: _showSearch
            ? BottomSheet(
          onClosing: () {},
          builder: (BuildContext context) {
            return Container(
              color: Colors.white,
              child: Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.person_add),
                    title: Text('Invite'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.group_add),
                    title: Text('Add member'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.group),
                    title: Text('Add Group'),
                    onTap: () {},
                  ),
                ],
              ),
            );
          },
        )
            : null,
      ),
    );
  }
}
