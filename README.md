# 雅思词图 · IELTS Word Atlas

**一词一画，稳步上岸。**

7,298 个雅思词条 · 原创插画 · 英美发音 · FSRS 间隔复习

这是一个**独立模块**，从 [Word Atlas（词光）](https://github.com/designfuchen/word-atlas) 复刻而来，
与本机其它项目（专升本 App 等）完全隔离：自带 `package.json`、`node_modules`、构建产物与部署脚本，
可以单独开发、单独部署、单独删除。

---

## 与上游的关系

| 项目 | 说明 |
| :--- | :--- |
| 上游 | [designfuchen/word-atlas](https://github.com/designfuchen/word-atlas)（Word Atlas · 词光） |
| 代码许可 | MIT（见 `LICENSE`） |
| 内容许可 | **CC BY 4.0**（见 `CONTENT_LICENSE.md`）——词库文本、7,298 幅插画、22,905 段录音 |
| 本模块改动 | 品牌（名称/标识/开屏/分享图/清单/页面文案）、关于页署名区、构建脚本整理 |

> **CC BY 4.0 要求保留署名。** `src/config.ts` 里的 `UPSTREAM_*` 常量与「关于」页的
> 「数据与素材署名」区块就是履行该义务的地方，二次分发时请原样保留。
> 署名主体为 **Word Atlas contributors**。

## 学习方式

| 环节 | 你会做什么 |
| :--- | :--- |
| **看见** | 每个词配一幅插画、中英释义、两条原创例句，以及搭配、词族和用法提示。 |
| **听见** | 切换英音、美音，听日常例句朗读。 |
| **想起** | 选义、看图补句、听音辨词、拼写，逐步练习主动回忆。 |
| **复习** | FSRS（FSRS-6）按记忆稳定度安排复习，目标记忆率可调，默认 90%。 |
| **积累** | 19 个话题组成词汇星图（WebGL2 渲染，不支持时降级）；支持导出与恢复本地进度。 |

**评分规则**：每个词在一轮中只有**第一次作答**更新记忆。答错 = Again；答对但慢或用了提示 = Hard；
答对 = Good；拼写又快又对 = Easy。「已掌握」= FSRS 复习态且记忆稳定度 ≥ 21 天。

## 本地运行

需要 **Node.js 20+**。媒体资源已随仓库提供（约 680 MB）。

```bash
cd ielts-atlas
npm ci          # 首次
npm run dev     # http://localhost:5188
```

```bash
npm test             # 单元测试（21 项）
npm run check:atlas  # 词库结构与媒体覆盖校验
npm run verify       # 上面两项一起跑
npm run build        # 构建到 dist/
```

部署到子路径：`ATLAS_BASE=/ielts/ npm run build`。

**技术栈**：React 19 · TypeScript · Vite 6 · ts-fsrs · WebGL2

## 数据

| 资源 | 数量 | 位置 |
| :--- | :--- | :--- |
| 词条 | 7,298（CEFR A1–C2，19 话题） | `data/word-atlas.json` / `.csv` |
| 例句 | 14,596 | 同上 |
| 插画 | 7,298（512px + 256px 缩略图） | `public/atlas/img/`、`public/atlas/thumb/` |
| 录音 | 21,894（英音 / 美音 / 例句朗读） | `public/atlas/audio/` |
| 网页分块 | 73 块 × 100 条 | `public/atlas/entries/` |

网页运行时读的是 `public/atlas/index.json`（紧凑索引）+ `entries/<n>.json`（完整词条），
图片与音频按 `index.json` 里的 `media` 位标记按需加载（`1`=插画 `2`=英音 `4`=美音 `8`=例句朗读）。

## 内容来源与局限

释义、例句、插画与录音由上游用生成式 AI 制作（语音 ElevenLabs），经过自动结构与一致性校验，
**没有逐条人工审校**，可能出现释义、例句、插画或发音错误。它不是官方雅思词表，也不承诺提分。

## 目录

```
ielts-atlas/
├── src/
│   ├── atlas/     词库加载与类型
│   ├── store/     持久化、FSRS 调度、出题会话
│   ├── lib/       音频、文本归一化、打词、路由、音效、动画
│   ├── pages/     今日 / 图鉴 / 学习 / 练习 / 我的 / 关于
│   ├── ui/        词卡、搜索面板、Toast、开屏、分享图
│   ├── galaxy/    星图布局与 WebGL2 渲染
│   └── styles/    app.css（单文件，约 80 KB）
├── public/        atlas 数据与媒体、brand 图、sfx 音效、sw.js
├── data/          完整词库 JSON / CSV
├── scripts/       词库构建、校验、渲染工具
└── docs/          词库格式、学习模型、部署说明
```
