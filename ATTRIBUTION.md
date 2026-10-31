# 署名与授权 / Attribution & Licensing

本模块（**雅思词图 · IELTS Word Atlas**）是下列开源项目的**独立分支复刻**：

| | |
| :--- | :--- |
| 上游项目 | **Word Atlas · 词光** |
| 上游仓库 | https://github.com/designfuchen/word-atlas |
| 上游主页 | https://0xlei.tech/words/ |

## 授权构成

| 内容 | 许可 | 文件 |
| :--- | :--- | :--- |
| 源代码（`src/`、`scripts/`、构建配置） | **MIT** | `LICENSE` |
| 词库文本（释义、例句、搭配、词族、提示） | **CC BY 4.0** | `CONTENT_LICENSE.md` |
| 插画（`public/atlas/img`、`thumb`，7,298 幅） | **CC BY 4.0** | `CONTENT_LICENSE.md` |
| 词条录音（`public/atlas/audio`，21,894 段） | **CC BY 4.0** | `CONTENT_LICENSE.md` |
| 界面音效与配乐（`public/sfx`，24 段） | 随应用一并提供 | `CONTENT_LICENSE.md` |

## CC BY 4.0 的强制义务

CC BY 4.0 是**署名型**许可。使用这些内容必须做到：

1. **保留署名**——指明创作者为 **Word Atlas contributors**；
2. **标明许可**——说明内容以 CC BY 4.0 授权，并给出许可全文链接
   （https://creativecommons.org/licenses/by/4.0/）；
3. **注明改动**——说明本模块相对上游做了哪些修改。

本模块通过以下三处**同时**履行上述义务，任何一处都不应被删除：

- 应用内「关于 → 数据与素材署名」区块（`src/pages/About.tsx`）；
- `src/config.ts` 中的 `UPSTREAM_NAME` / `UPSTREAM_URL` / `UPSTREAM_LICENSE` 常量；
- 本文件与 `README.md`。

## 本模块相对上游的改动

- 品牌重命名：「词光 / Word Atlas」→「雅思词图 / IELTS Word Atlas」，
  标语「一词一画，点亮雅思」→「一词一画，稳步上岸」；
- 更新 `index.html` 的标题与社交元信息，去掉上游域名与 OG 图外链；
- 更新 `public/manifest.webmanifest`（PWA 名称、简称、描述）；
- 开屏、Logo、分享图、词卡序号栏的品牌文案同步替换；
- 「关于」页重写署名区，新增上游授权说明；
- `package.json` 更名 `ielts-atlas`，并新增 `npm run verify`；
- 新增 `README.md`、`ATTRIBUTION.md`。

**未改动**：词库数据、插画、录音、音效、FSRS 调度算法、出题逻辑、星图渲染、页面结构与交互。

## 内容来源说明（继承自上游）

释义、例句、插画与录音由上游使用生成式 AI 制作（语音合成使用 ElevenLabs），
经过自动化的结构与一致性校验，**未逐条人工审校**。可能存在释义不准确、
例句生硬、插画与词义不完全对应、发音异常等问题。

本项目**不是**官方雅思词表，与 IELTS 考试主办方（British Council、IDP、Cambridge）
无任何关联，也不承诺提分效果。雅思（IELTS）为其各自权利人的商标。
