# flutter cleanarchitecture bloc sample

[//]: # (todo router)
[//]: # (todo ダークモード)
[//]: # (todo primaryなどの色の設定)
[//]: # (todo 文字サイズ＋フォント)
[//]: # (todo Lint/Analyzer＋ci)
[//]: # (todo firebase)
[//]: # (todo Analytics)
[//]: # (todo shared_preferences ローカルデータ)
[//]: # (todo DateFormat)
[//]: # (todo 環境変数-icon-splash)

## フォルダー構成

```text
assets/                                     // 画像や動画等を管理
lib/
├── core/                                   // 共通の定義や定数などを格納
│   ├── constants/                          // 定数を管理
│   └── utils/                              // ユーティリティ関数（例: 日付処理など）
├── data/                                   // データ層。データ取得・保存の具体的な実装を担当
│   ├── repositories/                       // Repositoryの具象実装を格納
│   │   └── counter_repository_impl.dart
│   └── data_sources/                       // データのソース（ローカルDB、APIなど）を管理
│       └── counter_data_source.dart
├── domain/                                 // ドメイン層。アプリのビジネスルールを定義
│   ├── repositories/                       // リポジトリのインターフェースを管理
│   │   └── counter_repository.dart
│   ├── entities/                           // アプリ内のエンティティ（データ構造）を管理
│   │   └── counter.dart
│   └── usecases/                           // ユースケースを管理
│       └── increment_counter.dart
├── presentation/                           // 表示層。UIおよび状態管理を担当
│   ├── bloc/                               // BLoCによる状態管理を実装
│   │   └ counter/
│   │       ├── counter_bloc.dart           // カウント操作のビジネスロジック（BLoC）
│   │       ├── counter_event.dart          // CounterBlocで使用するイベントを定義
│   │       └── counter_state.dart          // CounterBlocの状態を定義
│   └── pages/                              // UI構成を管理
│       └── counter_page.dart               // カウンター画面のUIを定義
└── main.dart                               // アプリのエントリーポイント
```

## 初期設定

```shell
make init
make gen
```

## 注意

- l10nファイルを編集する場合、[readme](lib/l10n/README.md)を読むこと

## アプリ制作時、最初にやること

このリポジトリではやらないので、アプリを作り出す前に行うべきもの  

1. 環境を分ける

   flavor + icon + splash + firebaseの設定を分けるように設定する  

