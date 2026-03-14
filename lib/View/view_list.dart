import 'package:flutter/material.dart';
import 'package:guidedlayout2_2338/data/people.dart';

class ListNamaView extends StatelessWidget {
  const ListNamaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Nama"),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (contraints.maxWidth > 600) {
          // layer lebar
          return const WideLayout();
        }else{
          // layar horizontal
          return const NarrowLayout();
        }
      }),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return PeopleList(
      onPersonTap: (person) => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(),
          body: PersonDetail(person),
        ),
      ),),
    );
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({super.key});

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  Person? _person;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: PeopleList(
              onPersonTap: (person) => setState() => _person = person),
            ),
          ),
        Expanded(
          flex: 3,
          child: _person == null ? const Placeholder() : PersonDetail(_person!),
        ),
      ],
    );
  }
}

class PersonDetail extends StatelessWidget {
  final Person person;
  const PersonDetail(this.person, {super.key}); // masalah penyusunan

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ignore: avoid_types_as_parameter_names
      builder: (buildContext, boxConstrains) {
        return Center(
          child: boxConstrains.maxHeight > 200 ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                // ignore: avoid_print
                onHover: (_) => {print("Hello world")},
                child: Text(person.name),
              ),
              Text(person.phone),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Contact Me"),
              ),
            ],
          ) : 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MouseRegion(
                // ignore: avoid_print
                onHover: (_) => {print("Hello World")},
                child: Text(person.name),
              ),
              Text(person.phone),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Contact Me"),
              ),
            ],
          ),
        );
      }
    );
  }
}