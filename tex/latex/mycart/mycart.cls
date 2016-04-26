\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycart}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass{ctexart}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   PACKAGES AND OTHER DOCUMENT CONFIGURATIONS  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[l2tabu, orthodox]{nag}
%Useless for XeLaTeX
%\RequirePackage[utf8]{inputenc}
%\RequirePackage[T1]{fontenc}
%\RequirePackage{microtype}

%Math
\RequirePackage{mathtools}
    \DeclarePairedDelimiter\ceil{\lceil}{\rceil}
    \DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\RequirePackage{amssymb}
\RequirePackage{bm} %bold math symbols for vectors and so on
\RequirePackage{amsthm}
\RequirePackage{braket}

% Margin and Format
\RequirePackage[margin=1in]{geometry}
\headsep=0.25in 
% \textwidth=6.5in
% \textheight=9.0in

\RequirePackage{titling}
\RequirePackage{titlesec} %Define title formats
    %\newcommand{\sectionbreak}{\clearpage} % make new section begin a newpage
\RequirePackage{titletoc}

% To deal with titlesec overwriting \thetitle ... Just a varible saves it.
\let\oldtitle\title
\renewcommand{\title}[1]{\oldtitle{#1}\newcommand{\thistitle}{#1}}

\RequirePackage{fancyhdr} % Required for custom headers
  \pagestyle{fancy}
      % Set up the header and footer
      \lhead{\theauthor} % Top left header
      \chead{\thistitle} % Top center header
      \rhead{\leftmark} % Top right header
      \lfoot{} % Bottom left footer
      \cfoot{\thepage} % Bottom center footer
      \rfoot{} % Bottom right footer
      % \renewcommand\footrulewidth{0.4pt} % Size of the footer rule


%Misc
\RequirePackage{lastpage} % Required to determine the last page for the footer
\RequirePackage{extramarks} % Required for headers and footers
\RequirePackage{graphicx} % Required to insert images
\RequirePackage[space]{grffile} % deal with space in windows file path
\RequirePackage{xcolor} % Required for custom colors
\RequirePackage{booktabs} % Required for beautiful tables
\RequirePackage{cleveref}
\RequirePackage{siunitx}
%\RequirePackage[us]{datetime}
\RequirePackage[shortlabels,inline]{enumitem}
    \setlist{leftmargin=*}
    \setlist[enumerate]{{\bf A.}}

\RequirePackage[pdfauthor={孙晖},
            % pdftitle={Assignment}
            ]{hyperref}
\RequirePackage{bookmark}

\author{孙晖}