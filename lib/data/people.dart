// 1. kelas person
class Person{
  final String name;
  final String phone;
  final String picture;
  const Person(this.name, this.phone, this.picture);
}

// 2. variabel list dengan nama people yang memiliki data bertipe object person, yang merupakan hasil mapping data list pada baris 14 kebawha
final List<Person> people =
  _people.map((e) => Person(e['name'] as String,e['phone'] as String,e['picture'] as String)).toList(growable: false);

final List<Map<String,Object>> _people =
[
  {
    "_id": "69b4d53f1066f3df883b1f48",
    "index": 0,
    "guid": "c37afc29-810b-49c5-bbfc-33b75e8d79e2",
    "isActive": true,
    "balance": "$1,669.77",
    "picture": "http://placehold.it/32x32",
    "age": 31,
    "eyeColor": "brown",
    "name": "Penny Harrison",
    "gender": "female",
    "company": "ZENTILITY",
    "email": "pennyharrison@zentility.com",
    "phone": "+1 (923) 473-3699",
    "address": "374 Luquer Street, Garnet, Pennsylvania, 7987",
    "about": "Id amet laboris quis laboris deserunt sit ut aliquip cupidatat fugiat velit. Eu commodo excepteur do occaecat Lorem pariatur excepteur in. Nulla deserunt tempor do voluptate voluptate. Magna reprehenderit deserunt pariatur sit fugiat officia laboris ex. Proident ipsum velit ad ullamco cupidatat laboris ad veniam sunt duis dolor. Mollit pariatur id pariatur mollit irure nulla quis qui ex reprehenderit consequat.\r\n",
    "registered": "2016-02-28T09:31:25 -07:00",
    "latitude": -29.40409,
    "longitude": -112.915721,
    "tags": [
      "sunt",
      "cupidatat",
      "non",
      "incididunt",
      "irure",
      "ex",
      "eu"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Claudia David"
      },
      {
        "id": 1,
        "name": "Gray Herrera"
      },
      {
        "id": 2,
        "name": "Peters Mullins"
      }
    ],
    "greeting": "Hello, Penny Harrison! You have 3 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "69b4d53fe0bba79bbeed2389",
    "index": 1,
    "guid": "2fb89f83-10a1-4ccf-9f96-4acc8948360d",
    "isActive": false,
    "balance": "$1,366.70",
    "picture": "http://placehold.it/32x32",
    "age": 22,
    "eyeColor": "brown",
    "name": "Wood Bryan",
    "gender": "male",
    "company": "ORBALIX",
    "email": "woodbryan@orbalix.com",
    "phone": "+1 (935) 483-3408",
    "address": "403 Truxton Street, Como, Rhode Island, 2983",
    "about": "Enim ipsum ullamco magna nostrud nulla consectetur cupidatat do tempor. Qui cillum velit laborum ullamco incididunt incididunt occaecat anim. Laboris commodo nostrud et et mollit aliqua exercitation pariatur voluptate. Duis reprehenderit labore officia excepteur exercitation magna exercitation qui mollit Lorem minim proident.\r\n",
    "registered": "2015-07-22T12:42:11 -07:00",
    "latitude": 31.957542,
    "longitude": 3.25196,
    "tags": [
      "sint",
      "id",
      "magna",
      "sunt",
      "esse",
      "in",
      "duis"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Eve Dunlap"
      },
      {
        "id": 1,
        "name": "Huff Murphy"
      },
      {
        "id": 2,
        "name": "Ida Fisher"
      }
    ],
    "greeting": "Hello, Wood Bryan! You have 3 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "69b4d53fe4a562a66a18f975",
    "index": 2,
    "guid": "6a6db345-bbc0-4f43-977d-2d6ef2729cd3",
    "isActive": false,
    "balance": "$2,861.93",
    "picture": "http://placehold.it/32x32",
    "age": 35,
    "eyeColor": "blue",
    "name": "Desiree Bates",
    "gender": "female",
    "company": "VALREDA",
    "email": "desireebates@valreda.com",
    "phone": "+1 (842) 428-2105",
    "address": "541 Riverdale Avenue, Hoagland, Vermont, 3035",
    "about": "Sint adipisicing quis deserunt excepteur in sint. Magna excepteur consectetur aliquip pariatur sint esse tempor laborum minim reprehenderit. Sit sint incididunt dolore commodo sit sunt aliqua est laborum cupidatat.\r\n",
    "registered": "2023-08-05T05:58:27 -07:00",
    "latitude": -26.418634,
    "longitude": -128.711119,
    "tags": [
      "commodo",
      "mollit",
      "tempor",
      "ea",
      "culpa",
      "est",
      "culpa"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Suzanne Burch"
      },
      {
        "id": 1,
        "name": "Bridges Bauer"
      },
      {
        "id": 2,
        "name": "Singleton Lindsey"
      }
    ],
    "greeting": "Hello, Desiree Bates! You have 4 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "69b4d53f218d5cc60ec07ece",
    "index": 3,
    "guid": "8c7327d9-c3b6-432a-9417-6f5089c18f73",
    "isActive": true,
    "balance": "$3,615.13",
    "picture": "http://placehold.it/32x32",
    "age": 24,
    "eyeColor": "blue",
    "name": "Alberta Huff",
    "gender": "female",
    "company": "TRIPSCH",
    "email": "albertahuff@tripsch.com",
    "phone": "+1 (810) 420-3685",
    "address": "393 Hudson Avenue, Lorraine, Louisiana, 1931",
    "about": "Duis exercitation pariatur irure dolor quis. Magna duis ea laboris est do ut cupidatat culpa. Occaecat elit deserunt anim ad voluptate irure cillum consequat magna. Velit qui velit deserunt exercitation quis est commodo ullamco voluptate culpa aliquip excepteur.\r\n",
    "registered": "2017-05-23T11:18:58 -07:00",
    "latitude": 49.769398,
    "longitude": -28.52533,
    "tags": [
      "nulla",
      "veniam",
      "enim",
      "quis",
      "anim",
      "anim",
      "occaecat"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Jeannette Wall"
      },
      {
        "id": 1,
        "name": "Griffin Bernard"
      },
      {
        "id": 2,
        "name": "Caroline Langley"
      }
    ],
    "greeting": "Hello, Alberta Huff! You have 7 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "69b4d53fa21a210459deb0d6",
    "index": 4,
    "guid": "918f6c7b-2548-45f5-a48c-ffc16c24ddef",
    "isActive": true,
    "balance": "$2,082.48",
    "picture": "http://placehold.it/32x32",
    "age": 26,
    "eyeColor": "brown",
    "name": "Cooper Whitney",
    "gender": "male",
    "company": "NETILITY",
    "email": "cooperwhitney@netility.com",
    "phone": "+1 (971) 416-3909",
    "address": "578 Oxford Walk, Bergoo, District Of Columbia, 9677",
    "about": "Est quis qui cillum mollit voluptate Lorem sunt aliqua amet tempor id ex. Pariatur irure officia nostrud non nulla pariatur Lorem. Quis reprehenderit cupidatat et tempor esse officia ullamco aute. Pariatur ullamco cupidatat nisi eu mollit ullamco voluptate aute. Excepteur duis commodo sint voluptate sunt est fugiat.\r\n",
    "registered": "2014-10-15T03:59:47 -07:00",
    "latitude": 12.56115,
    "longitude": -120.560942,
    "tags": [
      "deserunt",
      "qui",
      "laboris",
      "consectetur",
      "quis",
      "nulla",
      "officia"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Nita Kaufman"
      },
      {
        "id": 1,
        "name": "Margery Santos"
      },
      {
        "id": 2,
        "name": "Melisa Weeks"
      }
    ],
    "greeting": "Hello, Cooper Whitney! You have 9 unread messages.",
    "favoriteFruit": "apple"
  }
]