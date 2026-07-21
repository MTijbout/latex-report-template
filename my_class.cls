% !TEX root = main.tex
% ==============================================================================
% Academic Document LaTeX Template
% Author: Marco Tijbout
% License: Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)
% ------------------------------------------------------------------------------
% You are free to share, adapt, and modify this template for personal and 
% academic purposes, provided that:
%   1. Attribution is given ("Based on the template by Marco Tijbout").
%   2. It is not used for commercial purposes or resold.
%   3. Any derivative versions are distributed under the same license (CC BY-NC-SA 4.0).
% 
% For full license details, visit: https://creativecommons.org/licenses/by-nc-sa/4.0/
% ==============================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_class}[2026/07/14 Custom report class]

% Base it on the built-in report class, then adjust as needed
\LoadClass[a4paper,11pt]{report}

% Common packages you'll want almost every time
\RequirePackage[utf8]{inputenc}    % Allows UTF-8 encoded characters in source files.
\RequirePackage[T1]{fontenc}    % Correct hyphenation and accented character rendering.
\RequirePackage[english]{babel}    % Language-specific typographic rules.

% Customizing chapter headings
\RequirePackage{titlesec}    % Fully restyle chapter headings.
%\titleformat{\chapter}[hang]    % (1) Simple, modern — bold sans-serif number and title, no "Chapter" word:
%	{\normalfont\huge\bfseries}
%	{\thechapter}
%	{20pt}
%	{\Huge}
%\titleformat{\chapter}    % (2)Classic book style — "Chapter N" on its own line, title below:
%	{\normalfont\Huge\bfseries}
%	{\chaptertitlename\ \thechapter}
%	{20pt}
%	{\Huge}
%\titleformat{\chapter}    % (3) Minimalist — just a large number, no "Chapter" label, title beside it:
%	{\normalfont\huge\bfseries}
%	{\thechapter.}
%	{10pt}
%	{\huge}
\titleformat{\chapter}    % (4)With a horizontal rule under the heading:
	{\normalfont\Huge\bfseries}
	{\thechapter}
	{20pt}
	{\Huge}
	[\vspace{4pt}\titlerule]

% Separate format for unnumbered chapters (\chapter*), e.g. Declaration,
% Abstract — same font/size as numbered chapters, but without the
% "Chapter N" label, since titlesec otherwise applies it to \chapter*
% too by default.
\titleformat{name=\chapter,numberless}
	{\normalfont\Huge\bfseries}
	{}
	{0pt}
	{\Huge}

% Page Layout settings
\RequirePackage{geometry}    % Configure page margins and layout.
%\RequirePackage{fancyhdr}   % Uncomment when custom headers and footers are required.
\geometry{
	left=2.5cm,
	right=2.5cm,
	top=3cm,
	bottom=3cm    % include , at end when fanchhdr is used.
	%headheight=15pt,   % needed if you add headers later (e.g. via fancyhdr)
	%footskip=1.5cm      % space reserved for footer/page number
}

% Add vertical space between paragraphs, in addition to the
% existing first-line indent, so single-line paragraphs remain
% visually distinct from surrounding text.
\setlength{\parskip}{0.5\baselineskip}

\RequirePackage{graphicx}    % Insert and scale images.
\RequirePackage{hyperref}    % Automatically URL rendering as clickable hyperlink
\hypersetup{colorlinks=true, linkcolor=black, citecolor=black, urlcolor=blue}
\RequirePackage{pdfpages}    % Insert full PDF pages.
\RequirePackage{booktabs}    % Professional-looking table rules.

% --- LongTable ---
\RequirePackage{longtable}    % For long tables that cross pages.

% Custom caption command for longtable, to fix the extra row-spacing
% gap between caption and table body (longtable treats \caption as
% a table row, unlike \table which treats it as a float caption).
\newcommand{\longtablecaption}[2]{\caption{#1}\label{#2}\\[-2ex]}

% Bibliography backend (biblatex + Harvard Style)
\RequirePackage[backend=biber,style=authoryear,natbib=true]{biblatex}    % Bibliography management with Harvard-style citations.
\setlength{\bibitemsep}{1\baselineskip plus 0.5ex minus 0.2ex}

\RequirePackage[acronym,toc]{glossaries}    % Acronym/abbreviation list, included in the ToC.
\makeglossaries

% --- Custom title page fields ---
% These extend the standard \title/\author/\date commands with the
% extra fields needed for a formal cover page (institution, course,
% student number, supervisor, degree statement). Set these in main.tex
% before \input{title}.
\newcommand{\institution}[1]{\gdef\@institution{#1}}
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}
\newcommand{\reporttype}[1]{\gdef\@reporttype{#1}}
\newcommand{\coursename}[1]{\gdef\@coursename{#1}}
\newcommand{\gnumber}[1]{\gdef\@gnumber{#1}}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand{\degreetitle}[1]{\gdef\@degreetitle{#1}}
