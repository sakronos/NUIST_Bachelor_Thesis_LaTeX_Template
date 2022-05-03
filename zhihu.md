#! https://zhuanlan.zhihu.com/p/456369680

# 南京信息工程大学本科毕设 LaTeX 模板【非官方】

> GitHub 仓库：[https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template](https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template "https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template")
>
> **使用前务必和导师确认是否允许 pdf 作为论文终稿**（学校方面允许 word 或 pdf 提交，详见“2021.6 版修订说明”）

## 1. 绪言

### 1.1. LaTeX 介绍

LaTeX 是一种基于 TeX 的排版系统，由美国计算机学家莱斯利·兰伯特（Leslie Lamport）在 20 世纪 80 年代初期开发，利用这种格式，即使使用者没有排版和程序设计的知识也可以充分发挥由 TeX 所提供的强大功能，能在几天，甚至几小时内生成很多具有书籍质量的印刷品。对于生成复杂表格和数学公式，这一点表现得尤为突出。因此它非常适用于生成高印刷质量的科技和数学类文档。这个系统同样适用于生成从简单的信件到完整书籍的所有其他种类的文档。如果想有更多的了解，可以看看比较经典的入门教程。

### 1.2. 本模板介绍

鉴于 Microsoft Word 编写论文排版工作量大且枯燥，为了实现论文的排版的自动化、规范化，按照《南京信息工程大学本科生毕业论文（设计）撰写排版规范》编写了可用于南京信息工程大学本科生毕业论文的 LaTeX 模板。

模板 2021.6 版本修订者根据 2021 年的论文格式要求修订该模板，并使用该模板完成毕业论文工作。

## 2. NUIST 模板介绍

### 2.1. 适合人群

所有对 LaTeX 感兴趣的南京信息工程大学本科毕业生。

由于使用者可能有一些个人化的需求，本模板可能要求使用者愿意通过搜索引擎等方式解决该问题。

### 2.2. 使用环境

由于现在 XeTeX 排版引擎已经比较成熟，所以这里采用 `XeLaTeX{}` 和 `CTeX{}` 宏集解决中英文混排问题。

本模板的推荐使用环境为：

- Windows 10
- TeX Live 最新发行版全量安装（2020 和 2021 可以正常编译）
- Visual Studio Code 和 [Visual Studio Code LaTeX Workshop Extension](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop "https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop") (作者为 James Yu)

请使用 `XeLaTeX{}` 编译本模板。如果在 Visual Studio Code 加插件环境下使用本模板，只需保留 [NUIST_thesis.tex](https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template/blob/main/NUIST_thesis.tex "https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template/blob/main/NUIST_thesis.tex") 文件第一行 `\% !TeX program = XeLaTeX`，程序将使用 XeLaTeX 命令排版文档。

### 2.3. 字体

模板使用宋体、黑体、Times New Roman 和楷体。根据 2021.6 版修订者的经历，建议使用 Windows 系统下的中易字库（SimSun、SimHei、SimKai）和 Times New Roman。笔者一开始使用的是思源宋体（Source Han Serif），但论文打印稿被答辩老师一眼看出使用的不是常见的宋体……

虽然 Windows 系统自带的中易字库没有加粗字型，好在根据学校的要求，通篇论文只有封面页用到了加粗字型，所以用 AutoFakeBold 足矣。

因此，笔者建议 Linux 用户和 Mac OS 用户请自行安装中易字库（Times New Roman 倒是很容易安装，Arch Linux 下直接有包 [https://aur.archlinux.org/packages/ttf-ms-fonts/](https://aur.archlinux.org/packages/ttf-ms-fonts/ "https://aur.archlinux.org/packages/ttf-ms-fonts/")），相信这对各位来说不是什么难事。

### 2.4. 文档类的选取

模版的文档类是基于 `CTeX{}` 宏集中自带的 `ctexart` 文档类来实现的[^x5]，当然，还用到了一些常用的宏包，编译时要保证自己的系统中已经安装好了这些宏包，如果用户使用的是全量安装的 TeX Live 就没有问题。

### 2.5. 参考文献编译方式

模板推荐使用 `\bibliography{}` 命令处理参考文献，借助“GB/T 7714—2005 BibTeX Style”，模板使用者可以放心大胆地将参考文献的排版工作交给 LaTeX ，而无需手动调整每条参考文献的格式。

考虑到使用者可能更习惯 thebibliography，模板仍保留了之前版本的 thebibliography 代码，使用者需要将 GB/T 7714-2005 相关的代码删除，并取消 thebibliography 相关代码的注释以重新启用它。

## 3. 模板中命令的使用方法

### 3.1. 分级标题

模板各级标题的命令如表所示：

| 命令 | `\section` | `\subsection` | `\subsubsection` | `\forthsection` |
| ---- | ---------- | ------------- | ---------------- | --------------- |
| 作用 | 一级标题   | 二级标题      | 三级标题         | 四级标题        |

虽然学校排版规范最低允许四级标题，但是 `ctexart` 文档类的自动编号应该只支持到三级标题，因此四级标题需要自行编号。

### 3.2. NUIST 模板中新定义命令介绍

这里一一介绍下 NUIST 本科论文模板中的新定义的命令：

- `\cover`，用于生成论文封面内容和声明页；
- `\mytableofcontents`，用于生成目录页内容；
- `\maketitleofchinese`，用于生成中文标题、姓名及单位信息
- `\maketitleofenglish`，用于生成英文文标题、姓名及单位信息
- `\abstractofchinses`，用于生成中文摘要；
- `\abstractofenglish`，用于生成英文摘要；
- `\thanking`，用于生成致谢部分的标题；
- `\forthsection`，生成四级标题，需要自行编号，形如（1）、（2）……（或 1.1.1.1、2.1.1.1……）

### 3.3. 命令用法详解

LaTeX/TeX 中的命令都是以 $\backslash$（反斜杠）开始的。命令又分为两种，一种是无参数命令，起声明和执行特定任务作用；另一种是有参数命令。带参命令的参数又有两种类型一种是可选参数（用[ ]来框住，可省略该项参数），另一种是必选参数（用\{ \}来框住）。

本模板中自定义的命令有只有一个是不带参的命令，即`\mytableofcontents`，其余都是带参命令。

#### 3.3.1. 带参命令用法

`\cover{val1}{val2}{val3}{val4}{val5}{val6}{val7}`

这里 val1-val6 分别表示填入的信息依次为：

- val1 = 论文题目
- val2 = 姓名
- val3 = 学号
- val4 = 学院
- val5 = 专业
- val6 = 导师
- val7 = 年月日

例如如下代码就生成了本说明文档的封面。

```latex
\cover{南京信息工程大学本科生毕业论文 LaTeX 模板 \\ Version $2022$}
{路人甲}
{20170000888}
{LaTeX 学院}
{某专业}
{路人乙}
{二Ｏ二一\hspace{0.4em} 年\hspace{0.4em} 六\hspace{0.4em} 月\hspace{0.4em} 五\hspace{0.4em} 日}
```

那接下来看看剩下的几个命令的参数数量及参数所对应的内容是什么：

- `\mytableofcontents`，无参数命令
- `\maketitleofchinese{论文标题}{姓名}{学院}`
- `\maketitleofenglish{英文标题}{英文姓名或拼音}{学院}`
- `\abstractofchinses{中文摘要内容}{中文关键词}`
- `\abstractofenglish{英文摘要内容}{中文关键词}`
- `\thanking{致谢内容}`
- `\forthsection{四级标题文字}`

下面再来举个例子，如下面的这些命令，就可以分别产生本文档前面的中文标题、摘要和英文标题、摘要。

```latex
\maketitleofchinese{南京信息工程大学本科生毕业论文 LaTeX 模板 V2022\footnote{本模板制作时间：2014 年 5 月，修订于 2022 年 1 月}}{路人甲}{LaTeX}

\abstractofchinese{这是一份南京信息工程大学本科生毕业论文 LaTeX 模板。友善提醒：本文档是非官方版，属个人兴趣产物。}{模板；南信大；毕业论文；}

\maketitleofenglish{LaTeX Template for Undergraduate Thesis of Nanjing University of Information Science and Technology}{Some Guy}{School of LaTeX}

\abstractofenglish{This is a LaTeX{~}template for the Undergraduate thesis of Nanjing University of Information Science and Technology. Caution: due to personal interest, not an official template.}{template; NUIST; thesis;}
```

#### 3.3.2. 不带参命令用法

不带参命令 `\mytableofcontents` 用来生成目录。只需原封不动的打出相应命令，编译就会自动执行相应的排版操作，如用 `\mytableofcontents`就可以在命令的位置生成目录页。

## 4. 排版数学公式

LaTeX 强大之处就在于其有很强的数学公式排版能力，如果再加上 `amsmath` 宏包，更是如虎添翼。其中\$ \$表示行内公式，如 `$a^2+b^2=c^2$` 会生成$a^2+b^2=c^2$，而\$\$ \$\$表示行间公式，其实这还不算什么，最重要的是即使处理高度比较高的行间公式时，LaTeX 也会自动处理而不会使文章中的行距突兀地增大，如$x_{1,2}= \frac{-b\pm \sqrt{b^2-4ac}}{2a}$,而命令`$$a^2+b^2=c^2$$`,会产生$$a^2+b^2=c^2$$

上面的就是一个行间公式。

```latex
\begin{equation}
    \label{fomula}
    \begin{cases}
        \dfrac{du}{dt}=-\dfrac{\partial \phi}{\partial x}+fv \\
        \dfrac{dv}{dt}=-\dfrac{\partial \phi}{\partial y}-fu \\
        \dfrac{\partial \phi}{\partial p}=-\dfrac{1}{\rho}   \\
        p= \rho RT                                           \\
        \dfrac{\partial u}{\partial x}+\dfrac{\partial v}{\partial y}+
        \dfrac{\partial \omega}{\partial p}=0                \\
        \dfrac{\partial T}{\partial t}+\overrightarrow{V}\times \nabla_pT-(\Gamma_d-\Gamma)\omega=\dfrac{Q}{c_p}
    \end{cases}
\end{equation}
```

$$
\begin{equation}
    \begin{cases}
        \dfrac{du}{dt}=-\dfrac{\partial \phi}{\partial x}+fv \\\dfrac{dv}{dt}=-\dfrac{\partial \phi}{\partial y}-fu \\\dfrac{\partial \phi}{\partial p}=-\dfrac{1}{\rho} \\p= \rho RT \\\dfrac{\partial u}{\partial x}+\dfrac{\partial v}{\partial y}+\dfrac{\partial \omega}{\partial p}=0 \\\dfrac{\partial T}{\partial t}+\overrightarrow{V}\times \nabla_pT-(\Gamma_d-\Gamma)\omega=\dfrac{Q}{c_p}
    \end{cases}
\end{equation}
$$

式中为气象上常用的大气运动基本方程组，而且这是一个带编号的公式。

公式排版就简单介绍到这里吧，因为对笔者所学的专业来说，论文中很少涉及这方面内容，当然个别研究领域可能会出现许多公式，那就是比较高深的领域了，一般是做动力机理或数值模拟研究时常会用到公式，如果有兴趣可以参见[^x1]。

## 5. 排版图片

### 5.1. 支持图片格式

模板支持的图片格式有：jpg，pdf，eps，png 等。

### 5.2. 插入图片方法

论文中图是很重要的，俗语曰：“一图胜千言，有图有真相”，总之，有图，言者能言之凿凿，观者能察之切切。

图就是插入到文档中的图片，下面展示一下操作的代码：

```latex
\begin{figure}[htbp!]
    \centering
    \includegraphics[width=0.6TeXtwidth]{figs/color/face.png}
    \caption{南京信息工程大学本科生毕业论文 LaTeX 模板封面展示}
    \label{nuist_face}
\end{figure}
```

### 5.3. 并列图及添加子图标题

大家在做论文时的时候经常需要两幅图并排的情况，还记得在 Word 用鼠标一点点的拖动吗，通常拖到最后两幅图安排得还是不尽如人意，就算搞定了一组，下一组又要拖呀拉呀的。当然稍稍高明一点可以借助 Word 的宏命令来控制，但 Word 中宏的学习曲线十分的陡峭，大家在网上找到的宏，自己想重新定制一下，也是比较困难的。下面来看看 LaTeX 是怎样精确控制并排图片占位大小的，从而使其各占一半水平空间。

其实现代码如下：

```latex
\begin{figure}[htbp!]
    \centering
    \includegraphics[width=0.5TeXtwidth]{figs/color/china1.png}\includegraphics[width=0.5TeXtwidth]{figs/color/china2.png}
    \caption{中国地图展示（左图为素颜，右图为彩妆）}
    \label{cn_map}
\end{figure}
```

是不是也想给左右两个子图各加一个标题？那其实也很简单，只要引入 `subfigure` 宏包就可以实现。

当然我们在引用的时候,可以引用母图，如 `\ref{subfig_cn_map}`，也可以引用子图，如 `\ref{subfig_cn_map}\subref{fig:sub1}`，`\ref{subfig_cn_map}\subref{fig:sub2}`。

好了让我们来看实现的代码吧：

```latex
\begin{figure}[htbp!]
    \centering
    \subfigure[素颜\label{fig:sub1}]{\includegraphics[width=0.5TeXtwidth]{china1.png}}
    \subfigure[彩妆\label{fig:sub2}]{\includegraphics[width=0.5TeXtwidth]{china2.png}}
    \caption{中国地图展示}
    \label{subfig_cn_map}
\end{figure}
```

最后再给出一个例子，例如大家在做 EOF 分析时，可能要两个模态之间进行对比，我们知道每一个模态场都有一个时间序列与其对应，所以这样我们还可能用到 $2\times 2$ 形式的图片排列方式，如 `\ref{fig:eof_12}`。

我们可以用下面的命令来实现：

```latex
\begin{figure}[htbp]
    \center
    \subfigure[第一模态]{\label{eof_1}
        \includegraphics[width=0.4TeXtwidth]{eof1.png}
    }\subfigure[第二模态]{\label{eof_2}
        \includegraphics[width=0.4TeXtwidth]{eof2.png}
    }
    \\
    \subfigure[第一模态对应的时间系数]{\label{eof_t1}
        \includegraphics[width=0.4TeXtwidth]{t1.png}
    }\subfigure[第二模态对应的时间系数]{\label{eof_t2}
        \includegraphics[width=0.4TeXtwidth]{t2.png}
    }
    \caption{ABLH 的 EOF 分析结果（第一第二模态及其时间系数）}\label{fig:eof_12}
\end{figure}
```

朋友们应该也发现奥秘所在了，对，就是那个双斜线 $\backslash\backslash$ 的作用，双斜线在 LaTeX 排版系统中就是换行的命令，知道了这一点，大家可以随意安排自己的图片了，可以用 $2\times 3$ 或者 $3\times 2$ 来摆放自己插图了。

### 5.4. 图片文件夹的指定

细心的朋友可能会发现所用的代码在指定图片路径时的写法不同，一种是相对路径，另一种是只有图片名称。这是为什么呢？原因很简单。为了在写作时引用图片方便，本文在导言区写上这样的 `\graphicspath{{figs/color/}}` 命令，来宏观地指定图片所存放的位置。

这一功能的好处就是，对于有的同学电子文档和打印文档所用图片色彩格式不同，这样只要一条命令就可以切换到另一个文件夹了，比较实用。

## 6. 排版表格

LaTeX 中生成简单的表格还是比较方便的，可以用 `tabular` 环境来实现。下面就来做一个论文中经常用到的三线表

其实现代码如下：

```latex
\begin{table}[htbp!]
    \caption{本模板中所用的宏包及功能}\label{table_1}
    \begin{tabular}{ccccccccc}
        \whline
        宏包名称 & amsmath  & caption2 & geometry & ulem   & xcolor & setspace & hyperref & titletoc \\
        \hline
        作用     & 数学公式 & 定制标题 & 页面设置 & 下划线 & 颜色   & 行距     & 超链接   & 目录样式 \\
        \whline
    \end{tabular}
\end{table}
```

如果表格比较长，那就要用到跨页表格排版宏包 `longtable` 了（模板中已引入该宏包）。基本的表格排版情况就介绍这么多，大家感兴趣自己慢慢去探索吧。

另，如果想像 Excel 那样可视化地编辑表格，可以使用神器 [Tables Generator](https://www.tablesgenerator.com/# "https://www.tablesgenerator.com/#")，自动生成表格的 LaTeX 代码。

## 7. 排版代码

本模板使用 listings 宏包排版代码

其实现代码如下：

```latex
\begin{lstlisting}[breaklines=true,language=Python]
    print('Hello World!')
\end{lstlisting}
```

TODO: 如果代码中注释有中文，`XeLaTeX{}` 会警告系统中的仿宋字体不支持斜体，这个问题有待解决。

listings 支持的语言相对有限，如果需要更好的语法高亮效果，可以考虑使用 `minted` 宏包。模板目前尚未实装该宏包，感兴趣的话可以参考[https://zhuanlan.zhihu.com/p/348850937](https://zhuanlan.zhihu.com/p/348850937 "https://zhuanlan.zhihu.com/p/348850937")。

### 7.1 TODO：排版算法伪代码

algorithm 和 algorithmic

```latex
\begin{algorithm}[htbp]
    \floatname{algorithm}{算法}                         % 将 Algorithm 替换为 算法
    \renewcommand{\algorithmicrequire}{\textbf{输入：}} % 将 Require   替换为 输入
    \renewcommand{\algorithmicensure}{\textbf{输出：}}  % 将 Ensure    替换为 输出
    \caption{算法名}
    \label{alg:algorithm}
    \begin{algorithmic}[1] % [1] 使用行号
      \REQUIRE 输入
      \ENSURE 输出

      \STATE 某种操作

      \WHILE{while 循环控制}
        \STATE 某种操作
      \ENDWHILE

      \FOR{for 循环控制}
        \STATE 某种操作
      \ENDFOR

      \IF{if 条件控制}
        \STATE 某种操作
      \ELSE
        \STATE 某种操作
      \ENDIF

      \STATE \textbf{return} 返回值
    \end{algorithmic}
\end{algorithm}
```

## 8. 排版参考文献及引用

### 8.1. 使用 bibliography 排版参考文献

编写参考文献一章是个很无聊的工作，且工作量不小。使用“GB/T 7714—2015 BibTeX Style”[^x6]排版参考文献可以省去模板用户研究参考文献排版规范的时间。尽管知网提供 GB/T 7714—2015 格式引文，但是知网提供的引文其实存在一个小问题：标点后没有空格，需要我们自行添加空格（知网外文文献提供的可供复制的引文做的更差，居然敢说是 GB/T 7714—2015 格式的……）。至于外文文献，引文基本上需要我们对照规范自行编辑。将参考文献排版工作交给程序，将我们从这个无聊且耗时的工作中解放出来。

模板用户需要编辑 [bibliography.bib](https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template/blob/main/bibliography.bib "https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template/blob/main/bibliography.bib") 文件，填写参考文献的各项属性，如 title、author、year 等，具体请参考 [https://github.com/CTeX-org/gbt7714-bibtex-style#%E6%96%87%E7%8C%AE%E7%B1%BB%E5%9E%8B](https://github.com/CTeX-org/gbt7714-bibtex-style#%E6%96%87%E7%8C%AE%E7%B1%BB%E5%9E%8B)。OVERLEAF 网站对 bibtex 有比较详细的解释，如果您想要了解关于 bibliography 文件的基本知识，请参考 [https://www.overleaf.com/learn/latex/Bibliography_management_with_bibtex#The_bibliography_file](https://www.overleaf.com/learn/latex/Bibliography_management_with_bibtex#The_bibliography_file)，其它关于 bibtex 的问题也可以参考该网站。其实 bib 文件的生成工作也可以交给文献管理软件，如 2022 版编者使用的 [Zotero](https://www.zotero.org/ "https://www.zotero.org/")，进一步实现参考文献管理自动化。

bib 文件示例：

```bibtex
@online{x1,
title = {The Not So Short Introduction to LaTeX2e},
year = {2021},
author = {Tobias, O and Hubert, P and Irene, H and Elisabeth, S},
url = {http://tug.ctan.org/info/lshort/english/lshort.pdf},
urldate = {2021-06-05},
langid = {english},
}

@book{x2,
title = {LaTeX2e 及常用宏包使用指南},
author = {李平},
date = {2004},
publisher = {{清华大学出版社}},
location = {{北京}},
langid = {中文;}
}
```

示例中的 x1、x2 为参考文献的标识符，可以随意设定，在正文中使用 `\cite{x1}` 命令即可实现文献交叉引用。

bib 文件编辑完成后，用户需要依次进行下面四个操作：编译 latex、编译 bibtex、编译 latex、编译 latex。2022 版编者在 Visual Studio Code 中推荐设置 Recipe

```json
{
  "name": "XeLaTeX",
  "tools": [
    "xelatex"
  ]
},
{
  "name": "xelatex -> bibtex -> xelatex*2",
  "tools": [
    "xelatex",
    "bibtex",
    "xelatex",
    "xelatex"
  ]
},
```

第一项用于在没有引文变化的情况下默认编译一次 latex（耗时较短），第二项用于引文有变化的情况下使用（会比较耗时）。

若参考文献发生变更，或是编译发生错误，用户需要先清除 `.aux`, `.bbl`, `.blg` 文件后，重新执行以上操作。

学校规定的参考文献排版规范有一点与国标不同：我校要求英文人名仅首字母大写。2022-01-10 更新 bib 样式 [gbt7714-2005-numerical.bst](https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template/blob/main/gbt7714-2005-numerical.bst "https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template/blob/main/gbt7714-2005-numerical.bst")，已实现仅首字母大写、其余字母小写。经考证，姓氏字母全部大写的要求是 gbt7714-2015 版中的修改，而按学校要求使用 gbt7714-2005 版格式，则只有首字母大写。[^陈浩元2015gb]

### 8.2. （已弃用）thebibliography 环境排版参考文献

注释掉 [nuist.cls](https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template/blob/main/nuist.cls "https://github.com/sakronos/NUIST_Bachelor_Thesis_LaTeX_Template/blob/main/nuist.cls") 文件的第 50 行至第 52 行，并取消注释第 55 行至第 57 行，来启用 thebibliography。

使用 thebibliography 环境来排版参考文献，代码如下：

```latex
\begin{thebibliography}{99}\setlength{\itemsep}{-0.1mm}
    \begin{spacing}{1.2}
        \zihao{-5}
        \bibitem{x1}The Not So Short Introduction to
        LaTeX2e \ by Tobias Oetiker, Hubert Partl, Irene Hyna and Elisabeth Schlegl.
        \bibitem{x0}李平．LaTeX2e 及常用宏包使用指南[M]．清华大学出版社，2004．
        \bibitem{x3}罗振东，葛向阳．排版软件 LaTeX 简明手册[M]．第二版．北京：电子工业出版社，2003．
    \end{spacing}
\end{thebibliography}
```

引用文献条目时使用 `\ucite{}` 命令，例如代码 `\ucite{x2}` 就可以产生[^x2]上标。

## 9. 写在后面(第一版作者)

时间过得真快，从五一动手，到码字码到这里差不多快三天了。这么短的时间，不管模板本身还是说明文档肯定还是不够完善的。但时间所迫，也必须到这了。

有人也许行会产生疑问，word 不是用着挺好的吗，干嘛要学这个，干嘛要用这个写论文呢？其实要我回答呢，的确是这样的，随便用哪个排版软件用顺手了就好了，没人强迫你做什么，关键在于自己是怎么想。

去年笔者在写学年论文时，就“吃了亏”，先是用 LaTeX 写的，生成的 pdf 格式的文档，但是最后学院不认，说必须用 word 版的，无奈后来又用 word 重排了一遍。（所以这里插一句，如果真有哪位朋友想用这个模板，请“严重”地考虑这个“严重”的后果，弄不好到最后，只能用它排个打印版玩玩，电子版还得 word 去。）

而对笔者来说，无所谓，不是天空经常会飘来五个字儿，叫“这都不是事儿”嘛，人生本就是向死之生，要是总走直线，太快到终点了怎么办？所以人生的要义就在于走“弯路”，走得越“弯”走得越长嘛。

## 10. 修订

### 10.1. 第二版修订说明

#### 10.1.1. 第二版！新鲜出炉！

两年以后（第二版修订于 2017 年 3 月 13 日，[https://github.com/LirenW/NUIST_thesis_template_V2.0](https://github.com/LirenW/NUIST_thesis_template_V2.0 "https://github.com/LirenW/NUIST_thesis_template_V2.0")，这个模板又被重新更新了一次（原作者应该并没有更新过（因为并不能联系到原作者（sigh。因为每年的格式都会进行一些修改，所以按照现在的格式改了一下模板，特别是字号和字体，并且针对一些问题进行了修改（以下如果感觉麻烦可以略过 233），不过要注意的是，NUIST 一向不欢迎 PDF 格式的论文提交，因此此模板，正如原作者说的那样，需要慎用、慎用和慎用。

对于无法复制 PDF 的问题，由于 CTeX 的设置问题解决方案比较复杂，本模板采用修改字体为 Adobe Song Std 的方法，不过如果要完整解决此问题请参考 [https://www.zhihu.com/question/32207411](https://www.zhihu.com/question/32207411 "https://www.zhihu.com/question/32207411") 这个回答，不过低版本的 CTeX+WinEdit 套装中 CTeX 版本过低无法使用，可以考虑升级全部宏包（此方法可能会导致 WinEdit 宏包冲突，慎用）也可以等新版本的套装（听说快出了）。
关于行距的问题，虽然 word 和 LaTeX 的行距计算方法相同（行距：一行文字的基线（Base Line）到下一行文字的基线的距离，详见[^x4]），但是修改出的文章行距感觉比 word 略宽，不知道为什么，期待后人能解决此问题！

#### 10.1.2. 修订者的话

说完了专业问题，聊点其他的话题好了。笔者接触 LaTeX 也蛮久了，从数学建模就用自己修改的模板进行论文写作，到写毕业论文时还是用 LaTeX，感觉长文章基本脱离 Word 了，不是不会用（不自夸地说，论 Word 排版本人也完全可以完成长文章的各种排版工作），而是感觉 Word 排出来的东西一点也不美。

Knuth 感觉自己写的东西被编辑排成了渣，于是很不开心地花时间做了个排版系统；乔布斯觉得手机太丑，于是自己做了个 iPhone。我也有这种感觉，且不说 Word 那蛋疼的贪心断行算法（最常见的例子的是加上了数学公式和英文字符后完全不对齐的右边界）、令人抓狂的图片摆放，就拿最简单的来说，一个写作软件，为什么要让用户找不到如何更新引用！我知道那复杂的域代码和目录生成，然而一个一个设置它们的格式实在令人发指，并且一个不小心，版面就跑到十万八千里以外。不过什么是美呢？想来对我来说的话就是“Simple is the best”，能让电脑自动计算的事情完全不应该由手工来做，能动脑解决的就绝不动手。

世界是因为懒人才变得舒适，但“懒”往往需要的是 Critical Thinking 和 Curiosity，而对我来说，对美这一形而上的终极目标的追求促使我探索这个世界，而对这个世界无穷无尽的美好的好奇让我在探索的过程中不太无聊。

引用百度百科（好吧我最唾弃百度的各种玩意了）TeX 的词条的一句话吧：

```plain
TeX 是一种乐趣：使用 TeX 不仅仅是一种工作手段，也是一种乐趣。它有挑战，也有荣誉。很多人在熟悉了 TeX 之后都开始把使用 TeX 作为一种爱好，而不是一件枯燥无味的劳动。
```

我使用 TeX 就是因为它简洁明快，让我专注于内容而不需要纠结于无聊的排版疏忽，随意调节结构而不用担心随之而来的格式更新，总而言之就是这个样子。

### 10.2. 2021.6 版修订说明

#### 10.2.1. 南信大与 PDF 格式论文

首先，笔者要和前面两位唱个反调，是时候打破“南京信息工程大学不欢迎 PDF 格式论文”这个传言了。南信大论文系统提交文件处写明“格式建议：word，pdf”，在笔者撰写论文前也确认过可以提交 PDF 格式的论文，最重要的是，笔者自己提交的就是 PDF 格式的论文。南信大并不是不允许 PDF 格式的论文。当然，笔者能够全程使用 LaTeX 撰写论文离不开笔者的毕业设计指导老师的支持，因为今年（2021 年）的《关于毕业论文（设计）材料归档工作的通知》里还是写了“上传论文须 WORD 格式，PDF 格式的论文和设计实现的系统/软件作为附件打包上传至系统。”，不过指导老师允许笔者最后的归档文件无须提交 Word 文档。

如果您希望使用 LaTeX 撰写论文，建议您向论文指导老师确认对 LaTeX 的态度。下面引用《关于毕业论文（设计）材料归档工作的通知》的部分段落：

```plain
一、需归档的材料

1、任务书；2、开题报告；3、中期检查表；4、外文翻译；5、毕业论文定稿（word 和 PDF 格式）；6、指导教师审阅意见表；7、系统或其他附件

二、归档要求

所有材料的电子版均需保存或上传到“毕业设计（论文）智能管理系统”（下称“系统”）
注：1、上传论文须 WORD 格式，PDF 格式的论文和设计实现的系统/软件作为附件打包上传至系统。如果是软件，还需要写一份软件说明书，说明具体的操作步骤；如果是硬件，建议将硬件保留下来，将硬件演示过程拍一段视频，上传至系统。
```

#### 10.2.2. 更新说明

本次修订（网址：[https://sakronos.github.io/NUIST_Bachelor_Thesis_LaTeX_Template/](https://sakronos.github.io/NUIST_Bachelor_Thesis_LaTeX_Template/ "https://sakronos.github.io/NUIST_Bachelor_Thesis_LaTeX_Template/") 根据南信大 2021 年本科毕业论文格式要求对原有模板进行修订，参考了《南京信息工程大学 LaTeX 毕业论文模板 V3.1》[^gei2021]。关于页码、声明页、按章编号等《南京信息工程大学本科生毕业论文（设计）撰写排版规范》没有提及的额外排版要求则是根据笔者导师要求设定的，如果与您所在学院老师要求发生冲突，请报告。

由于时间较长，笔者无法一一列出本次修改的具体内容，这里根据记忆尽量列出修订内容：

- 调整了几处字体大小
- 将图片、表格、公式设置为按章编号
- 添加了声明页
- 设置了页码
- 使用 GB/T 7714—2015 BibTeX Style 排版参考文献
- 限定模板使用的字体为 SimSun、SimHei、SimKai 和 Times New Roman
- 替换已弃用的宏包和命令
- 更新 `\thanking` 命令，添加 `\forthsection` 命令
- 将 `\linespread` 设置为 1.335，以得到更接近 MS Word 下多倍行距 1.25 的效果
- 图片编号与图片标题间的分隔符设置为空格
- 更新模板介绍

笔者在使用本模板的过程中没有遇到“文字无法复制的问题”，如果有同学遇到该问题请报告。

#### 10.2.3. 闲话

虽然很讨厌写字，但是笔者还是写一点闲话吧。

不像该模板的创建者和第一位修订者，笔者之前并没有使用 LaTeX 的经验。笔者是在写论文的过程中不断摸索 LaTeX 的使用方法，对 LaTeX 的了解很少，因此笔者怀着诚惶诚恐的心情修订这份模板。各位如果能指出模板和本文中的错误，笔者会非常开心的。笔者也期待各位加入本模板的修订工作，笔者的文字功力太差，难免写出晦涩难懂的语句，需要各位帮助补充/润色模板文档。

下面是吐槽，Windows 系统下的 TeX Live Manager 这个图形化工具做的很是不好，更新 Packages 时不能最小化。刚刚笔者用 Windows 的显示桌面强行最小化这个工具后，无法还原到桌面了！！！笔者现在不知道更新的进度，只能等它在后台更新完……以后还是老老实实地用命令行更新了。（现在发现能用任务管理器强行最大化 TeX Live Manager）

#### 10.2.4. 致谢

本次修订首先要感谢本模板的制作者和 2.0 版修订者，如果没有这两位的工作，我不会鼓起勇气使用 LaTeX 撰写毕业论文，本次修订也是在这两位的工作基础上进行的。

然后，感谢我的毕业论文指导老师，感谢老师指出论文排版不美观的地方，帮助我改进该模板。

最后，感谢《南京信息工程大学 LaTeX 毕业论文模板 V3.1》的制作者。虽然本次修订工作与这位的算是各自进行，但是您的工作给了我不少启发，也激励我在提交论文后继续完善本模板。您的 CLS 文件层级分明，值得学习。遗憾的是您留下的邮箱地址不存在，无法与您取得联系。

### 10.3. 2022 版修订说明

#### 10.3.1. 更新内容

- 封面信息允许换行，以免遇到如“计算机学院、软件学院、网络空间安全学院”这样实在写不下的学院名称
- 解决参考文献作者全部大写的问题

#### 10.3.2. 闲话 2

鉴于作者和前两位修订者都写了这部分，本人也凑个热闹。然而本人写作水平实在不行，就少写一点好了。

本人是 word 的积极反对者（x，属于能不用就不用那种，平时笔记用 markdown，展示用 slidev，遇到要求用 word 写的作业每次都痛不欲生，调格式时间远大于写作时间。

大二接触了 latex 之后也一度萌生过造一个模板的想法，但是愉快地放弃了。最近准备写毕业论文，看到 github 上的这份模板，感觉好像可以脱离 word 苦海了，一个 star 一个 fork，结果就被拉来当 22 年的 maintainer。

目前感觉模板能用，还没遇到什么很难解决的问题，再过几个月说不定就有了，到时候在解决罢！

---

[^x1]: Tobias O, Hubert P, Irene H, et al. The Not So Short Introduction to LaTeX2e.
[^x2]: 李平. LaTeX2e 及常用宏包使用指南.
[^x3]: 罗振东，葛向阳. 排版软件 LaTeX 简明手册.
[^x4]: 刘海洋. LaTeX 入门.
[^x5]: CTeX-org. CTEX 宏集手册.
[^x6]: CTeX-org. CTeX-org/gbt7714-bibtex-style.
[^gei2021]: 給. 南京信息工程大学 LaTeX 毕业论文模板 V3.1 更新 (无需依赖 CTeX 软件，修复了复制文字乱码的问题）.
[^陈浩元2015gb]: 陈浩元. GB/T 7714 新标准对旧标准的主要修改及实施要点提示.
