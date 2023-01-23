class Blog {
  String? id;
  String? title;
  String? description;
  String? thumbnail;
  int? view;
  int? love;
  int? like;
  String? createdAt;
  String? updatedAt;

  Blog({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.view,
    this.love,
    this.like,
    this.createdAt,
    this.updatedAt,
  });
}

final List<Blog> blogList = [
  Blog(
      id: '1',
      title: 'What is flutter? Why you should learn Flutter?',
      description:
          'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase. /n The first version of Flutter was known as "Sky" and ran on the Android operating system. It was unveiled at the 2015 Dart developer summit[8] with the stated intent of being able to render consistently at 120 frames per second.[9] During the keynote of Google Developer Days in Shanghai in September 2018, Google announced Flutter Release Preview 2, the last major release before Flutter 1.0. On December 4th of that year, Flutter 1.0 was released at the Flutter Live event, denoting the first stable version of the framework. On December 11, 2019, Flutter 1.12 was released at the Flutter Interactive event'
          '\n \n On May 6, 2020, the Dart software development kit SDK version 2.8 and Flutter 1.17.0 were released, adding support for the Metal API which improves performance on iOS devices by approximately 50%, as well as new Material widgets and network tracking development tools.'
          'On March 3, 2021, Google released Flutter 2 during an online Flutter Engage event. This major update brought official support for web-based applications with a new Canvas Kit renderer and web specific widgets, early-access desktop application support for Windows, macOS, and Linux and improved Add-to-App APIs.[11] This release also utilized Dart 2.0 that featured sound null-safety, which caused many breaking changes and issues with many external packages; however, the Flutter team included instructions and tools to mitigate these issues.'
          '\n \n On March 3, 2021, Google released Flutter 2 during an online Flutter Engage event. This major update brought official support for web-based applications with a new Canvas Kit renderer and web specific widgets, early-access desktop application support for Windows, macOS, and Linux and improved Add-to-App APIs.[11] This release also utilized Dart 2.0 that featured sound null-safety, which caused many breaking changes and issues with many external packages; however, the Flutter team included instructions and tools to mitigate these issues.',
      thumbnail:
          'https://cdn.dribbble.com/users/1732368/screenshots/17034874/media/ccd3685eddcc7b62452e37ce1d508bb1.gif',
      view: 800,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '2',
      title: 'What is Dart? Why you should learn Dart?',
      description:
          'Dart was unveiled at the GOTO conference in Aarhus, Denmark, October 10–12, 2011.[12] The project was founded by Lars Bak and Kasper Lund.[13] Dart 1.0 was released on November 14, 2013.[14]'
          'Dart initially had a mixed reception and the Dart initiative has been criticized by some'
          '\n \nfor fragmenting the web, due to the original plans to include a Dart VM in Chrome. Those plans were dropped in 2015 with the 1.9 release of Dart to focus instead on compiling Dart to JavaScript.[15]'
          'Dart 2.0 was released in August 2018, with language changes including a type system.[16]'
          '\n \n Dart 2.6 introduced a new extension, dart2native, which extends native compilation to the Linux, macOS, and Windows desktop platforms. Earlier developers could create new tools using only Android or iOS devices. With this extension it also becomes possible to compose a program into self-contained executables. According to company representatives, it’s no longer necessary to have the Dart SDK installed, as the self-contained executables can now start running in a few seconds. The new extension is also integrated with the Flutter toolkit, making it possible to use the compiler on small services (for example, backend support).'
          'On May 6, 2020, the Dart software development kit SDK version 2.8 and Flutter 1.17.0 were released, adding support for the Metal API which improves performance on iOS devices by approximately 50%, as well as new Material widgets and network tracking development tools.'
          '\n \n On March 3, 2021, Google released Flutter 2 during an online Flutter Engage event. This major update brought official support for web-based applications with a new Canvas Kit renderer and web specific widgets, early-access desktop application support for Windows, macOS, and Linux and improved Add-to-App APIs.[11] This release also utilized Dart 2.0 that featured sound null-safety, which caused many breaking changes and issues with many external packages; however, the Flutter team included instructions and tools to mitigate these issues.',
      thumbnail:
          'https://repository-images.githubusercontent.com/317371013/30b3ff10-8caf-485f-a256-c2c5c4f1d344',
      view: 1200,
      love: 400,
      like: 500,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '3',
      title: 'What is Java? Why you should learn Java?',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.',
      thumbnail:
          'https://softwareengineeringdaily.com/wp-content/uploads/2020/01/Java-Debugging-Tips-881x441.jpg',
      view: 1300,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '4',
      title: 'What is JavaScript? Why you should learn JavaScript?',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.',
      thumbnail:
          'https://camo.githubusercontent.com/146619ea5e1302a387ccd09ef32fb03f973c58b079fd116c985bf55bb1d0c319/68747470733a2f2f692e6962622e636f2f4e545678316a572f646f776e6c6f61642e6a7067',
      view: 1700,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '5',
      title: 'What is node js? Why you should learn node js?',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.',
      thumbnail:
          'https://images.ctfassets.net/aq13lwl6616q/7cS8gBoWulxkWNWEm0FspJ/c7eb42dd82e27279307f8b9fc9b136fa/nodejs_cover_photo_smaller_size.png',
      view: 100,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '6',
      title: 'What is Python? Why you should learn Python?',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.',
      thumbnail:
          'https://5.imimg.com/data5/SG/BF/PV/SELLER-55284628/python-programming-500x500.jpg',
      view: 800,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '7',
      title: 'What is Angular? Why you should learn Angular js?',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.',
      thumbnail:
          'https://nareshit.com/wp-content/uploads/2018/08/angular-JS-online-training-nareshit.jpg',
      view: 1200,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '8',
      title: 'What is PHP? Why you should learn PHP?',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.',
      thumbnail: 'https://icoginix.com/wp-content/uploads/2019/06/PHP.jpg',
      view: 900,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '9',
      title: 'What is C#? Why you should learn C#?',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.',
      thumbnail:
          'https://res.cloudinary.com/practicaldev/image/fetch/s--_oeMOJts--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://cdn-images-1.medium.com/max/1600/1%2AMfOHvI5b1XZKYTXIAKY7PQ.png',
      view: 6000,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
  Blog(
      id: '10',
      title: 'What is SQL? Why you should learn SQL?',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.'
          '\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue interdum tortor eget fringilla. Donec tincidunt lobortis feugiat. Vestibulum vestibulum sit amet tortor vitae rutrum. In risus risus, blandit ac venenatis vel, congue sed elit. Vestibulum dolor velit, rhoncus a convallis ut, ornare non diam. Suspendisse varius leo in justo mollis, quis fringilla metus aliquam. Suspendisse pharetra, est et volutpat finibus, quam tellus imperdiet ante, non ullamcorper lorem lorem ut nulla. Morbi ipsum diam, rutrum a diam ut, pharetra gravida enim.',
      thumbnail:
          'https://www.dataquest.io/wp-content/uploads/2021/11/why-sql-consumes-so-much-memory-header.webp',
      view: 100,
      love: 300,
      like: 200,
      createdAt: '31 Oct 2022',
      updatedAt: '31 Oct 2022'),
];
