\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nuist}
\LoadClass[a4paper,zihao=5,UTF8]{ctexart} % 基于LaTeX的标准文档类型ctexart

\usepackage{xeCJK} % 中文支持
\usepackage{ulem}  % 文字下划线等样式

% 页边距
\usepackage{geometry}
\geometry{left=3cm,right=3cm,top=2.5cm,bottom=2.5cm} % ,headsep=12pt,headheight=20pt,footskip=24pt
% 设定页眉为空
\pagestyle{plain}

% 设置各种字体
\setCJKmainfont[AutoFakeBold,AutoFakeSlant]{SimSun} % 设置宋体

\setCJKfamilyfont{localsimsun}[AutoFakeBold,AutoFakeSlant]{SimSun}
\renewcommand{\songti}{\CJKfamily{localsimsun}}

\setCJKfamilyfont{localheiti}[AutoFakeBold,AutoFakeSlant]{SimHei}
\renewcommand{\heiti}{\CJKfamily{localheiti}}

\setCJKfamilyfont{localkaishu}[AutoFakeBold,AutoFakeSlant]{[simkai.ttf]}
\renewcommand{\kaishu}{\CJKfamily{localkaishu}}

\setmainfont{Times New Roman}
\setmonofont{Times New Roman}
% \usepackage{times}
% 其他的一些数学字体，可酌情使用
% \usepackage{unicode-math}
% \setmathfont{Cambria Math}
% \setmathfont{Latin Modern Math}

\usepackage{enumerate} % 列表

\renewcommand{\thefootnote}{\arabic{footnote}〕} % 设置脚注格式

% \usepackage{setspace}
\linespread{1.354}
% 1.25倍行距：此处注意行距的换算
% 1.25 ∗ 1.3 / 1.2 = 1.3541667
% 参考 https://blog.csdn.net/weixinhum/article/details/104594454

% 算法伪代码
\usepackage{algorithm}
\usepackage{algorithmic}

% 程序代码
\usepackage{listings}
\lstset{basicstyle=\zihao{-5}\ttfamily,flexiblecolumns,}
\usepackage{tcolorbox}
\tcbuselibrary{listings}

% 颜色
\usepackage{xcolor}
\usepackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black,urlcolor=black]{hyperref}
% 第三版修订者留下的提醒：如果标题百分号 % 和汉字同时出现，则会报错。推荐最后打开

% 图
\usepackage{graphicx}
\graphicspath{{./figs/color/}} % 图片默认文件夹
% 子图
\usepackage{subfigure}
\renewcommand{\thesubfigure}{（\alph{subfigure}）}
% 将子图序号设置为（a）

% 表
\usepackage{booktabs}             % 设置表格样式，可使用“三线表”
\usepackage{multirow}             % 表格合并单元格
\usepackage{longtable}            % 跨页表格
\renewcommand{\arraystretch}{1.5} % 表格行距

% 公式
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{bm} % 方便的公式加粗

% 公式序号使用中文括号
\usepackage{mathtools}
\newtagform{brackets}{（}{）}
\usetagform{brackets}

% 图注表注字号
\usepackage{caption}
\renewcommand{\captionfont}{\zihao{-5}}
\renewcommand{\captionlabelfont}{}
\captionsetup{labelsep=space}

% 图、表、公式编号与章节关联
\numberwithin{figure}{section}
\numberwithin{table}{section}
\numberwithin{equation}{section}

% 其他不常用包
\usepackage{xltxtra}  % 用于输出 \LaTeX 等
\usepackage{shapepar} % 用于原作者致谢里的 \heartpar，可删除
% \usepackage{fancyhdr}
% \usepackage{lastpage}
% \usepackage{layout}

% 章节标题格式
\ctexset {
    section       = {
        format    = {\zihao{4} \heiti  \raggedright}
    },
    subsection    = {
        format    = {\zihao{5} \heiti  \raggedright}
    },
    subsubsection = {
        format    = {\zihao{5} \songti \raggedright}
    },
    paragraph     = {
        format    = {\zihao{5} \songti \raggedright},
        runin     = false,
        afterskip = {1.5ex \@plus .2ex}
    } % 修正标题不换行的设置和段后间距
}

% 目录样式的设置
\usepackage{titletoc}
\titlecontents{section}
[0em] {\color{black}\zihao{4}\heiti \addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {} % \hspace*{-2.3em}
{\titlerule*[0.4pc]{.}\contentspage}

\titlecontents{subsection}
[2em] {\color{black}\normalsize\addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {\hspace*{-2.3em}}
{\titlerule*[0.4pc]{.}\contentspage}

\titlecontents{subsubsection}
[4em] {\color{black}\normalsize\addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {\hspace*{-2.3em}}
{\titlerule*[0.4pc]{.}\contentspage}

% 参考文献格式
\usepackage{gbt7714}
\renewcommand*{\bibfont}{\zihao{-5}}
\bibliographystyle{gbt7714-2005-numerical}
% 这里引用同目录下的 gbt7714-2005-numerical.bst，此文件有修改

% 参考文献标题的格式
\renewcommand{\refname}{
    \vspace{2ex}
    \section*{参考文献：}
    \phantomsection
    \addcontentsline{toc}{section}{参考文献}
}
\renewcommand{\bibsection}{\refname}
\setlength{\bibsep}{0.25em} % 缩小参考文献列表项间距

%%%%%%%%%% 格式命令 %%%%%%%%%%
% 封面
% #1: 题目
% #2: 学生姓名
% #3: 学号
% #4: 学院
% #5: 专业
% #6: 指导老师
% #7: 日期
\newcommand{\cover}[7]{
    \begin{titlepage}
        \begin{center}
            \vspace*{12mm}
            \includegraphics[scale=1]{nuist_logo/nuist.pdf}

            \vspace*{1cm}
            \heiti\zihao{-1}本科生毕业论文(设计)\\

            \vspace*{6mm}
            \includegraphics[scale=1]{nuist_logo/xiaohui.jpg}

            \vspace*{16mm}
            \zihao{3}{\bfseries \songti \hspace*{.3cm}题~~~~目~~~~}
            \uline{\parbox[b]{120mm}{\center{\bfseries {#1}}}}
            \hfill

            \vspace*{24mm}
            \zihao{-3}\songti{学生姓名}
            \uline{\parbox[b]{58mm}{\center{#2}}}
            \hfill

            \vspace*{1.6mm}
            \zihao{-3}\songti{学~~~~~~~~号}
            \uline{\parbox[b]{58mm}{\center{#3}}}
            \hfill

            \vspace*{1.0mm}
            \zihao{-3}\songti{学~~~~~~~~院}
            \uline{\parbox[b]{58mm}{\center{#4}}}
            \hfill

            \vspace*{1.0mm}
            \zihao{-3}\songti{专~~~~~~~~业}
            \uline{\parbox[b]{58mm}{\center{#5}}}
            \hfill

            \vspace*{1.0mm}
            \zihao{-3}\songti{指导教师}
            \uline{\parbox[b]{58mm}{\center{#6}}}
            \hfill

            \vspace*{20mm}
            \bfseries\zihao{-2}{#7}
        \end{center}
    \end{titlepage}
    \makestatement
}

% 声明
\usepackage{enumerate}
\newcommand{\makestatement}{
    \newpage
    \vspace*{0.3cm}
    \begin{center}
        \bf{\zihao{-1}{声\quad 明}}\\[1em]
    \end{center}
    \zihao{4}{~}

    \noindent\zihao{3}{本人郑重声明：}

    \begin{enumerate}[1、\hspace*{1em}]
        \item 以“求实、创新”的科学精神从事科学研究工作。
        \item 本论文中除引文外，所有测试、数据和相关材料均为真实有效的。
        \item 本论文是我个人在指导教师的指导下进行的研究工作和取得的研究成果，请勿用于非法用途。
        \item 本论文中除引文和致谢的内容外，并未抄袭其他人或其他机构已经发表或撰写过的研究成果。
        \item 关于其他同志对本研究所做的贡献均已在论文中作了声明并表示了谢意。
    \end{enumerate}

    \vspace*{8em}

    \begin{flushright}
        \zihao{3}{作者签名：\quad \quad \quad \quad }

        \zihao{3}{日期：\quad 年\quad 月\quad 日}
    \end{flushright}

    \zihao{5}{~}
    \thispagestyle{empty}
    \newpage
}

% 目录
\newcommand{\mytableofcontents}{
    \pagenumbering{Roman}
    \renewcommand{\contentsname}{}
    {\zihao{3}\heiti
        \begin{center}
            目\quad 录
        \end{center}}
    \vspace*{-4.5em}
    \tableofcontents
}

% 摘要页中文标题
% #1: 论文题目
% #2: 作者
% #3: 学院
\newcommand{\maketitleofchinese}[3]{
    \newpage
    \begin{center}
        \zihao{3} \heiti #1

        \zihao{5} ~ \vspace*{0.8em}

        \zihao{4} \songti #2 \vspace*{0.5em}

        \zihao{-5} 南京信息工程大学#3学院，江苏\ 南京\ 210044
        
        \zihao{5} ~
    \end{center}
}
% 摘要页中文摘要
% #1: 摘要
% #2: 关键词
\newcommand{\abstractofchinese}[2]{
    \noindent \zihao{5} \heiti 摘要：\zihao{5}\kaishu{#1}

    \noindent \zihao{5} \heiti 关键词：\zihao{5}\kaishu{#2}
    \songti \zihao{5}
}

% 摘要页英文标题
% #1: 论文题目
% #2: 作者
% #3: 学院
\newcommand{\maketitleofenglish}[3]{
    \newpage
    \begin{center}
        \zihao{3} \textbf{#1}

        \zihao{5} ~ \vspace*{0.8em}

        \zihao{4} #2 \vspace*{0.5em}

        \zihao{-5} #3，NUIST，Nanjing 210044，China

        \zihao{5} ~
    \end{center}
}
% 摘要页英文摘要
% #1: 摘要内容
% #2: 关键词
\newcommand{\abstractofenglish}[2]{
    \noindent \zihao{5} \textbf{Abstract：} \zihao{5} #1

    \noindent \zihao{5} \textbf{Key words：} \zihao{5} #2
    \newpage
}

% 致谢标题
% #1: 致谢内容
\newcommand{\thanking}[1]{
    \clearpage

    \begin{center}
        \zihao{4} \heiti 致谢
    \end{center}
    \phantomsection
    \addcontentsline{toc}{section}{致谢}

    \vspace{1.6em} \par
    \zihao{5}\kaishu #1
}
%%%%%%%%%% 格式命令 %%%%%%%%%%

%%%%%%%%%% WARN：弃用命令！ %%%%%%%%%%
% 四级标题，不显示在目录中，需要自行添加标题编号，如：（1）
% 替代：使用 LaTeX 的 \paragraph 命令，\forthsection 将在未来版本中弃用
\newcommand{\forthsection}[1]{
    \vspace*{0.4em}
    \noindent\zihao{5}{#1}
    \vspace*{0.6em}
}
%%%%%%%%%% WARN：弃用命令！ %%%%%%%%%%
