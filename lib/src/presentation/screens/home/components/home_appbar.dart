import 'package:flutter/material.dart';
import 'package:metro_uio/src/application/core/constants/images.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: BuilderPersistenceDelegate(
        maxExtent: MediaQuery.of(context).size.height * 0.15,
        minExtent: MediaQuery.of(context).size.height * 0.15,
        builder: (percent) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[600],
                                ),
                          ),
                          Text(
                            'John Doe',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Badge(
                            child: Icon(Icons.notifications),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: CircleAvatar(
                            backgroundImage: const AssetImage(
                              Images.profile,
                            ),
                            backgroundColor: Colors.grey[200],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuilderPersistenceDelegate extends SliverPersistentHeaderDelegate {
  BuilderPersistenceDelegate({
    required maxExtent,
    required minExtent,
    required this.builder,
  })  : _maxExtent = maxExtent,
        _minExtent = minExtent;

  final double _maxExtent;
  final double _minExtent;
  final Widget Function(double percent) builder;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return builder(shrinkOffset / (maxExtent - minExtent));
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
