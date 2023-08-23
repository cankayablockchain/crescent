part of 'offer_create_page.dart';

class OfferCreateLayout extends StatelessWidget {
  const OfferCreateLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Enter a title',
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Enter a description',
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Price',
                    hintText: 'Enter a price',
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Quantity',
                    hintText: 'Enter a quantity',
                  ),
                  keyboardType: TextInputType.number,
                ),
                const Spacer(),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Create Offer'),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
