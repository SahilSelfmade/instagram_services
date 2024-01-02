import 'package:go_router/go_router.dart';
import 'package:instagram_services/instagram_services/services/instagram_services_views.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/core.dart';

class InstagramServicesHome extends StatelessWidget {
  const InstagramServicesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        isBack: false,
        text: 'Selmadetechie'.toUpperCase(),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.amber[700],
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
            onPressed: () async {
              var whatsapp = "918183848511";

              final httpsUri = Uri(
                scheme: 'https',
                host: 'wa.me',
                path: whatsapp,
              );
              if (await canLaunchUrl(httpsUri)) {
                await launchUrl(httpsUri);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("whatsapp no installed")));
              }
            },
            icon: const Icon(Icons.chat_outlined)),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'instagram services'.capitalizeFirstLetter(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              Center(
                child: Text(
                  'I\'ll help you get better engagement and have a wider audience with active followers.'
                          ' With my reliable plans, you can get the success you want and get known worldwide quickly and safely.'
                      .capitalizeFirstLetter(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(),
                  MainTileContainer(
                    text: 'Followers',
                    onTap: () =>
                        context.pushNamed(AppRoutesConstants.followers),
                  ),
                  AppHelperFunctions.spaceV(20),
                  MainTileContainer(
                    text: 'Views',
                    onTap: () => context.pushNamed(AppRoutesConstants.views),
                  ),
                  AppHelperFunctions.spaceV(20),
                  MainTileContainer(
                    text: 'Likes',
                    onTap: () => context.pushNamed(AppRoutesConstants.likes),
                  ),
                  AppHelperFunctions.spaceV(20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBack;
  final String text;
  const CommonAppBar({
    Key? key,
    required this.isBack,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.amber[700],
      automaticallyImplyLeading: false,
      leading: !isBack
          ? const SizedBox.shrink()
          : GestureDetector(
              onTap: context.pop,
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
