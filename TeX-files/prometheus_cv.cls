\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prometheus_cv}[2020/10/14 Here to make editing your CV not an eternal torment]

\RequirePackage{titlesec}

% We customise the \section command 
\titleformat{\section}         
  {\large\scshape\raggedright} % Make the \section headers large, small caps and left aligned
  {}{0em}                      % No label (prefix) and no horizontal separation between label and title body
  {}                           		% Code preceeding the title body
  [\titlerule]                 % Code following the title body. Here a horizontal line.
 
 % We also slightly update \subsection command
 \titleformat{\subsection}
 {\normalsize\scshape\raggedright}
 {}{0em}
 {}
 
 %%% define the \datedsubsection command %%%
\newcommand{\datedsubsection}[4]{%	
	\begin{minipage}{5cm}
		\hspace*{-3cm} 
		\begin{footnotesize} 
			#1 
		\end{footnotesize}
	\end{minipage}
	\raggedright
	\hfill \small{\textlf{\scshape{#2}}}
	
	\vspace*{-1.2em}
	
	\begin{normalsize}
		#3
	\end{normalsize}
	
	\vspace*{.3em}
	\begin{small}
		#4
	\end{small}
	\vspace*{.7em}
}

 %%% define the \datedsubsectionnarrow command %%%
\newcommand{\datedsubsectionnarrow}[4]{%
	\vspace*{.1em}
	\begin{minipage}{5cm}
		\hspace*{-3cm} 
		\begin{footnotesize} 
			#1 
		\end{footnotesize}
	\end{minipage}
	\raggedright
	\hfill {\small{\textlf{\scshape{#2}}}}
	
	\vspace*{-1.2em}
	
	\begin{normalsize}
		#3
	\end{normalsize}
	
	\vspace*{.2em}
	\begin{small}
		#4
	\end{small}
	\vspace*{.2em}
}

\newcommand{\papersubsection}[2]{%	
	\begin{minipage}{5cm}
		\hspace*{-3cm}\footnotesize #1
	\end{minipage}
	\raggedright
	\vspace{-1.2em}
	#2%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DEFINE OUR OWN SUBSECTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcounter{cvsubsection}
\titleclass{\cvsubsection}{straight}[\part]
\titleformat{\cvsubsection}         
	{\raggedright} 
	{}{0em}                      
	{}                           
\titlespacing*{\cvsubsection}{0pt}{3.5ex plus 1ex minus .2ex}{-2.5ex}

% The same but in narrow 
\newcounter{cvsubsectionnarrow}
\titleclass{\cvsubsectionnarrow}{straight}[\part]
\titleformat{\cvsubsectionnarrow}         
	{\raggedright} 
	{}{0em}                      
	{}                           
\titlespacing*{\cvsubsectionnarrow}{0pt}{0pt}{-2.5ex}
