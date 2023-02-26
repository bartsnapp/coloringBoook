\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coloringbookclass}[2023/01/12 Document Class for Math Coloring Book]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


\LoadClass{article}

%% Page size
\usepackage[left=1cm,right=1cm,top=1cm,bottom=1cm,paperwidth=29.7cm,paperheight=21cm]{geometry}


%% For the environments
\usepackage{environ}

\NewEnviron{image}{\global\let\image\BODY}

\NewEnviron{explanation}{\global\let\explanation\BODY}

\NewEnviron{mathConnections}{\global\let\mathConnections\BODY}


\usepackage{graphicx}
\graphicspath{  
{./}
{../graphics/}
}


\let\origenddocument\enddocument
\renewcommand{\enddocument}{\maketitle\origenddocument}

\pagenumbering{gobble}
