### thesis-template

A simple template package following the TUM informatics thesis guidlines.

### TUM informatics guidlines

https://www.in.tum.de/fuer-studierende/pruefungen-und-formalitaeten/abschlussarbeit/

### Usage

Copy `example-config.tex` to your project directory and add your information. Find the TUM logos (mytum CI website) and copy them into some folder, e.g. `res/logos` as `tum-logo.pdf` and `faculty-logo.pdf`.

In your main tex file, add

```
\usepackage[logos=res/logos, config=my-config]{thesis-template}

\begin{document}
    \preface
    
    \tableofcontents
    
    ...
\end{document}
```

Make sure your compiler can find the thesis-template package.

The `env.sh` script adds the package to the `TEXINPUT` environment variable. For example, clone the repository into some directory and from your project's root directory, call

```
../thesis-template/env.sh lualatex ...
```
