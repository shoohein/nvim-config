# nvim-config

Neovim設定です。

## 前提

- Neovim 0.11以上
- Git
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [Nerd Font](https://www.nerdfonts.com/)（アイコン表示に推奨）
- 言語ごとの追加ツール（任意）

## セットアップ

```bash
git clone git@p.github.com:shoohein/nvim-config.git ~/.config/nvim
```

初回起動時に[lazy.nvim](https://github.com/folke/lazy.nvim)が自動でインストールされ、プラグインの読み込みが始まります。

## 主要機能

| 機能 | プラグイン |
|---|---|
| プラグイン管理 | lazy.nvim |
| ファイラ | neo-tree |
| ファジーファインダ | Telescope |
| シンタックスハイライト | nvim-treesitter |
| 補完 | blink.cmp |
| LSP | nvim-lspconfig |
| フォーマッタ | conform.nvim |
| 診断一覧 | trouble.nvim |
| 括弧補完 | nvim-autopairs |
| Markdownプレビュー | render-markdown.nvim |

## キーマップ

### 共通

| キー | 動作 |
|---|---|
| `<leader>` | Space |
| `jj` | Insert modeから抜ける |

### ファイル・検索

| キー | 動作 |
|---|---|
| `<leader>e` | Neo-treeの表示切り替え |
| `<leader>E` | Neo-treeで現在のファイルを表示 |
| `<leader>ff` | ファイル検索（Telescope） |
| `<leader>fg` | テキスト検索（Telescope） |
| `<leader>fb` | バッファ一覧（Telescope） |
| `<leader>fh` | ヘルプタグ検索（Telescope） |

### 編集

| キー | 動作 |
|---|---|
| `<leader>f` | バッファ全体をフォーマット（保存時も自動実行） |

### Window・ターミナル

| キー | 動作 |
|---|---|
| `<leader>t` | 右側に縦分割でターミナルを開く |
| `<C-h>` | 左のwindowへ |
| `<C-j>` | 下のwindowへ |
| `<C-k>` | 上のwindowへ |
| `<C-l>` | 右のwindowへ |

### LSP（Language Server起動時のみ）

| キー | 動作 |
|---|---|
| `gd` | 定義へ移動 |
| `gD` | 宣言へ移動 |
| `gi` | 実装へ移動 |
| `gr` | 参照一覧（Telescope） |
| `K` | ホバー表示 |
| `<C-k>` | シグネチャヘルプ |
| `<leader>rn` | 名前変更 |
| `<leader>ca` | コードアクション |

### 診断

| キー | 動作 |
|---|---|
| `<leader>d` | カーソル位置の診断を表示 |
| `[d` | 前の診断へ |
| `]d` | 次の診断へ |
| `<leader>xx` | ワークスペース全体の診断一覧 |
| `<leader>xX` | 現在のバッファの診断一覧 |

## ドキュメント

- [docs/guide/vim-basics.md](docs/guide/vim-basics.md) — Vim基本操作
- [docs/guide/development-workflow.md](docs/guide/development-workflow.md) — 効率的な開発操作
