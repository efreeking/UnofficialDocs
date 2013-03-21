@ECHO OFF

REM Sphinx 文档的命令文件

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set BUILDDIR=build
set ALLSPHINXOPTS=-d %BUILDDIR%/doctrees %SPHINXOPTS% source
if NOT "%PAPER%" == "" (
	set ALLSPHINXOPTS=-D latex_paper_size=%PAPER% %ALLSPHINXOPTS%
)

if "%1" == "" goto help

if "%1" == "help" (
	:help
	echo.请使用 `make ^<target^>` 其中 ^<target^> 可为下列取值之一
	echo.  html       建立独立的 HTML 文件
	echo.  dirhtml    在目录中建立 HTML 文件名称的 index.html
	echo.  singlehtml 建立单一的大 HTML 文件
	echo.  pickle     建立 pickle 文件
	echo.  json       建立 JSON 文件
	echo.  htmlhelp   建立 HTML 文件和一个 HTML 帮助项目
	echo.  qthelp     建立 HTML 文件和一个 qthelp 项目
	echo.  devhelp    建立 HTML 文件和一个 Devhelp 项目
	echo.  epub       建立一个 epub
	echo.  latex      建立 LaTeX 文件，您可以设置 PAPER=a4 或 PAPER=letter
	echo.  text       建立文本文件
	echo.  man        建立手册页
	echo.  changes    建立一个涵盖所有更改/添加/丢弃的项目的概括
	echo.  linkcheck  检查所有外链的完整性
	echo.  doctest    如果启用的话，运行嵌入文档中的所有 doctests
	goto end
)

if "%1" == "clean" (
	for /d %%i in (%BUILDDIR%\*) do rmdir /q /s %%i
	del /q /s %BUILDDIR%\*
	goto end
)

if "%1" == "html" (
	%SPHINXBUILD% -b html %ALLSPHINXOPTS% %BUILDDIR%/html
	echo.
	echo.构建完成。HTML 页面在 %BUILDDIR%/html 中。
	goto end
)

if "%1" == "dirhtml" (
	%SPHINXBUILD% -b dirhtml %ALLSPHINXOPTS% %BUILDDIR%/dirhtml
	echo.
	echo.构建完成。HTML 页面在 %BUILDDIR%/dirhtml 中。
	goto end
)

if "%1" == "singlehtml" (
	%SPHINXBUILD% -b singlehtml %ALLSPHINXOPTS% %BUILDDIR%/singlehtml
	echo.
	echo.构建完成。HTML 页面在 %BUILDDIR%/singlehtml 中。
	goto end
)

if "%1" == "pickle" (
	%SPHINXBUILD% -b pickle %ALLSPHINXOPTS% %BUILDDIR%/pickle
	echo.
	echo.构建完成; 现在您可以处理 pickle 文件了。
	goto end
)

if "%1" == "json" (
	%SPHINXBUILD% -b json %ALLSPHINXOPTS% %BUILDDIR%/json
	echo.
	echo.构建完成; 现在您可以处理 JSON 文件了。
	goto end
)

if "%1" == "htmlhelp" (
	%SPHINXBUILD% -b htmlhelp %ALLSPHINXOPTS% %BUILDDIR%/htmlhelp
	echo.
	echo.构建完成; 现在您可以运行 HTML Help Workshop 并使用 %BUILDDIR%/htmlhelp 中的 ^
.hhp 项目文件。
	goto end
)

if "%1" == "qthelp" (
	%SPHINXBUILD% -b qthelp %ALLSPHINXOPTS% %BUILDDIR%/qthelp
	echo.
	echo.构建完成; 现在您可以运行 "qcollectiongenerator" 使用 %BUILDDIR%/qthelp 中的 ^
.qhcp 项目文件，像这样:
	echo.^> qcollectiongenerator %BUILDDIR%\qthelp\SublimeDocs.qhcp
	echo.要查看帮助文件:
	echo.^> assistant -collectionFile %BUILDDIR%\qthelp\SublimeDocs.ghc
	goto end
)

if "%1" == "devhelp" (
	%SPHINXBUILD% -b devhelp %ALLSPHINXOPTS% %BUILDDIR%/devhelp
	echo.
	echo.构建完成.
	goto end
)

if "%1" == "epub" (
	%SPHINXBUILD% -b epub %ALLSPHINXOPTS% %BUILDDIR%/epub
	echo.
	echo.构建完成。epub 文件在 %BUILDDIR%/epub 中。
	goto end
)

if "%1" == "latex" (
	%SPHINXBUILD% -b latex %ALLSPHINXOPTS% %BUILDDIR%/latex
	echo.
	echo.构建完成; LaTeX 文件在 %BUILDDIR%/latex 中。
	goto end
)

if "%1" == "text" (
	%SPHINXBUILD% -b text %ALLSPHINXOPTS% %BUILDDIR%/text
	echo.
	echo.构建完成。文本文件在 %BUILDDIR%/text 中。
	goto end
)

if "%1" == "man" (
	%SPHINXBUILD% -b man %ALLSPHINXOPTS% %BUILDDIR%/man
	echo.
	echo.构建完成。手册页在 %BUILDDIR%/man 中。
	goto end
)

if "%1" == "changes" (
	%SPHINXBUILD% -b changes %ALLSPHINXOPTS% %BUILDDIR%/changes
	echo.
	echo.概括文件在 %BUILDDIR%/changes 中。
	goto end
)

if "%1" == "linkcheck" (
	%SPHINXBUILD% -b linkcheck %ALLSPHINXOPTS% %BUILDDIR%/linkcheck
	echo.
	echo.链接检查完成; 查看上面的输出或者 ^
或者在 %BUILDDIR%/linkcheck/output.txt 中是否有任何错误。
	goto end
)

if "%1" == "doctest" (
	%SPHINXBUILD% -b doctest %ALLSPHINXOPTS% %BUILDDIR%/doctest
	echo.
	echo.源代码中的 doctests 完成。查看 ^
%BUILDDIR%/doctest/output.txt 中的结果。
	goto end
)

:end
