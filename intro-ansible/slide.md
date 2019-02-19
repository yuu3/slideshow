---
title: Ansibleを使おう
author: yuu
date: Jan 18, 2019
---

## 目標
手順書ではなくコードへ

## Ansible is 何?
一言でいうと、  
YAML形式のテキストファイル(a.k.a Playbook)に記述した処理を実行するツール。

(処理: apt install emacs, etc...)  
[公式サイト](https://www.ansible.com/)

---

はじめは、  
バッチファイルやbash scriptと似たようなもの。  
そう思ってくれればいいと思います。

## メリット
* 冪等性がある
* エージェントレスアーキテクチャである
* モジュールによる拡張/再利用性の高い
* シンプルに記述できる

## 冪等性
「何を実行するのか」ではなく、「どういう状態があるべき姿なのか」を記述します。  
そのため、同じ処理を何回実行しても同じ結果になります。

⇒ 既にあるべき状態の場合には実行しない

## エージェントレス
Python 2.4以降がインストールされていることだけ。  

## モジュールによる拡張再利用性
WindowsやCloudといったモジュールもあり、たくさんあります。

```ex:yaml
- git:
    repo: 'https://foosball.example.org/path/to/repo.git'
    dest: /srv/checkout
    version: release-0.22
```

[module index](https://docs.ansible.com/ansible/latest/modules/modules_by_category.html)

## シンプルに記述できる
* YAML形式で記述するため、人によって差が出にくい
* 逆に、複雑な処理は助長になるかも...

## デメリット
* 新たな言語/モジュール名を覚えること

# DEMO

# おわり
