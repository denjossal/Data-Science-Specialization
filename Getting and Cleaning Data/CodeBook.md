# CodeBook.md
This CodeBook describes variables, data, and transformations used to clean up the data.
## Variables
fp: Path for file **features.txt**
cont: Counter to put **ACTIVITY LABEL**

Variables for **Test** file paths:

* tps: Path for file **subject_test.txt**
* tpx: Path for file **X_test.txt**
* tpy: Path for file **y_test.txt**

Variables for **Train** file paths:

* trps: Path for file **subject_train**
* trpx: Path for file **X_train.txt**
* trpy: Path for file **y_train.txt**

## Data
* fpFile: File with all features

## Test Data
* tpsFile: Test file with **subject** data
* tpxFile: Test file with **X_test** data
* tpyFile: Test file with **y_test.txt** data
* tpxFileNew: Test file with headers of features


## Train Data
* tpxFileNew: Train file with **subject** data
* tpxFile: Test file with **X_test** data
* tpyFile: Test file with **y_test.txt** data
## Transformations
* tpxFileNew2: 
  
Download the latest [release here][9]. For a full version history go [here][10].

## Installation
Download a [release version][9] and copy the included **MarkdownViewerPlusPlus.dll** to the *plugins* sub-folder at your Notepad++ installation directory. The plugin adds a small Markdown icon ![Markdown icon](https://raw.githubusercontent.com/nea/MarkdownViewerPlusPlus/master/MarkdownViewerPlusPlus/Resources/markdown-16x16-solid.png) to the toolbar to toggle the viewer as dockable panel.

### Plugin Manager
If you have the [Plugin Manager][13] installed you can search for MarkdownViewer++ and install it via that plugin.

### Compatibility
This plugin requires at least
* Notepad++ 32-bit/64-bit
* Windows
* .NET Framework 4.0 or above

It has been tested under the following conditions
* Notepad++ 7.5.6 32-bit and 64-bit
* Windows 10 Professional (64-bit)

## Usage
To open the MarkdownViewer++ you can 
* click the toolbar icon ![Markdown icon](https://raw.githubusercontent.com/nea/MarkdownViewerPlusPlus/master/MarkdownViewerPlusPlus/Resources/markdown-16x16-solid.png), 
* use the shortcut _Ctrl+Shift+M_
* or open it via the **Plugins** sub-menu

To synchronize the scrolling between the Notepad++ editor view and the rendered markdown, you can enable the option via the **Plugins** sub-menu. The made selection will be stored and loaded in future sessions.

![MarkdownViewer++](https://raw.githubusercontent.com/nea/MarkdownViewerPlusPlus/master/MarkdownViewerPlusPlus/Resources/MarkdownViewerPlusPlus.png)

### Options
The MarkdownViewer++ offers several options to customize your plugin experience. You can open the options dialog via the **Plugins** sub-menu.

![MarkdownViewer++ Options](https://raw.githubusercontent.com/nea/MarkdownViewerPlusPlus/master/MarkdownViewerPlusPlus/Resources/MarkdownViewerPlusPlus-Options.png)

#### General
On the **General** tab you can configure the file extensions the MarkdownViewer++ renderer should actually display. If the box is *empty* all files will be rendered. If you want to limit the rendering to certain file extensions list them in the textbox as comma-separated list without leading dot.

For example, if you only want to render *txt*, *log* and *md* files just type in "txt,log,md".

Please note that only file extensions are compared and no certain mime types or anything. If a text document is not named *XYZ.txt* it will not be rendered.

#### HTML
On the **HTML** tab you can fill in *Custom CSS*, which is used when rendering the MarkdownViewer++ preview as well as the exported HTML. Therefore, you are able to e.g. change bullet-point-list icons or sizes of headlines. The custom CSS textbox is limited to 32767 characters.

#### PDF
On the **PDF** tab you can set the *orientation* and *page size* of the exported PDF. The content is provided by the [PDFSharp][5] enumerations.

Additionally, the margins for *top*, *right*, *bottom* and *left* can be set for the exported PDF file.

### Highlighting
MarkdownViewer++ adds no markdown highlighting to Notepad++ itself. But you might find the [user-defined syntax highlighting by Edditoria][12] helpful.

## License and Credits
The MarkdownViewerPlusPlus is released under the MIT license.

This Notepad++ plugin integrates the sources of multiple other libraries, because of issues with the library merging process. Credits and thanks to all the developers working on these great projects:
* The plugin is based on the [Notepad++ PluginPack.net][2] by kbilsted provided under the Apache-2.0 license.
* The renderer uses 
  * [Markdig][3] by lunet-io provided under the BSD-2-Clause license
  * [HTMLRenderer.WinForms][6] by ArthurHub provided under the BSD-3-Clause license
* The PDF Exporter uses 
  * [PDFSharp][5] by empira Software GmbH provided under the MIT license
  * [HTMLRenderer.PdfSharp][6] by ArthurHub provided under the BSD-3-Clause license
* The SVG renderer uses [SVG.NET][11] by vvvv provided under the Microsoft Public License
* The menu icons are by [FontAwesome][7] provided under the SIL OFL 1.1 license
* The Markdown icon is by [dcurtis][8] provided under the CC0-1.0 license

## Disclaimer
This source and the whole package comes without warranty. It may or may not harm your computer or cell phone. Please use with care. Any damage cannot be related back to the author. The source has been tested on a virtual environment and scanned for viruses and has passed all tests.

## Personal Note
*I don't know if this is very useful for a lot of people but I wanted something in private to quickly write and see some formatted Markdown documents. As I was not able to find something similar very quickly I created this project. I hope this proves useful to you... with all its Bugs and Issues ;) If you like it you can give me a shout at [INsanityDesign][1] or let me know via this repository.*

  [1]: http://www.insanitydesign.com/
  [2]: https://github.com/kbilsted/NotepadPlusPlusPluginPack.Net
  [3]: https://github.com/lunet-io/markdig
  [4]: http://spec.commonmark.org/0.28/
  [5]: http://www.pdfsharp.net/
  [6]: https://htmlrenderer.codeplex.com/
  [7]: http://fontawesome.io/
  [8]: https://github.com/dcurtis/markdown-mark
  [9]: https://github.com/nea/MarkdownViewerPlusPlus/releases
  [10]: https://github.com/nea/MarkdownViewerPlusPlus/wiki/Version-History
  [11]: https://github.com/vvvv/SVG
  [12]: https://github.com/Edditoria/markdown-plus-plus
  [13]: https://bruderste.in/npp/pm/
