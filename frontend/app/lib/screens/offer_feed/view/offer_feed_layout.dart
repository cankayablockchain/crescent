part of 'offer_feed_page.dart';

class OfferFeedLayout extends StatelessWidget {
  const OfferFeedLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            IconButton(
              onPressed: () => context.router.push(const OfferCreateRoute()),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        SliverList.builder(
          itemBuilder: (context, index) {
            return OfferTile(
              title: 'Offer $index',
              description: 'Description $index',
              price: index * 1.0,
              onTap: () {},
            );
          },
        ),
      ],
    );
  }
}
