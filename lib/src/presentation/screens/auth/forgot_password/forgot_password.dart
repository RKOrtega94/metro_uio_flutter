import 'package:flutter/material.dart';
import 'package:metro_uio/src/presentation/layouts/auth/auth_layout.dart';
import 'package:metro_uio/src/presentation/widgets/fields/text_field_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey formKey = GlobalKey<FormState>();
    return AuthLayout(
      canBack: true,
      title: 'Recuperar contraseña',
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextFieldWidget(
              label: 'Correo electrónico',
              hint: 'Ingrese su email',
              required: true,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Recuperar contraseña',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
