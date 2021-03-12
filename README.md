### thesis-template

A template package following the TUM informatics thesis guidlines. It aims to be simple to use and extend, providing only the preface pages required in the guidlines. All other configuration like page margins, headings, etc. are left to the user.

**TUM informatics guidlines:** https://www.in.tum.de/fuer-studierende/pruefungen-und-formalitaeten/abschlussarbeit/

There are also other thesis templates available, e.g. https://github.com/fwalch/tum-thesis-latex.

### Usage

Copy `example-config.tex` as `my-config.tex` to your project directory and add your information. Find the TUM logos (e.g. from the mytum CI website) and copy them into some folder, e.g. `res/logos` as `tum-logo.pdf` and `faculty-logo.pdf`. Create `content/my-abstract.tex` and `content/my-acknowledgment.tex` with your abstract and acknowledgment. In your main tex file, use the thesis template package as shown in the following snippet.

```
\documentclass[11pt,a4paper]{report}
\usepackage[logos=res/logos,config=my-config,abstract=content/my-abstract,acknowledgment=content/my-acknowledgment]{thesis-template}

% User macros, packages, etc.
% \input{my-macros}

\begin{document}
	\preface
	
	\toc
	
	% User content.
	% \input{my-content}
	
	% Bibliography.
	% e.g. \printbibliography
\end{document}
```

Make sure your compiler can find the thesis-template package. The `env.sh` script adds the package to the `TEXINPUT` environment variable. For example, clone the repository into some directory and from your project's root directory, call

```
../thesis-template/env.sh lualatex ...
```

### Some hints

- Use the flag `-output-directory=build` of the tex compiler to have all output files in a separate build directory.
- Customize your page margins using the `geometry` package.
- Customize your chapter format using the `titlesec` package. 
- Add header and footer using the `fancyhdr` package.
- Use the package `todonotes` for todos.
