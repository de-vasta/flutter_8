<h1 align="center"> Лабораторна робота №7 </h1>
<h2 align="center"> Створення власних віджетів, успадкованих від класу <b>StatelessWidget</b>. Використання віджету <b>Material App</b></h2>

### Розробити графічний інтерфейс згідно рисунку, представленого в [лабораторній роботі №6](https://github.com/de-vasta/flutter_6), але в стилі _material design_ з використанням власного віджету, успадкованого від класу `StatelessWidget` з передачею даних (min 3 властивості) через параметри його конструктора.

#### Code
[![main.dart](https://img.shields.io/badge/main-dart-2eb2ee?style=flat-square&logo=flutter&labelColor=02569B&logoColor=55c0f0)](lib/main.dart)&nbsp;
[![main.dart](https://img.shields.io/badge/custom_stateless-dart-2eb2ee?style=flat-square&logo=flutter&labelColor=02569B&logoColor=55c0f0)](lib/main.dart)

#### Контрольні запитання

1. Ні: віджети типу _stateless_ не мають стану й не можуть змінювати свої властивості.
2. Так: абстрактний метод повинен бути перевизначеним.
3. Так.
4. `Material App` призначений для створення графічного інтерфейсу додатку в стилі **material design**.
5. `Scaffold`: загальне пусте полотно, на якому будуть розташовуватись інші віджети; `AppBar`: головна верхня панель додатку, в якому можуть розміщуватися заголовок, різні типи кнопок тощо. 