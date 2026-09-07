# nvim-config

Neovim設定です。

## 前提

- Neovim 0.11以上
- Git
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [Nerd Font](https://www.nerdfonts.com/)（アイコン表示に推奨）

## セットアップ

```bash
git clone git@p.github.com:shoohein/nvim-config.git ~/.config/nvim
```

初回起動時に[lazy.nvim](https://github.com/folke/lazy.nvim)が自動でインストールされ、プラグインの読み込みが始まります。

## 主要機能

| 機能                           | プラグイン           |
| ------------------------------ | -------------------- |
| プラグイン管理                 | lazy.nvim            |
| ファイラ                       | neo-tree             |
| 編集型ファイラ                 | oil.nvim             |
| ファジーファインダ             | Telescope            |
| シンタックスハイライト         | nvim-treesitter      |
| 補完                           | blink.cmp            |
| LSP                            | nvim-lspconfig       |
| フォーマッタ                   | conform.nvim         |
| 診断一覧                       | trouble.nvim         |
| 括弧補完                       | nvim-autopairs       |
| Markdown表示の装飾             | render-markdown.nvim |
| ステータスライン・バッファ一覧 | lualine.nvim         |
| Git差分表示                    | gitsigns.nvim        |
| ターミナルパネル               | toggleterm.nvim      |
| 背景の透明化                   | transparent.nvim     |

## キーマップ

### 共通

| キー       | 動作                  |
| ---------- | --------------------- |
| `<leader>` | Space                 |
| `jj`       | Insert modeから抜ける |

### ファイル・検索

| キー         | 動作                           |
| ------------ | ------------------------------ |
| `<leader>e`  | Neo-treeの表示切り替え         |
| `<leader>E`  | Neo-treeで現在のファイルを表示 |
| `<leader>ge` | Neo-treeで変更ファイルのみ表示 |
| `-`          | 親ディレクトリを開く           |
| `<leader>ff` | ファイル検索                   |
| `<leader>fg` | テキスト検索                   |
| `<leader>fb` | バッファ一覧                   |
| `<leader>fh` | ヘルプタグ検索                 |
| `<leader>gg` | 変更ファイル一覧               |

### 編集

| キー        | 動作                                                               |
| ----------- | ------------------------------------------------------------------ |
| `<leader>f` | Normal modeではバッファ全体、Visual modeでは選択範囲をフォーマット |

### Window・ターミナル

| キー         | 動作                           |
| ------------ | ------------------------------ |
| `<leader>t`  | 下ターミナルパネルの開閉トグル |
| `<C-`>\`     | 下ターミナルパネルの開閉トグル |
| `Esc`        | Terminal modeからNormal modeへ |
| `<leader>ut` | 背景の透明化を切り替え         |
| `<C-h>`      | 左のwindowへ                   |
| `<C-j>`      | 下のwindowへ                   |
| `<C-k>`      | 上のwindowへ                   |
| `<C-l>`      | 右のwindowへ                   |

### LSP

| キー         | 動作             |
| ------------ | ---------------- |
| `gd`         | 定義へ移動       |
| `gD`         | 宣言へ移動       |
| `gi`         | 実装へ移動       |
| `gr`         | 参照一覧         |
| `K`          | ホバー表示       |
| `<C-k>`      | シグネチャヘルプ |
| `<leader>rn` | 名前変更         |
| `<leader>ca` | コードアクション |

### 診断

| キー         | 動作                         |
| ------------ | ---------------------------- |
| `<leader>d`  | カーソル位置の診断を表示     |
| `[d`         | 前の診断へ                   |
| `]d`         | 次の診断へ                   |
| `<leader>xx` | ワークスペース全体の診断一覧 |
| `<leader>xX` | 現在のバッファの診断一覧     |

### Git

| キー            | 動作                  |
| --------------- | --------------------- |
| `[c`            | 前のGit変更へ         |
| `]c`            | 次のGit変更へ         |
| `<leader>gp`    | 変更をプレビュー      |
| `<leader>gi`    | 変更をインライン表示  |
| `<leader>gs`    | 変更をステージ        |
| `<leader>gr`    | 変更を元に戻す        |
| `<leader>gq`    | 変更一覧を表示        |
| `<leader>gb`    | 行のBlameを表示       |
| `ih` (Operator) | Git変更ブロックを選択 |

## ドキュメント

- [docs/guide/vim-basics.md](docs/guide/vim-basics.md) — Vim基本操作
- [docs/guide/vim-advanced.md](docs/guide/vim-advanced.md) — 効率的な開発操作（Vim標準）
- [docs/guide/plugins.md](docs/guide/plugins.md) — プラグインの操作
