import 'package:flutter/material.dart';
import '../../services/user_progress.dart'; // Ajuste os '..' se necessário dependendo de onde salvou a pasta modulos

/// Modelo simples para representar cada aula dentro do módulo.
class _Aula {
  final String titulo;
  final String imagem1;
  final String introducao;
  final String? imagem2;
  final String? dicaTitulo;
  final List<String>? passos;
  final List<String>? dicasExtras;
  final String? tutorialCasaTitulo;
  final List<String>? tutorialCasaMateriais;
  final List<String>? tutorialCasaPassos;

  const _Aula({
    required this.titulo,
    required this.imagem1,
    required this.introducao,
    this.imagem2,
    this.dicaTitulo,
    this.passos,
    this.dicasExtras,
    this.tutorialCasaTitulo,
    this.tutorialCasaMateriais,
    this.tutorialCasaPassos,
  });
}

class Modulo1Page extends StatelessWidget {
  const Modulo1Page({super.key});

  final String moduleId = 'modulo_1';

  // Lista das 4 aulas do módulo.
  static final List<_Aula> _aulas = [
    // Aula 1 - Boas-vindas e entendendo sua pele
    const _Aula(
      titulo: "01. Bem-vindo(a): entendendo sua pele",
      imagem1:
      "https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=1000",
      introducao:
      "Seja bem-vindo(a) ao Módulo 1! Antes de qualquer produto ou receita, o glow "
          "brasileiro começa em um ponto: entender o seu tipo de pele. Nesta aula você vai "
          "aprender a identificar se sua pele é oleosa, seca, mista ou sensível, e por que "
          "essa informação muda completamente a forma como você deve limpar, hidratar e "
          "cuidar dela no dia a dia. É a base de tudo que vem a seguir no módulo.",
      tutorialCasaTitulo: "Teste caseiro: descubra seu tipo de pele em 5 minutos",
      tutorialCasaMateriais: [
        "1 lenço de papel ou papel toalha limpo",
        "Água morna",
        "Toalha de rosto limpa",
      ],
      tutorialCasaPassos: [
        "Lave o rosto normalmente com um sabonete neutro e seque com a toalha.",
        "Espere 30 minutos sem passar nenhum produto na pele (nem hidratante).",
        "Pressione o lenço de papel suavemente na testa, nariz e queixo (zona T).",
        "Pressione o papel também nas bochechas.",
        "Observe o resultado: papel oleoso em toda parte = pele oleosa; oleoso só na "
            "zona T = pele mista; papel seco e pele repuxando = pele seca; se a pele "
            "ficou vermelha ou irritou fácil = pele sensível.",
      ],
    ),

    // Aula 2 - Limpeza facial
    const _Aula(
      titulo: "02. Limpeza facial: a base do glow",
      imagem1:
      "https://images.unsplash.com/photo-1731514771613-991a02407132?w=1000",
      introducao:
      "A limpeza é o passo mais subestimado da rotina de pele. Pele suja ou mal "
          "limpa impede que qualquer hidratante ou sérum funcione de verdade. Aqui você "
          "aprende a limpeza dupla (double cleansing) usada nas rotinas brasileiras mais "
          "eficientes, e como adaptar o produto certo para o seu tipo de pele.",
      imagem2:
      "https://images.unsplash.com/photo-1629380108599-ea06489d66f5?w=1000",
      dicaTitulo: "Como fazer a limpeza facial perfeita",
      passos: [
        "Remova maquiagem e protetor solar com um óleo ou bálsamo de limpeza.",
        "Faça uma segunda limpeza com sabonete facial de acordo com seu tipo de pele.",
        "Massageie suavemente por 60 segundos, sem esfregar com força.",
        "Enxágue com água morna, nunca quente, para não ressecar a pele.",
        "Seque o rosto com toques leves usando uma toalha limpa e macia.",
      ],
      dicasExtras: [
        "Nunca durma de maquiagem, mesmo em dias cansativos.",
        "Troque a toalha do rosto com frequência para evitar bactérias.",
        "Pele oleosa também precisa de hidratação após a limpeza.",
      ],
      tutorialCasaTitulo: "Faça em casa: limpeza dupla com itens simples",
      tutorialCasaMateriais: [
        "Óleo neutro (coco, girassol ou azeite) para a primeira limpeza",
        "Sabonete facial neutro ou específico para seu tipo de pele",
        "2 toalhas de rosto limpas",
        "Água morna",
      ],
      tutorialCasaPassos: [
        "Com as mãos secas, aplique uma colher de chá do óleo no rosto seco e "
            "massageie por 1 minuto para dissolver maquiagem e protetor solar.",
        "Molhe uma toalha em água morna, torça bem e passe no rosto para remover o "
            "óleo, sem esfregar com força.",
        "Molhe o rosto novamente e aplique o sabonete facial, massageando em "
            "movimentos circulares por 60 segundos.",
        "Enxágue bem com água morna até não sentir mais resíduo de sabonete.",
        "Seque com a segunda toalha, sempre com toques leves, nunca puxando a pele.",
      ],
    ),

    // Aula 3 - Hidratação em camadas
    const _Aula(
      titulo: "03. Hidratação em camadas: o segredo brasileiro",
      imagem1:
      "https://images.unsplash.com/photo-1693004927824-f2623bbedc8b?w=1000",
      introducao:
      "O efeito 'pele molhada de tão hidratada' que você vê em brasileiras não é "
          "sorte, é técnica. A hidratação em camadas consiste em aplicar produtos do mais "
          "leve para o mais denso, deixando a pele absorver cada etapa antes da próxima. "
          "É esse método que cria o glow natural sem parecer oleoso ou pesado.",
      imagem2:
      "https://images.unsplash.com/photo-1670201203208-055d6d79db4a?w=1000",
      dicaTitulo: "Rotina de hidratação em camadas",
      passos: [
        "Aplique um tônico ou bruma para preparar a pele ainda úmida.",
        "Adicione um sérum de ácido hialurônico para reter água na pele.",
        "Espere 2 a 3 minutos para o produto absorver completamente.",
        "Finalize com um hidratante adequado ao seu tipo de pele.",
        "Nos dias de sol, sempre finalize com protetor solar por cima.",
      ],
      dicasExtras: [
        "Aplique os produtos sempre com a pele ainda levemente úmida.",
        "Menos produto, mais camadas: não exagere na quantidade de cada etapa.",
        "Pele hidratada por dentro (água) reflete direto na pele por fora.",
      ],
      tutorialCasaTitulo: "Faça em casa: máscara hidratante caseira",
      tutorialCasaMateriais: [
        "1 colher de sopa de aveia em flocos",
        "1 colher de sopa de mel",
        "1 colher de sopa de iogurte natural sem açúcar",
      ],
      tutorialCasaPassos: [
        "Misture os três ingredientes em uma tigela pequena até formar uma pasta homogênea.",
        "Com o rosto limpo, aplique a mistura em camada uniforme, evitando a região dos olhos.",
        "Deixe agir por 15 minutos, relaxando enquanto a máscara faz efeito.",
        "Remova com água morna, massageando levemente em movimentos circulares.",
        "Seque o rosto e finalize com sua rotina normal de hidratação em camadas.",
        "Use essa máscara de 1 a 2 vezes por semana.",
      ],
    ),

    // Aula 4 - Esfoliação e rotina completa
    const _Aula(
      titulo: "04. Esfoliação e rotina completa (dia e noite)",
      imagem1:
      "https://images.unsplash.com/photo-1648203276014-20f97ba1f817?w=1000",
      introducao:
      "A esfoliação remove as células mortas que deixam a pele opaca e sem brilho, "
          "abrindo caminho para que os outros produtos funcionem melhor. Nesta última aula "
          "do módulo, você vai aprender a frequência ideal de esfoliação e como montar sua "
          "rotina completa, juntando tudo que aprendeu até aqui em uma sequência simples "
          "para manhã e outra para a noite.",
      imagem2:
      "https://images.unsplash.com/photo-1629198688000-71f23e745b6e?w=1000",
      dicaTitulo: "Sua rotina completa, passo a passo",
      passos: [
        "Esfolie a pele 1 a 2 vezes por semana, nunca todos os dias.",
        "Rotina da manhã: limpeza leve, hidratação em camadas e protetor solar.",
        "Rotina da noite: limpeza dupla, esfoliação (nos dias certos) e hidratação.",
        "Espere sempre a pele secar entre um produto e outro.",
        "Seja consistente: resultados de pele aparecem em semanas, não em dias.",
      ],
      dicasExtras: [
        "Esfoliação em excesso agride a barreira da pele e causa o efeito contrário.",
        "Prefira esfoliantes suaves, sem grãos grandes que machucam a pele.",
        "Anote sua evolução com fotos semanais para acompanhar o progresso.",
      ],
      tutorialCasaTitulo: "Faça em casa: esfoliante facial suave",
      tutorialCasaMateriais: [
        "1 colher de sopa de açúcar refinado (grão fino)",
        "1 colher de sopa de óleo de coco (ou azeite neutro)",
        "Opcional: 1 colher de chá de mel",
      ],
      tutorialCasaPassos: [
        "Misture o açúcar com o óleo de coco até formar uma pasta com textura firme.",
        "Se quiser um esfoliante mais nutritivo, adicione o mel e misture novamente.",
        "Com o rosto limpo e levemente úmido, aplique a mistura com a ponta dos dedos.",
        "Massageie em movimentos circulares bem leves por 30 a 60 segundos, evitando "
            "a região dos olhos.",
        "Enxágue com água morna até remover todo o resíduo de açúcar.",
        "Finalize sempre com hidratante, já que a esfoliação deixa a pele mais receptiva.",
        "Use no máximo 1 a 2 vezes por semana, nunca em pele com espinhas ativas.",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1112),
      appBar: AppBar(
        backgroundColor: const Color(0xFF16181A),
        title: const Text(
          "Módulo 1 - Fundamentos da Pele Brasileira",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < _aulas.length; i++) ...[
                  _buildAula(_aulas[i]),
                  const SizedBox(height: 48),
                  if (i != _aulas.length - 1)
                    Divider(color: Colors.white.withOpacity(0.08), height: 1),
                  if (i != _aulas.length - 1) const SizedBox(height: 48),
                ],

                // Botão Dinâmico de Concluir Módulo
                ListenableBuilder(
                  listenable: userProgress,
                  builder: (context, child) {
                    bool concluido = userProgress.isConcluded(moduleId);

                    return SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          userProgress.toggleModule(moduleId);
                        },
                        icon: Icon(
                          concluido ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: concluido ? Colors.green : Colors.white,
                        ),
                        label: Text(
                          concluido ? "Módulo Concluído ✔" : "Marcar como Concluído",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: concluido ? Colors.green : Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: concluido ? const Color(0xFF1B382B) : const Color(0xFF22252A),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: concluido ? Colors.green.withOpacity(0.5) : Colors.white.withOpacity(0.1),
                            ),
                          ),
                          elevation: 0,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Constrói o conteúdo completo de uma aula (título, imagens, textos, tutorial e dicas).
  Widget _buildAula(_Aula aula) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          aula.titulo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),

        _buildImagem(aula.imagem1),
        const SizedBox(height: 20),

        Text(
          aula.introducao,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 15,
            height: 1.5,
          ),
        ),

        if (aula.imagem2 != null) ...[
          const SizedBox(height: 24),
          _buildImagem(aula.imagem2!),
        ],

        if (aula.dicaTitulo != null && aula.passos != null) ...[
          const SizedBox(height: 28),
          _buildTutorial(aula.dicaTitulo!, aula.passos!),
        ],

        if (aula.tutorialCasaTitulo != null &&
            aula.tutorialCasaMateriais != null &&
            aula.tutorialCasaPassos != null) ...[
          const SizedBox(height: 24),
          _buildTutorialCasa(
            aula.tutorialCasaTitulo!,
            aula.tutorialCasaMateriais!,
            aula.tutorialCasaPassos!,
          ),
        ],

        if (aula.dicasExtras != null) ...[
          const SizedBox(height: 24),
          _buildDicasExtras(aula.dicasExtras!),
        ],
      ],
    );
  }

  // Card de imagem, no mesmo estilo visual do player de vídeo original.
  Widget _buildImagem(String url) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          url,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Bloco de dica + tutorial passo a passo (versão curta / rotina).
  Widget _buildTutorial(String titulo, List<String> passos) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.lightbulb, color: Colors.green, size: 20),
              SizedBox(width: 8),
              Text(
                "Dica",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          for (int i = 0; i < passos.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1B382B),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${i + 1}",
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      passos[i],
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  // Bloco de tutorial caseiro: materiais + modo de preparo, estilo receita.
  // Visualmente diferente da "Dica" (cor laranja + ícone de casa) para deixar
  // claro que é uma seção separada, de "mão na massa".
  Widget _buildTutorialCasa(
      String titulo, List<String> materiais, List<String> passos) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF241A12),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.orange.withOpacity(0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.home_repair_service, color: Colors.orange, size: 20),
              SizedBox(width: 8),
              Text(
                "Tutorial: faça em casa",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 18),

          // O que você vai precisar
          Row(
            children: const [
              Icon(Icons.shopping_basket_outlined, color: Colors.orangeAccent, size: 16),
              SizedBox(width: 6),
              Text(
                "O que você vai precisar",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          for (final item in materiais)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.circle, size: 6, color: Colors.orangeAccent),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      item,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          const SizedBox(height: 18),

          // Modo de preparo
          Row(
            children: const [
              Icon(Icons.checklist, color: Colors.orangeAccent, size: 16),
              SizedBox(width: 6),
              Text(
                "Modo de preparo",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          for (int i = 0; i < passos.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${i + 1}",
                      style: const TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      passos[i],
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  // Bloco de dicas extras, em formato de lista com marcadores.
  Widget _buildDicasExtras(List<String> dicas) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A).withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber, size: 18),
              SizedBox(width: 8),
              Text(
                "Dicas extras",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          for (final dica in dicas)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("•  ", style: TextStyle(color: Colors.grey)),
                  Expanded(
                    child: Text(
                      dica,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}