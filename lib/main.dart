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
  runApp(const MeuPrimeiroApp());
}

class MeuPrimeiroApp extends StatelessWidget {
  const MeuPrimeiroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aula de Flutter',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF1C1C1C), // Fundo Moria
      ),
      home: const PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Minha Aula de TI, Weslley',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'serif',
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFD700), // Dourado
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: const Color(0xFF0F3024), // Verde élfico
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFFFFD700)), // Ícone do menu dourado
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
            border: Border.all(color: const Color(0xFFFFD700).withOpacity(0.6), width: 2),
            boxShadow: const [
              BoxShadow(color: Color(0x66FFD700), blurRadius: 25, spreadRadius: 2),
            ],
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Ash code durbatulûk,\nAsh tela gimbatul,\nAsh font thrakatulûk,\nAgh Flutter-ishi krimpatul.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'cursive',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFD700),
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Um código para a todos governar,\nUma tela para encontrá-los,\nFontes e cores para a todos trazer,\nE no Flutter conectá-los.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'serif',
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF888888),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF1C1C1C),
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF0F3024)),
              child: Text(
                "Sociedade do Anel",
                style: TextStyle(color: Color(0xFFFFD700), fontSize: 24, fontFamily: 'serif'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.map, color: Color(0xFF888888)),
              title: Text('Mapa da Terra Média', style: TextStyle(color: Color(0xFFE5E5E5))),
            ),
            ListTile(
              leading: Icon(Icons.shield, color: Color(0xFF888888)),
              title: Text('Equipamentos', style: TextStyle(color: Color(0xFFE5E5E5))),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF0F3024),
        child: const Icon(Icons.auto_awesome, color: Color(0xFFFFD700)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0F3024),
        selectedItemColor: const Color(0xFFFFD700),
        unselectedItemColor: const Color(0xFF888888),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Condado'),
          BottomNavigationBarItem(icon: Icon(Icons.directions_walk), label: 'Jornada'),
        ],
      ),
    );
  }
}