\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nuist}
\LoadClass[a4paper,zihao=5,UTF8]{ctexart}%基于LaTeX的标准文档类型ctexart
\usepackage{xeCJK}
\usepackage{subfigure}
\usepackage{xltxtra}

\RequirePackage{geometry}
\geometry{left=3cm,right=3cm,top=2.5cm,bottom=2.5cm}%,headsep=12pt,headheight=20pt,footskip=24pt
%设定页眉为空
\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage{layout}
\pagestyle{plain}                   %设置页眉页脚 

\setlength\textfloatsep{10pt}%浮动体出现在页首或者页底时，浮动体与下方或者上方文字之间的距离
\setlength\abovecaptionskip{8pt}%图表标题上方的空白距离
\setlength\belowcaptionskip{6pt}%图表标题下方的空白距离
\setlength\arrayrulewidth{1pt}%列表线宽1pt
\newlength\savedwidth
\newcommand\whline{%定义粗线命令\whline，宽2pt
		\noalign{\global\savedwidth\arrayrulewidth\global\arrayrulewidth 1.2pt}
		\hline
		\noalign{\global\arrayrulewidth\savedwidth}}
%\renewcommand{\arraystretch}{1.5}%表格行距

%设置各种字体
\setCJKfamilyfont{localsimsun}[AutoFakeBold]{SimSun}
\renewcommand{\songti}{\CJKfamily{localsimsun}}

\setCJKmainfont[AutoFakeBold]{SimSun}%设置宋体

\setCJKfamilyfont{localheiti}[AutoFakeBold]{SimHei}
\renewcommand{\heiti}{\CJKfamily{localheiti}}

\setCJKfamilyfont{localkaishu}[AutoFakeBold]{[simkai.ttf]}
\renewcommand{\kaishu}{\CJKfamily{localkaishu}}

\setmainfont{Times New Roman}
\setmonofont{Times New Roman}
%\usepackage{times}
%其他的一些数学字体，可酌情使用
%\usepackage{unicode-math}
%\setmathfont{Cambria Math}
%\setmathfont{Latin Modern Math}

%设置引用格式
\RequirePackage{ulem}
% GB/T 7714-2015 使用形如\bibliography{20171344016_graduation_thesis}的命令引入.bib文件
\usepackage{gbt7714}
\renewcommand*{\bibfont}{\zihao{-5}}
\bibliographystyle{gbt7714-2005-numerical}%GBT7714 顺序编码制

%第一版使用的thebibliography环境排版参考文献
%\usepackage[numbers,sort&compress]{natbib}
%\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}
%\newcommand{\ucite}[1]{$^{\mbox{\scriptsize\cite{#1}}}$}


%插入程序代码
\usepackage{listings}
\lstset{basicstyle=\zihao{-5}\ttfamily,flexiblecolumns,}
\usepackage{tcolorbox}
\tcbuselibrary{listings}

\RequirePackage{xcolor}
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black,urlcolor=black]{hyperref}%第三版修订者留下的提醒：如果标题百分号%和汉字同时出现，则会报错。推荐最后打开

\usepackage{setspace}
\linespread{1.335}%1.25倍行距：此处注意行距的换算方法！
%修改图注字号
\usepackage{caption}
\renewcommand{\captionfont}{\zihao{-5}}
\renewcommand{\captionlabelfont}{}
\captionsetup{labelsep=space}

\usepackage{amsmath}
\numberwithin{figure}{section}
\usepackage{amssymb}
\usepackage{graphicx}
\graphicspath{{./figs/color/}}		%图片默认文件夹
\usepackage{lastpage}
\usepackage{booktabs}%设置表格样式，可使用“三线表”
\usepackage{longtable}
\numberwithin{table}{section}
\numberwithin{equation}{section}	%公式与章节关联

\usepackage{shapepar}

\RequirePackage{graphicx}

\ctexset{section={format={\zihao{4} \heiti \raggedright}}}
\ctexset { subsection = { format={\zihao{5}\heiti \raggedright } } }
\ctexset { subsubsection = { format={\zihao{5} \songti \raggedright } } }

%目录样式的设置
\RequirePackage{titletoc}
\titlecontents{section}
[0em] {\color{black}\zihao{4}\heiti \addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {}%\hspace*{-2.3em}
{\titlerule*[0.4pc]{.}\contentspage}

\titlecontents{subsection}
[2em] {\color{black}\normalsize\addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {\hspace*{-2.3em}}
{\titlerule*[0.4pc]{.}\contentspage}

\titlecontents{subsubsection}
[4em] {\color{black}\normalsize\addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {\hspace*{-2.3em}}
{\titlerule*[0.4pc]{.}\contentspage}

%致谢标题
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
%参考文献
\renewcommand{\refname}
{
	\section*{参考文献：}
	\phantomsection
	\addcontentsline{toc}{section}{参考文献}
}

%四级标题，不显示在目录中，需要自行添加标题编号，如：（1）
\newcommand{\forthsection}[1]{
	\vspace*{0.4em}

	\noindent\zihao{5}{#1}
	
	\vspace*{0.6em}
}

%中文摘要
\newcommand{\abstractofchinese}[2]{
	\thispagestyle{empty}
\vspace*{-1em}
\begin{quotation}
\noindent \zihao{5}\heiti \quad 摘要：\zihao{5}\kaishu{#1}

\noindent \zihao{5} \heiti \quad 关键词：\zihao{5}\kaishu #2
\end{quotation}
}
%英文摘要
\newcommand{\abstractofenglish}[2]{
	\thispagestyle{empty}
\vspace*{-1em}
\begin{quotation}
\noindent \zihao{5} \textbf{Abstract:} {\zihao{5} #1
}\\
{\zihao{5} \textbf{Key words:}} \zihao{5} #2
\end{quotation}
\newpage
}

%插入目录
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

%中文标题
\newcommand{\maketitleofchinese}[3]{
	\newpage
	\vspace*{0.3cm}
	\begin{center}
		\zihao{3}\heiti #1\\[1em]\zihao{4}\songti #2\\[0.8em]
		\zihao{-5} 南京信息工程大学#3学院，江苏\ 南京\ 210044
	\end{center}
}
%英文标题
\newcommand{\maketitleofenglish}[3]{
\newpage
\vspace*{0.3cm}
\begin{center}
\zihao{3} \textbf{#1}\\[1em]
\zihao{4}#2\\[0.8em]
\zihao{-5} #3，NUIST，Nanjing 210044，China
\end{center}
}


%封面
\newcommand{\cover}[7]{
\begin{titlepage}
\begin{center}
\vspace*{1.2cm}
\includegraphics[scale=1]{nuist_logo/nuist.pdf}

\vspace*{1cm}
\heiti\zihao{-1}本科生毕业论文(设计)\\
\vspace*{0.6cm}
\includegraphics[scale=1]{nuist_logo/xiaohui.jpg}

\vspace*{1.6cm}
\zihao{3}{\bfseries \songti \hspace*{.3cm}题~~~~目~~~~\uline{\parbox[b]{120mm}{\center{#1}}}\hfill}


\vspace*{2.4cm}
\zihao{-3}\songti{学生姓名}\uline{\parbox[b]{58mm}{\center{#2}}}\hfill

\vspace*{1.6mm}
\zihao{-3}\songti{学~~~~~~~~号}\uline{\parbox[b]{58mm}{\center{#3}}}\hfill

\vspace*{1.0mm}
\zihao{-3}\songti{学~~~~~~~~院}\uline{\parbox[b]{58mm}{\center{#4}}}\hfill

\vspace*{1.0mm}
\zihao{-3}\songti{专~~~~~~~~业}\uline{\parbox[b]{58mm}{\center{#5}}}\hfill

\vspace*{1.0mm}
\zihao{-3}\songti{指导教师}\uline{\parbox[b]{58mm}{\center{#6}}}\hfill


\vspace*{20mm}
\bfseries\zihao{-2}#7
\end{center}
\end{titlepage}
\makestatement
}
