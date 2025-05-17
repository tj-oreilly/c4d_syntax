# Cinema 4D Resources Syntax

These are (very rough) syntax definitions for the `.res` and `.str` files used for defining the interfaces of Cinema 4D plugins ([explained here](https://developers.maxon.net/docs/cpp/2025_2_0a/page_manual_resource_files.html)).
There are both TextMate and vim syntax files which should give compatibility across most common editors and IDEs.

## Installation
Some installation instructions for common IDEs.

### Visual Studio
Visual Studio supports (and uses under the hood) TextMate syntax definitions. You can place the contents of the `TextMate` directory
into `%USERPROFILE%\.vs\Extensions` (create the directory if it doesn't exist). Restarting Visual Studio will give you the custom syntaxes.

### VS Code
For VS Code you must compile the TextMate definitions into a VSIX extension. To do this, first ensure you have `npm` (https://nodejs.org/). 
You must then install the VS Code extension packaging tool with `npm install -g vsce`. Now simply navigate to the TextMate syntax directory
and run `vsce package`. This will create a `.vsix` file which you can load as a manual extension into VS Code.

### CLion
CLion provides excellent support for TextMate; open the Settings and navigate to Editor > TextMate Bundles. You can then click the '+' symbol and select the TextMate directory to add.

### Vim
For vim, simply add the `.vim` syntax files into `./syntax/` within your vim config. For file type detection, you must include the following into a `.vim` file within `./ftdetect/`:

```vim
au BufRead,BufNewFile *.res set filetype=c4d_res
au BufRead,BufNewFile *.str set filetype=c4d_string
```
