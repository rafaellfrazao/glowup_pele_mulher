import 'package:flutter/material.dart';
import '../../services/user_progress.dart';

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

class Modulo2Page extends StatelessWidget {
  const Modulo2Page({super.key});

  final String moduleId = 'modulo_2';

  // Lista das 5 aulas do módulo sobre Banho e Esfoliação Corporal.
  static final List<_Aula> _aulas = [
    // Aula 1 - O Banho Restaurador
    const _Aula(
      titulo: "01. O Banho Restaurador: temperatura e preparação",
      imagem1:
      "https://images.unsplash.com/photo-1584622650111-993a426fbf0a?w=1000",
      introducao:
      "O banho corporal vai além da higiene: é o primeiro passo para uma pele "
          "saudável e macia. A água muito quente remove a proteção natural da pele e "
          "causa ressecamento severo. Nesta aula, você vai aprender a ajustar a temperatura "
          "ideal do banho e preparar o corpo para absorver os nutrientes e a hidratação.",
      tutorialCasaTitulo: "Teste e ajuste de temperatura da água em casa",
      tutorialCasaMateriais: [
        "1 sabonete líquido hidratante ou em barra neutro",
        "1 toalha corporal macia",
      ],
      tutorialCasaPassos: [
        "Ajuste o chuveiro para água morna ou fria; evite vapor excessivo no banheiro.",
        "Mantenha o tempo total de banho entre 5 e 10 minutos para preservar a barreira cutânea.",
        "Aplique o sabonete suavemente com as mãos, priorizando as áreas de maior acúmulo de suor.",
        "Ao sair, seque a pele dando batidinhas leves com a toalha, sem esfregar.",
      ],
    ),

    // Aula 2 - Esfoliação Corporal com Bucha e Esfoliantes
    const _Aula(
      titulo: "02. Esfoliação Corporal: renovação da pele do corpo",
      imagem1:
      "https://images.unsplash.com/photo-1512290900673-3d02710343a4?w=1000",
      introducao:
      "A pele do corpo é mais espessa do que a do rosto, acumulando mais células "
          "mortas em regiões como cotovelos, joelhos e calcanhares. A esfoliação corporal "
          "desobstrui os poros, estimula a circulação e previne pelos encravados, trazendo "
          "um toque aveludado instantâneo.",
      imagem2:
      "https://images.unsplash.com/photo-1556228720-195a672e8a03?w=1000",
      dicaTitulo: "Como fazer a esfoliação corporal correta",
      passos: [
        "Umedeça o corpo com água morna para amaciar a pele antes de aplicar o produto.",
        "Aplique o esfoliante em movimentos circulares, de baixo para cima (em direção ao coração).",
        "Dê atenção especial a áreas mais grossas, como joelhos, pés e cotovelos.",
        "Evite áreas sensibilizadas, depiladas recentemente ou com lesões.",
        "Enxágue completamente sem deixar resíduos de grânulos.",
      ],
      dicasExtras: [
        "Esfolie o corpo apenas 1 a 2 vezes por semana.",
        "Nunca use esfoliantes corporais pesados no rosto.",
        "Sempre aplique um bom creme corporal logo após o enxágue.",
      ],
      tutorialCasaTitulo: "Faça em casa: esfoliante corporal de café e coco",
      tutorialCasaMateriais: [
        "2 colheres de sopa de borra de café (ou café moído)",
        "2 colheres de sopa de óleo de coco ou azeite de oliva",
        "1 colher de sopa de açúcar mascavo ou refinado",
      ],
      tutorialCasaPassos: [
        "Em um recipiente limpo, misture a borra de café, o óleo e o açúcar até formar uma pasta.",
        "No banho, com o corpo molhado, aplique a mistura nas pernas, braços e tronco.",
        "Massageie com movimentos circulares e suave pressão por 2 a 3 minutos.",
        "Enxágue com água morna até remover todos os grãos de café.",
      ],
    ),

    // Aula 3 - Hidratação Corporal e Banho de Óleos
    const _Aula(
      titulo: "03. Selagem da Pele: óleos e hidratantes pós-banho",
      imagem1:
      "https://images.unsplash.com/photo-1608248597262-921473618a80?w=1000",
      introducao:
      "Após limpar e esfoliar, o segredo da pele luminosa é reter a umidade "
          "no corpo. Os óleos corporais e os cremes densos funcionam de formas diferentes: "
          "o hidratante repõe a água, enquanto o óleo cria uma barreira protetora que não "
          "deixa essa hidratação escapar.",
      imagem2:
      "https://images.unsplash.com/photo-1617897903246-719242758050?w=1000",
      dicaTitulo: "Técnica de selagem em 3 minutos",
      passos: [
        "Desligue o chuveiro e retire apenas o excesso de água com a mão.",
        "Com a pele ainda úmida, aplique uma camada de creme ou loção corporal.",
        "Para um brilho extra, finalize aplicando um óleo corporal por cima do hidratante.",
        "Deixe o produto secar por 2 minutos antes de se vestir.",
      ],
      dicasExtras: [
        "Óleos de banho sem enxágue devem ser aplicados na pele limpa e ainda molhada.",
        "Locões com ureia ou manteiga de karité são ideais para peles extra secas.",
      ],
      tutorialCasaTitulo: "Faça em casa: óleo corporal pós-banho com aroma natural",
      tutorialCasaMateriais: [
        "3 colheres de sopa de óleo de amêndoas doces",
        "1 colher de sopa de óleo de semente de uva ou girassol",
        "3 gotas de óleo essencial de lavanda ou camomila (opcional)",
      ],
      tutorialCasaPassos: [
        "Misture os óleos em um frasco limpo e seco.",
        "No banho, logo após desligar o chuveiro, espalhe algumas gotas nas pernas e braços.",
        "Massageie levemente e seque o corpo com a toalha usando toques suaves.",
      ],
    ),

    // Aula 4 - Prevenção de Pelos Encravados e Keratosis Pilaris
    const _Aula(
      titulo: "04. Cuidados Especiais: rugosidade e pelos encravados",
      imagem1:
      "https://images.unsplash.com/photo-1515377905703-c4788e51af15?w=1000",
      introducao:
      "Bolinhas vermelhas nos braços (queratose pilar) e pelos encravados nas pernas "
          "e virilha são queixas comuns. Combinar a esfoliação física correta com ativos "
          "químicos suaves no banho ajuda a desobstruir os folículos sem agredir ou inflamar a pele.",
      dicaTitulo: "Rotina de prevenção no banho",
      passos: [
        "Evite raspar a pele a seco; use sempre sabonete ou espuma de barbear.",
        "Substitua lâminas cegas frequentemente para evitar atrito e cortes.",
        "Faça a esfoliação corporal 24 horas antes da depilação, nunca no mesmo momento.",
        "Aplique um hidratante calmante logo após secar a pele.",
      ],
      dicasExtras: [
        "Não esprema ou cutuque bolinhas e pelos encravados.",
        "Roupas muito apertadas após o banho favorecem o encravamento dos pelos.",
      ],
      tutorialCasaTitulo: "Faça em casa: compressa calmante de camomila",
      tutorialCasaMateriais: [
        "1 sachê ou 2 colheres de flores de camomila",
        "200ml de água fervente",
        "1 disco de algodão ou pano limpo",
      ],
      tutorialCasaPassos: [
        "Prepare o chá de camomila concentrado e espere esfriar completamente.",
        "Após o banho, molhe o algodão no chá frio e aplique sobre as áreas irritadas.",
        "Deixe agir por 10 minutos para acalmar a pele e reduzir a vermelhidão.",
      ],
    ),

    // Aula 5 - O Ritual do Banho Relaxante e Spa em Casa
    const _Aula(
      titulo: "05. Ritual Spa em Casa: o banho de autocuidado completo",
      imagem1:
      "https://images.unsplash.com/photo-1540555700478-4be289fbecef?w=1000",
      introducao:
      "Transforme seu banho semanal em um momento de reconexão e spa em casa. "
          "Unindo o controle de iluminação, aromas e todas as etapas de limpeza, esfoliação "
          "e hidratação profunda, você garante uma pele radiante e renovada para o resto da semana.",
      imagem2:
      "https://images.unsplash.com/photo-1507652313519-d4e9174996dd?w=1000",
      dicaTitulo: "Passo a passo do ritual semanal",
      passos: [
        "Prepare o ambiente: diminua a luz e coloque uma música relaxante.",
        "Inicie com a limpeza corporal morna e higienização das mãos e pés.",
        "Aplique o esfoliante corporal em todo o corpo com calma.",
        "Enxágue completamente e faça a nutrição com óleos ou máscaras corporais.",
        "Finalize com uma automassagem relaxante ao aplicar o creme pós-banho.",
      ],
      dicasExtras: [
        "Reserve de 20 a 30 minutos uma vez por semana para este ritual completo.",
        "Evite o uso de celulares ou telas durante o seu momento de spa.",
      ],
      tutorialCasaTitulo: "Faça em casa: escalda-pés relaxante pós-banho",
      tutorialCasaMateriais: [
        "1 bacia com água morna",
        "2 colheres de sopa de sal grosso",
        "1 colher de chá de óleo vegetal ou 3 gotas de óleo essencial",
      ],
      tutorialCasaPassos: [
        "Após o banho, encha a bacia com água morna e adicione o sal grosso e o óleo.",
        "Mergulhe os pés e relaxe por 15 minutos.",
        "Seque bem os pés, especialmente entre os dedos, e finalize com um creme denso.",
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
          "Módulo 2 - Ritual do Banho e Esfoliação Corporal",
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

  // Bloco de tutorial caseiro: materiais + modo de preparo.
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

  // Bloco de dicas extras.
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