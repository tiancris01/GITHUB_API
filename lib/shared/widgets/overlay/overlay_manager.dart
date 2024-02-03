import 'package:flutter/material.dart';
import 'package:githun_api_commits/app/core/design/design.dart';

class OverlayManager {
  final BuildContext context;
  final Size size;

  OverlayManager._(this.context) : size = MediaQuery.of(context).size;

  factory OverlayManager.of(BuildContext context) => OverlayManager._(context);

  static Future<T?> modal<T>({
    required BuildContext context,
    required Widget child,
    bool enableDrag = false,
    bool isDismissible = true,
  }) async {
    Future<T?> future = showModalBottomSheet<T>(
      builder: (context) => child,
      context: context,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: ColorsFoundation.secondary,
          width: 1.0,
        ),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
    );
    return future;
  }

  /// Use in conjunction with the [DefaultDialog] widget
  ///
  /// - `OverlayManager.dialog`
  /// ```dart
  /// OverlayManager.dialog(
  ///     child: ConfirmLogoutDialog(
  ///   onPressedLeft: () => Get.back(),
  ///   onPressedRight: () => authUseCase.logout(),
  /// ))
  /// ```
  /// - `ConfirmLogoutDialog`
  /// ```dart
  /// class ConfirmLogoutDialog extends StatelessWidget {
  ///   final void Function() onPressedLeft;
  ///   final void Function() onPressedRight;
  ///   const ConfirmLogoutDialog(
  ///       {super.key, required this.onPressedLeft, required this.onPressedRight});
  ///
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     return DefaultDialog.title(
  ///       title: '¿Estás seguro que quieres \n cerrar sesión?',
  ///       child: ...
  ///     );
  ///   }
  /// }
  /// ```
  ///
  static Future<T?> dialog<T>({
    required BuildContext context,
    required Widget child,
    bool barrierDismissible = true,
    void Function()? onClose,
  }) async {
    Future<T?> future = showDialog<T>(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Dialog(
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: child,
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
    await future.then((void value) => onClose?.call());
    return future;
  }
}
