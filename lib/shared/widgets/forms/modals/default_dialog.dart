import 'package:flutter/material.dart';
import 'package:udg_app/app/core/design/design.dart';

enum _Type { title, action, custom }

class DefaultDialog extends StatelessWidget {
  final _Type _type;
  final Widget child;
  final String title;
  final bool _showTitle;
  final bool closeButtonEnable;

  final String? _selectText;
  final String? _cancelText;
  final void Function()? _selectFunction;
  final void Function()? _cancelFunction;

  const DefaultDialog.title({
    Key? key,
    required this.title,
    required this.child,
    this.closeButtonEnable = false,
  })  : _type = _Type.title,
        _showTitle = true,
        _selectFunction = null,
        _cancelFunction = null,
        _cancelText = '',
        _selectText = '',
        super(key: key);

  const DefaultDialog.action({
    Key? key,
    required this.title,
    String? selectText = 'Seleccionar',
    String? cancelText = 'Cancelar',
    required void Function()? selectFunction,
    required void Function()? cancelFunction,
  })  : _type = _Type.action,
        _showTitle = true,
        closeButtonEnable = false,
        _selectFunction = selectFunction,
        _cancelFunction = cancelFunction,
        _cancelText = cancelText,
        _selectText = selectText,
        child = const SizedBox(),
        super(key: key);

  const DefaultDialog.custom({
    Key? key,
    required this.child,
    this.closeButtonEnable = false,
  })  : _type = _Type.custom,
        title = '',
        _showTitle = false,
        _selectFunction = null,
        _cancelFunction = null,
        _cancelText = '',
        _selectText = '',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
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
                  style: FontsFoundation.of(context.brightness).subtitle.h2Sb20,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: _BuildBody(
                  type: _type,
                  cancelFunction: _cancelFunction,
                  cancelText: _cancelText,
                  selectFunction: _selectFunction,
                  selectText: _selectText,
                  child: child),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        if (closeButtonEnable)
          Positioned.fill(
              top: 0,
              right: 0,
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      splashRadius: 20,
                      onPressed: () => context.navigator.pop(),
                      icon: const Icon(Icons.close)))),
      ],
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    required _Type type,
    required this.child,
    required void Function()? cancelFunction,
    required String? cancelText,
    required void Function()? selectFunction,
    required String? selectText,
  })  : _type = type,
        _cancelFunction = cancelFunction,
        _cancelText = cancelText,
        _selectFunction = selectFunction,
        _selectText = selectText;

  final _Type _type;
  final Widget child;
  final void Function()? _cancelFunction;
  final String? _cancelText;
  final void Function()? _selectFunction;
  final String? _selectText;

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case _Type.title:
        return child;
      case _Type.action:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: _cancelFunction,
                      child: Text(
                        _cancelText ?? '',
                        style: FontsFoundation.of(context.brightness)
                            .paragraph
                            .b1M16
                            .copyWith(
                              color: context.brightness == Brightness.light
                                  ? ColorsFoundation.text.black
                                  : ColorsFoundation.text.light,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: StylesFoundation.of(context.brightness)
                          .elevatedButtonStyleNegative,
                      onPressed: _selectFunction,
                      child: Text(_selectText ?? ''),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      case _Type.custom:
        return child;
    }
  }
}
