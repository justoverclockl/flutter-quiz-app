import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'Quali sono i principali blocchi di costruzione delle UI di Flutter?',
    [
      'Widget',
      'Componenti',
      'Blocchi',
      'Funzioni',
    ],
  ),
  QuizQuestion('Come vengono costruite le UI di Flutter?', [
    'Combinando widget nel codice',
    'Combinando widget in un editor visuale',
    'Definendo widget nei file di configurazione',
    'Utilizzando XCode per iOS e Android Studio per Android',
  ]),
  QuizQuestion(
    'Qual è lo scopo di un StatefulWidget?',
    [
      'Aggiornare la UI quando i dati cambiano',
      'Aggiornare i dati quando la UI cambia',
      'Ignorare i cambiamenti nei dati',
      'Rendere la UI indipendente dai dati',
    ],
  ),
  QuizQuestion(
    'Quale widget dovresti cercare di utilizzare più spesso: StatelessWidget o StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Entrambi sono ugualmente buoni',
      'Nessuna delle opzioni precedenti',
    ],
  ),
  QuizQuestion(
    'Cosa succede se si modificano i dati in un StatelessWidget?',
    [
      'La UI non viene aggiornata',
      'La UI viene aggiornata',
      'Viene aggiornato il StatefulWidget più vicino',
      'Vengono aggiornati gli StatefulWidget nidificati',
    ],
  ),
  QuizQuestion(
    'Come dovresti aggiornare i dati all\'interno degli StatefulWidgets?',
    [
      'Chiamando setState()',
      'Chiamando updateData()',
      'Chiamando updateUI()',
      'Chiamando updateState()',
    ],
  ),
];
