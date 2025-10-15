📱 App de Frases Motivacionais (Siri & App Intents)
Um aplicativo simples desenvolvido como um estudo prático sobre a integração de funcionalidades do sistema iOS, como a Siri, utilizando o framework App Intents.

🎯 Sobre o Projeto
Este app tem uma funcionalidade central: exibir uma frase motivacional aleatória para o usuário. O seu verdadeiro objetivo, no entanto, é servir como um campo de aprendizado para o Challenge de aprofundamento em tecnologias de sistema, focando em:
App Intents: O framework moderno para ensinar a Siri, Atalhos e o Spotlight a entender e executar as funcionalidades do seu app.
App Shortcuts: A forma como "anunciamos" para a Siri quais comandos de voz podem ativar as ações do nosso app.
App Entity: Como representamos os dados do nosso app (nossas "frases") em um formato que o sistema entenda.
✨ Funcionalidades Principais
UI Simples: Uma tela principal que exibe uma frase motivacional.
Integração com a Siri: A funcionalidade principal do estudo. O usuário pode pedir uma frase diretamente à Siri, sem precisar abrir o app. A Siri irá falar a frase em voz alta e exibi-la em sua própria interface.
🚀 Como Testar a Integração com a Siri
Para testar a funcionalidade principal do projeto, siga os passos abaixo.

❗️Importante: Os testes de integração com a Siri devem ser feitos em um dispositivo físico (iPhone ou iPad), pois o Simulador do Xcode tem suporte limitado ou inexistente para a Siri.
Build & Run:
Abra o projeto no Xcode.
Conecte seu iPhone/iPad.
Compile e execute o aplicativo no seu dispositivo pelo menos uma vez. Isso registra os atalhos do app no sistema.
Ative a Siri:
Chame a Siri (usando o botão lateral ou dizendo "E aí Siri").
Diga um dos comandos que foram configurados no AppShortcutsProvider. Tente estas frases:
"Ouvir frase do dia em reflection"
"Abrir frase motivacional em reflection"

Verifique o Resultado:
A Siri deverá responder em voz alta com a frase: "A frase do momento é: [texto da frase]".
Ao mesmo tempo, a interface da Siri na tela deverá exibir um pequeno card com o texto da frase que foi sorteada.
(Opcional) Verifique no App Atalhos:
Abra o app Atalhos (Shortcuts) da Apple.
Toque em + para criar um novo atalho e depois em Adicionar Ação.
Procure pelo nome do seu aplicativo. Você deverá ver a ação "Ouvir frase motivacional" listada, com o ícone do seu app. Isso confirma que o sistema reconheceu seu AppShortcutsProvider.
🛠️ Tecnologias Utilizadas
SwiftUI: Para a construção da interface de usuário.
App Intents: Para a lógica da ação que a Siri executa.
AppShortcutsProvider: Para registrar os atalhos e as frases de ativação.
AppEntity & EntityQuery: Para modelar os dados de forma que o sistema possa entendê-los.
