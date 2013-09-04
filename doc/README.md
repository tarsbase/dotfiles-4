# The Desktop: A Primer for my Work Method

In the works~~~ this is just random words at the moment. Also adding more sections as I see fit.

This documents my modus operandi, the god-endorsed efficiency that everyone and his grandmother should already be following. Here are some highly opinionated points that I centralize my methodology on:

* Keep your hands on the keyboard all the time, every time.
* If it can be done faster, it will be done faster.
* Synchronized keybinds. Have as many mappings perform roughly the same operation across all applications.
* Organization—and thus competent but never obtuse minimalism—is paramount to capable learning.
* Your desktop should be as non-intrusive as possible. If you constantly need to resize windows and/or adjust the layout, you're doing it wrong.
* Always look *fabulous*.

## Float vs. Tile

While I use a tiling window manager, I am first and foremost a floater. This is because none of my most frequently used applications actually need to take the entire screen. And it just does not look very pretty—particularly on large displays. Sure, just add in another window, resize your portions, and then your window will still be tiled while with just enough room as you desire. But what about having it centered? What about that other window? I don't *care* about that window anyways, so why not center the one application I am using, and fill in beautiful gaps to view your wallpaper instead?

Doing the opposite already becomes counter-intuitive to the tiling WM philosophy. After all, gaps are not only aesthetically pleasing but arguably more efficient (it keeps my eyes focused on key apps for example, and prevents text from having ugly, unnecessarily gargantuan margins). With how I manage my windows, floating can be just as—if not more—efficient than tiling. All window management through this method is pre-configured, saving even more time than tiling since you no longer need to move (and hence "manage") any windows.

## Window Management

[*gif indicating a bunch of focus movement and some keybind navigation*]

I set keybinds to focus each of my main applications, and the same keybind spawns the application if it doesn't already exist. This makes it easy to move exactly where I want to go. Say I'm editing a file in Vim in one workspace, and now suddenly I want to browse my IRC client. Simple. `alt+i` instantly focuses irssi (and moves to that workspace), I read channel conversation or respond to someone, and then I `alt+w` to go back to editing my file in Vim. Two keybinds does the job that multiple, such as navigating to said workspace and then said application, would have to do otherwise.

My window manger's properties are also set in order to specify each application's position on the screen. Their geometry is also automagically set, either from their own configuration files or from a command line flag. This makes every application on startup already placed into position, and already sized correctly. Who needs tiling—a manually adjusted affair—when I already have the exact layout and sizes in mind? With all windows already setup to your OCD bastardized needs, and a minimal set of keys to navigate through the windows, this is not only efficient but ridiculously easy to use and learn.

## Keybinds

Vim. Vim always. Every one of my applications follow roughly the same idea, with `hjkl` taking the forefront in movement, and other essential Vim keys (e.g., `d`, `y`, `p`, `<Leader>`) taking analogous traits. This makes my keybinds universal across all platforms, and efficient through sane keybinds located near or on the home row. With everything Vimified, it's hard not to gloat at just how easy and efficient everything becomes, anything ranging from window manager keybinds to something as niche as torrent client keybinds.

I could have already performed 4-5 keybinds in the time it takes to move my hand from my keyboard to my mouse; so why bother with it when you don't need to? With all these mappings in place, I honestly only ever require a mouse for the few occasions in Firefox (pentadactyl utterly fails on me when navigating through popup links or Javascript), and in GUI apps like libreoffice and gimp.

## The (Current) Layout

[*picture with left side blank*]

On the larger display, I have (from top to bottom) ncmpcpp, irssi, blank terminal, and ranger, with a lot of empty space indicated on the left. This is for incidental applications, ones which are positioned there in the occasion when they're running: mpv, feh, calibre-ebook-viewer, and zathura. This allows me to use all applications in only the small windows that they're needed in, allowing a lot of room for useless gaps and wallpaper gawking. Media players—whether ranging from video or ebook to pictures—are all given their ample, needed space through that left region. Never are two ever running at the same time, so they're all allowed to use the same position.

On the laptop's display, I have vim and nil-transmission-remote-cli. Firefox, gimp, and libreoffice are always open on this display's other workspaces.

## Working with a Dynamic Set of Displays

Given that I'm a top pleb using a $400 laptop, I make do with a larger display at home. I primarily use that setup: a 1366x768 display connected to a 1920x1080 external one. To accommodate situations where I'm on the go (and thus without the external monitor), I note required lines in my dotfiles with `[L+E]` and `[L]`. I (un)comment correspondingly depending on whichever displays I have available. The following files have such notations:

* `~/.config/awesome/rc.lua`
* `~/.config/ranger/rifle.conf`
* `~/.irssi/config`
* `~/.mpv/config`
* `~/.xinitrc`