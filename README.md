# 图提取 · ImageGrab

一个 Chrome / Edge 浏览器扩展：在淘宝、天猫、京东、拼多多商家版的商品详情页，一键提取页面内所有商品图片，集中勾选并批量下载为 PNG。

## 功能

- 右下角悬浮「获取图片」按钮，仅在商品详情页出现
- 自动扫描 `img`、`srcset`、`data-src`、`data-lazy-src` 与 `background-image`
- 过滤图标、logo、占位图与小于 100×100 的图片
- 新标签页网格展示，支持全选、反选、已选数量
- Canvas 统一转换为 PNG，按 `商品图_001.png` 命名下载

## 目录

```text
plugin/          Chrome 扩展源码（Manifest V3）
plugin.zip       可直接分发的扩展压缩包
docs/index.html  插件官网（GitHub Pages）
mock/            本地演示用商品详情页
```

## 安装

1. 打开 `chrome://extensions`（Edge 为 `edge://extensions`）
2. 开启「开发者模式」
3. 点击「加载已解压的扩展程序」，选择 `plugin/` 目录
4. 打开商品详情页，点右下角「获取图片」

## 官网

https://729649458.github.io/flowboard/

## 技术栈

Manifest V3 · Content Script · Service Worker · chrome.downloads · Canvas · 原生 HTML/CSS/JS
