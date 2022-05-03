# 南京信息工程大学本科生毕业论文 LaTeX 模板

版本：2022

这是一份南京信息工程大学本科生毕业论文 LaTeX 模板，请使用 XeLaTeX 编译。**提醒：本文档是非官方版**

本 Repository 是对 [NUIST_thesis_template_V2.0](https://github.com/LirenW/NUIST_thesis_template_V2.0) 进行修订。

## 推荐使用环境

1. Windows 10
2. TeX Live 2021
3. Visual Studio Code
4. package `gbt7714` v2.0 (2020-03-04) 以上 [GB/T 7714 BibTeX style 版本 v2.0 的重要修改](https://mirrors.concertpass.com/tex-archive/biblio/bibtex/contrib/gbt7714/gbt7714.pdf)

## 文件目录

```bash
│  bibliography.bib                                     # 使用 BibTeX 格式化的参考列表
│  clean.bat
│  LICENSE
│  nuist.cls                                            # 样式文件
│  NUIST_thesis.listing
│  NUIST_thesis.pdf
│  NUIST_thesis.tex                                     # 使用范例
│  南京信息工程大学本科生毕业论文（设计）撰写排版规范.doc   # 学校排版规范
│  毕业论文自查要求.docx                                 # 学校排版规范
│  gbt7714-2005-numerical.bst                           # BibTeX 样式
│
├─body                                                  # 章节文件
│
├─figs                                                  # 图片文件夹
│
└─nuist_logo                                            # 封面所需图片
```

## 更新日志

> - version 2021.6
>
> > 1. 调整了几处字体大小
> > 2. 将图片、表格、公式设置为按章编号
> > 3. 添加了声明页
> > 4. 设置了页码
> > 5. 使用 GB/T 7714—2015 BibTeX Style 排版参考文献
> > 6. 限定模板使用的字体为 SimSun、SimHei、SimKai 和 Times New Roman
> > 7. 替换已弃用的宏包和命令
> > 8. 更新\thanking 命令，添加\forthsection 命令
> > 9. 将\linespread 设置为 1.335，以得到更接近 MS Word 下多倍行距 1.25 的效果
> > 10. 图片编号与图片标题间的分隔符设置为空格
>
> - version 2021.6.1
>
> > 1. 尝试修复参考文献和致谢页的跳转问题
>
> - 2021/10/28
>
> > 1. 修改 TODO，并补充使用 bibliography 的注意事项
> > 2. （被导师要求重新检查文档格式了……好久没用 LaTeX，有改出问题来的预感＞﹏＜）
>
> - 2022/01/10
>
> > 1. 修改 BibTeX 样式，参考文献中作者姓氏仅首字母大写
> > 2. 允许封面信息换行
>
> - 2022/05/05
>
> > 1. 修改 BibTeX 样式，不再将标题首字母小写
> > 1. 注释号采用六角括号
> > 1. 公式序号使用中文括号
> > 1. 更改行距换算
> > 1. 增加 algorithm 和 algorithmic 包排版伪代码
> > 1. 使用 \paragraph 代替 \forthsection
> > 1. 修复参考文献标题上方过多的空白

## TODO

- [ ] 参考文献中的逗号，句点等符号替换为中文（全角）符号

## 致谢

1. [南京信息工程大学本科学位论文模板](https://github.com/LirenW/NUIST_thesis_template_V2.0)
2. [南京信息工程大学 LaTeX 毕业论文模板 V3.1](https://latexstudio.net/index/details/index/mid/1524.html)
