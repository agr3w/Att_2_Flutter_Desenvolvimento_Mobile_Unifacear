/*
                          **Atividade 2 - Flutter**
  | Professora: Rosanete Grassiani dos Santos | 5º Semestre ADS | Desenvolvimento Mobile |
  | Aluno: Weslley Luiz Kampa | Data: 16/03/2026
  | Descrição: App Flutter explorando as propriedades do Scaffold, estilização 
  |            de textos (fontes e cores customizadas), uso de Columns/Rows 
  |            e gradientes, com temática inspirada em O Senhor dos Anéis.
  | Link do repositório: https://github.com/agr3w/Att_2_Flutter_Desenvolvimento_Mobile_Unifacear
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1C1C1C), // Fundo escuro
        appBar: AppBar(
          backgroundColor: const Color(0xFF0F3024), // Verde escuro élfico
          title: const Text(
            'Minha aula de TI, Weslley',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'serif',
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFD700), // Dourado
              letterSpacing: 1.5,
            ),
          ),
          centerTitle: true,
          elevation: 10,
          shadowColor: const Color(0xFFFFD700),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF2A2A2A), Color(0xFF111111)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: const Color(0xFFFFD700).withOpacity(0.6),
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x66FFD700),
                  blurRadius: 25,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Ash code durbatulûk,\nAsh tela gimbatul,\nAsh font thrakatulûk,\nAgh Flutter-ishi krimpatul.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'cursive',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFD700),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Um código para a todos governar,\nUma tela para encontrá-los,\nFontes e cores para a todos trazer,\nE no Flutter conectá-los.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'serif',
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF888888), // Cinza escuro
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 25), // Espaço antes da assinatura
                // Aqui entra a referência explícita para a professora ver!
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centraliza os itens na linha
                  children: [
                    Icon(
                      Icons.menu_book, // Ícone de um livro aberto
                      color: Color(0xFF666666), // Uma cor bem discreta
                      size: 16,
                    ),
                    SizedBox(width: 8), // Espaço entre o ícone e o texto
                    Text(
                      'Inspirado em O Senhor dos Anéis (J.R.R. Tolkien)',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'serif',
                        color: Color(0xFF666666),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
