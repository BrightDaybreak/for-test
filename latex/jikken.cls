%
% 実験報告用 LaTeX クラスファイル
%

% 作成者： 山田俊行
% 作成日： 2006年6月1日
% 更新日： 2006年6月5日
% 更新日： 2007年4月8日
% 更新日： 2009年4月1日
% 更新日： 2020年4月13日
% 更新日： 2020年11月20日

% 自由に複製して使ってください

\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{jikken}[2006/06/01]
%「報告者氏名」「共同実験者氏名」の「氏名」を削除，余白の幅を調整
%\ProvidesClass{jikken}[2006/06/05]
%オプションの反映
%\ProvidesClass{jikken}[2009/04/01]
%受付と評価の欄，実験番号を廃止，平成から令和への変更
\ProvidesClass{jikken}[2020/04/13]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jarticle}}
\ProcessOptions
\LoadClass{jarticle}
\addtolength{\textwidth}{3cm}
\addtolength{\oddsidemargin}{-1.5cm}
\addtolength{\evensidemargin}{-1.5cm}
\addtolength{\textheight}{3cm}
\addtolength{\topmargin}{-1.5cm}

\RequirePackage{ifthen}

%
% オプションの定義
%

\newboolean{useexample} \setboolean{useexample}{true} % 標準：記入例あり
\newboolean{group}      \setboolean{group}{true}      % 標準：共同実験

\DeclareOption{blank}{\setboolean{useexample}{false}} % 記入例なし
\DeclareOption{indiv}{\setboolean{group}{false}}      % 個別実験

\ProcessOptions

%
% 表紙の各部分の定義
%

\newcommand{\表題}[1]{\bfseries #1~~報 告 書}

\newcommand{\実験題目}[1]{
  \begin{tabular}{@{}p{7em}@{}p{17em}@{}}
    実 験 題 目  & \makebox[17em][c]{#1}\\
                   \cline{2-2}
  \end{tabular}
}

\newcommand{\dat}[1]{\makebox[8em][c]{\large #1}}  % 日付の中寄せ用

\newcommand{\実施日一覧}[6]{
  \begin{tabular}{@{}p{7em}@{}p{8em}@{}p{1em}@{}p{8em}@{}}
    実 施 日     & \dat{#1} & & \dat{#2}\\
                   \cline{2-2}  \cline{4-4}
                 & \dat{#3} & & \dat{#4}\\
                   \cline{2-2}  \cline{4-4}
                 & \dat{#5} & & \dat{#6}\\
                   \cline{2-2}  \cline{4-4}
  \end{tabular}
}

\newcommand{\報告書作成日}[1]{
  \begin{tabular}{@{}p{7em}@{}p{17em}@{}}
    報告書作成日 & \makebox[17em][c]{#1}\\
                   \cline{2-2}
  \end{tabular}
}

\newcommand{\番号と氏名}[2]{\makebox[17em][c]{#1 \quad #2}}

\ifthenelse{\boolean{group}}{

% 共同実験のとき
\newcommand{\報告者一覧}[8]{
  \begin{tabular}{@{}p{7em}@{}p{17em}@{}}
    報 告 者     & #1\\
                   \cline{2-2}
    共同実験者   & #2\\
                   \cline{2-2}
                 & #3\\
                   \cline{2-2}
                 & #4\\
                   \cline{2-2}
                 & #5\\
                   \cline{2-2}
                 & #6\\
                   \cline{2-2}
                 & #7\\
                   \cline{2-2}
                 & #8\\
                   \cline{2-2}
  \end{tabular}
}

}{

% 個別実験のとき
\newcommand{\報告者一覧}[1]{
  \begin{tabular}{@{}p{7em}@{}p{17em}@{}}
    報 告 者     & #1\\
                   \cline{2-2}
  \end{tabular}
}

} % end \ifthenelse{\boolean{single}}

%\newcommand{\所属}{三重大学 工学部 情報工学科}
\newcommand{\所属}{三重大学 工学部 総合工学科 情報工学コース}

%
% 表紙の割り付け
%

\newcommand{\表紙}{
  \renewcommand{\baselinestretch}{1.5}
% 高さが十分あるなら次の行を有効にする
% \renewcommand{\baselinestretch}{1.8}
  \thispagestyle{empty}
  \Large
  \vspace*{10ex}
  \begin{center}
     {\Huge \表題{\科目名}}\\[2ex]
     \実験題目{\makebox[17em]{\実験名}}
     \実施日一覧{\実施日１}{\実施日２}{\実施日３}%
                {\実施日４}{\実施日５}{\実施日６}\\
     \報告書作成日{\large \作成日}\\
     \par\vspace{2ex}
     \ifthenelse{\boolean{group}}{
     \報告者一覧{\報告者}{\実験者１}{\実験者２}%
                {\実験者３}{\実験者４}{\実験者５}%
                {\実験者６}{\実験者７}\\[8ex]
     }{
     \報告者一覧{\報告者}\\[8ex]
     }
     \par
     {\LARGE \所属}
  \end{center}
  \newpage
  \renewcommand{\baselinestretch}{1}
  \normalsize
}

%
% 記入項目の標準設定
%

\newcommand{\科目名}{情 報 工 学 実 験~~I・II}

\ifthenelse{\boolean{useexample}}{
  % 例あり
  \newcommand{\実験名}{}%コンパイラの設計と製作
  \newcommand{\作成日}{\本年 10月1日}
  \newcommand{\学年}{2}
  \newcommand{\num}{?}
  \newcommand{\groupnum}{?}
  \newcommand{\samplenum}{400001}
  \newcommand{\samplename}{三重野　絵美}
}{
  % 例なし
  \newcommand{\spc}{\hspace{.8em}}
  \newcommand{\実験名}{\hfill}
  \newcommand{\作成日}{}
  \newcommand{\学年}{\spc}
  \newcommand{\num}{\spc}
  \newcommand{\groupnum}{\spc}
  \newcommand{\samplenum}{\spc\spc}
  \newcommand{\samplename}{\hfill}
}
