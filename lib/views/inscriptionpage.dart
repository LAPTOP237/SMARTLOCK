import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:icons_plus/icons_plus.dart';
import '../viewsmodels/signup_viewmodel.dart';

class InscriptionPage extends StatelessWidget {
  const InscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignupViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Précédent',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 24,
            fontFamily: 'HappyMonkey',
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'INSCRIPTION',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 40),
            _buildTextField('Email', onChanged: viewModel.setEmail),
            _buildTextField('N° Téléphone', onChanged: viewModel.setPhone),
            _buildTextField('Mot de passe',
                isPassword: true, onChanged: viewModel.setPassword),
            _buildTextField('Confirmer le mot de passe',
                isPassword: true, onChanged: viewModel.setConfirmPassword),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: viewModel.user.acceptedTerms,
                  onChanged: (val) => viewModel.setAcceptedTerms(val ?? false),
                ),
                const Expanded(
                  child: Text(
                    "J’ai lu et j’accepte les paramètres de confidentialité et les conditions d’utilisation.",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Avez-vous déjà un compte? "),
                    TextSpan(
                      text: "Connectez-vous",
                      style: TextStyle(
                          color: Color(0xFF557BDD),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            viewModel.isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: viewModel.registerUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4AF37),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      'Terminé',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
            const SizedBox(height: 20),
            _buildGoogleSignUpButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label,
      {bool isPassword = false, required Function(String) onChanged}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        obscureText: isPassword,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.grey[200],
          border: const UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1.5),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.amber.shade700, width: 2),
          ),
        ),
      ),
    );
  }

  Widget _buildGoogleSignUpButton() {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Brand(Brands.google),
      label: const Text(
        "Continuez avec Google",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }
}
