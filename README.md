

The Avoleo theme features a date and time prompt for each command, as well as a command number in history. In addition, it uses special symbols '⠾' and '⡶' to display git if applicable in current path. It also supports custom colors based on the Gnome-Terminal default color palette.

## Preview

Avoleo is a custom ZSH theme designed for Ubuntu GNOME Terminal with the built-in scheme "Tango Dark".

Here's an example of what the prompt will look like:

```
╭─ 259  2023-03-11 13:50:43
├─  ⡶   user@desktop /work/aveleo  ‹master› ✔   13:50:43
╰─  ⠾                                                                                      0 ↵

```


Here's a screenshot of what the theme looks like in action:

![avoleo.zsh-theme](https://upload-images.jianshu.io/upload_images/4914417-44fc54f2e57f939b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

# Introduction to avoleo zsh theme

The **avoleo** zsh theme is a custom theme that provides a minimalist and informative prompt for the [zsh](https://www.zsh.org/) shell. It displays the following information:

- Current working directory and git prompt (if inside a git repository)
- Current command number in history
- Date and time of the last command executed
- Return code of the last command executed

The theme uses unicode characters to create a stylish and compact prompt, with a horizontal line separating the prompt from the command output.

## Installation

To install the **avoleo** theme, follow these steps:

1. Download the `avoleo.zsh-theme` file to your computer.
   ```
   git clone https://github.com/flameleo11/avoleo-zsh-theme.git
   git clone https://gitee.com/flameleo11/avoleo-zsh-theme.git
   ```
2. Move the file to the `~/.oh-my-zsh/themes` directory (if you're using [Oh My Zsh](https://ohmyz.sh/)).
   ```
   mv avoleo-zsh-theme/avoleo.zsh-theme ~/.oh-my-zsh/themes/
   ```
3. Set the `ZSH_THEME` variable to `"avoleo"` in your `~/.zshrc` file.
   ```
   ZSH_THEME="avoleo"
   ```
4. Reload your shell configuration by running `source ~/.zshrc`.
   ```
   source ~/.zshrc
   ```
## Customization

The **avoleo** theme supports customization of prompt colors using the built-in color schemes of [GNOME Terminal](https://help.gnome.org/users/gnome-terminal/stable/). To customize the colors of the prompt, follow these steps:

Avoleo is a custom ZSH theme designed for Ubuntu GNOME Terminal with the built-in scheme "Tango Dark". It displays useful information such as the current directory, Git branch, command number in history, and return code of the previous command.

1. Open GNOME Terminal and go to "Preferences" > "Profiles".
2. Create a new profile or select the built-in scheme "Tango Dark" ( or an existing one ).
3. Go to the "Colors" tab and select a color scheme.
4. Enable "Use transparent background" and "Show bold text in bright colors".
5. Customize the "Palette" colors to change the prompt colors.

The following palette colors are used in the **avoleo** theme:

- `C1`: Black
- `C2`: Red
- `C3`: Green
- `C4`: Yellow
- `C5`: Blue
- `C6`: Magenta
- `C7`: Cyan
- `C8`: White

You can modify the color variables in the `avoleo.zsh-theme` file to use different palette colors.

To enable the debug mode in your zsh custom theme, you need to find the following lines in the `avoleo.zsh-theme` file:

```
# show palette color
PROMPT+="$debug_color"
```

Then, remove the comment symbol `#` in front of the line `PROMPT+="$debug_color"` to enable the debug mode. This will display the palette color used for your prompt.
![image.png](https://upload-images.jianshu.io/upload_images/4914417-a6994086a670826e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


## Features

Git Prompt

This theme features a sleek and functional prompt that displays important information about your current working directory and command history.

When you are in a Git repository, two symbols - '⠾' and '⡶' - will be displayed in bright colors and combined together to indicate that the directory is linked to Git. The bright colors represent the current status of the Git repository.

Conversely, when you are outside of a Git repository, the symbols will appear smaller and grayed out, indicating that you are disconnected from Git.

![image.png](https://upload-images.jianshu.io/upload_images/4914417-c573041148bb9992.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

This simple yet effective feature will help you keep track of your Git repositories at a glance, without having to manually check each time. Give the avoleo theme a try and see how it can improve your Zsh experience!


Additionally, the theme also displays the return code of the last command executed as `0 ↵` at the right end of the prompt to indicate whether the command was successful or not.

Here are some examples of the **avoleo** theme in action:

![image.png](https://upload-images.jianshu.io/upload_images/4914417-28639cc2dab0685b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

In this example, the command `363` executed not exists command `err`, failed with a return code `127`, then last command staus symbol ` 127 ↵` show red font on the right of current prompt.

the command `364` executed `cd +` with invalid params `+`, failed with return code `1`, then last command staus symbol ` 1 ↵` show red font on the right of current prompt.


the current command number is `366`, aflter command `365` executed `cd avoleo` on `2023-03-11 16:56:31`, the current directory is `/drive_d/work/avoleo`, and the git branch is `master` with the `✔` indicated all file was commited.

the current command number is `367`, aflter command `366` create a new file in current branch, then git clean indicated symbol change to `✘`.




 ## Author

This theme was created by flameleo.

## License

This theme is licensed under the [MIT License](LICENSE) . Feel free to use and modify it as you wish.
``