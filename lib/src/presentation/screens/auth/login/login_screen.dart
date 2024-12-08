import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:metro_uio/src/presentation/layouts/auth/auth_layout.dart';
import 'package:metro_uio/src/presentation/widgets/fields/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey formKey = GlobalKey<FormState>();
    return AuthLayout(
      title: 'Iniciar sesión',
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
            const TextFieldWidget(
              label: 'Contraseña',
              hint: 'Ingrese su contraseña',
              required: true,
              password: true,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('¿Olvidaste tu contraseña?'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: '¿No tienes una cuenta? ',
                style: const TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Regístrate',
                    style: TextStyle(
                      color: Colors.blue[900]!,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
