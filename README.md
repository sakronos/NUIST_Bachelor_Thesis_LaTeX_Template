# 南京信息工程大学本科生毕业论文 LaTeX 模板 
版本：2021.6.1

这是一份南京信息工程大学本科生毕业论文LaTeX模板，请使用XeLaTeX编译。**提醒：本文档是非官方版**

本Repository是对[NUIST_thesis_template_V2.0](https://github.com/LirenW/NUIST_thesis_template_V2.0)进行修订。

## 推荐使用环境
1. Windows 10
2. TeX Live 2021
3. Visual Studio Code

## 文件目录
```bash
│  bibliography.bib                                     # 使用BibTeX格式化的参考列表
│  clean.bat                                            
│  LICENSE                                              
│  nuist.cls                                            # 样式文件
│  NUIST_thesis.bbl
│  NUIST_thesis.listing
│  NUIST_thesis.pdf
│  NUIST_thesis.tex                                     # 使用范例
│  南京信息工程大学本科生毕业论文（设计）撰写排版规范.doc    # 学校排版规范
│
├─body                                                  # 章节文件
│
├─figs                                                  # 图片文件夹
│
└─nuist_logo                                            # 封面所需图片
```

## 更新日志
> * version 2021.6
> > 1. 调整了几处字体大小
> > 2. 将图片、表格、公式设置为按章编号
> > 3. 添加了声明页
> > 4. 设置了页码
> > 5. 使用GB/T 7714—2015 BibTeX Style排版参考文献
> > 6. 限定模板使用的字体为SimSun、SimHei、SimKai和Times New Roman
> > 7. 替换已弃用的宏包和命令
> > 8. 更新\thanking命令，添加\forthsection命令
> > 9. 将\linespread设置为1.335，以得到更接近MS Word下多倍行距1.25的效果
> > 10. 图片编号与图片标题间的分隔符设置为空格
> * version 2021.6.1
> > 1. 尝试修复参考文献和致谢页的跳转问题
> * 2021/10/28
> > 1. 修改TODO，并补充使用bibliography的注意事项
> > 2. （被导师要求重新检查文档格式了……好久没用LaTeX，有改出问题来的预感＞﹏＜）

## TODO
- [ ] 比较bibtex与biblatex，可能使用biblatex替换bibtex
- [ ] 修改模板名字为nuistbachelor
- [ ] 根据***毕业论文自查要求.docx***，注释号采用六角括号，例如**1〕**

## 致谢
1. [南京信息工程大学本科学位论文模板](https://github.com/LirenW/NUIST_thesis_template_V2.0)
2. [南京信息工程大学LaTeX毕业论文模板V3.1](https://latexstudio.net/index/details/index/mid/1524.html)
