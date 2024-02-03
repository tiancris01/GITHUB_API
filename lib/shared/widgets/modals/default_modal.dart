import 'package:flutter/material.dart';

class DefaultModal extends StatelessWidget {
  final Widget child;
  final String title;
  final bool _showTitle;
  final bool closeButtonEnable;
  final MainAxisSize? mainAxisSize;
  final double? sizeBottom;

  const DefaultModal.title({
    Key? key,
    required this.title,
    required this.child,
    this.closeButtonEnable = false,
    this.mainAxisSize,
    this.sizeBottom,
  })  : _showTitle = true,
        super(key: key);

  const DefaultModal.custom({
    Key? key,
    required this.child,
    this.closeButtonEnable = false,
    this.mainAxisSize,
    this.sizeBottom,
  })  : title = '',
        _showTitle = false,
        super(key: key);

  const DefaultModal.filter({
    Key? key,
    required this.child,
    this.closeButtonEnable = false,
    this.sizeBottom,
  })  : title = '',
        mainAxisSize = MainAxisSize.max,
        _showTitle = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          mainAxisSize: mainAxisSize ?? MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_showTitle) ...[
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ] else
              const SizedBox(
                height: 25,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: child,
            ),
            SizedBox(
              height: sizeBottom ?? 20,
            )
          ],
        ),
        if (closeButtonEnable)
          Positioned.fill(
            top: 5,
            right: 5,
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                splashRadius: 20,
                onPressed: () => context.navigator.pop(),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
      ],
    );
  }
}

//TODO: Remove this extension
extension NavigatorExtension on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
}
