### Key Mapping

Syntax `{map_cmd} {attr} {key} {command}`
{cmd} {attr} {lhs} {rhs}

* `{cmd}`  
  * `:map`
  * `:map!`
  * `:nmap'` nnoremap, nunmap - Normal mode
  * `:vmap'` vnoremap, vunmap - Visual and Select mode
  * `:imap'` inoremap, iunmap - Insert and Replace mode
  * `:cmap'` cnoremap, cunmap - Command-line mode
  * `:smap'` snoremap, sunmap - Select mode
  * `:xmap'` xnoremap, xunmap - Visual mode
  * `:omap'` onoremap, ounmap - Operator pending mode
  * `:lmap`

* `{attr}`
  * `<buffer>` - The mapping’s scope is reduced to the current buffer only
  * `<silent>` - Doesn’t output the mapping in the Vim command-line.
  * `<expr>` - The mapping executes a Vimscript expression instead of a Vim command
  * `<script>` - The mapping can run a command without quitting the current mode you’re in
  * `<unique>` - The mapping fails if it already exists
  * `<special>` - 

* `{lhs}` - left hand side, is a sequence of one or more keys that you will use in your new shortcut.
* `{rhs}` - right hand side, is the sequence of keys that the {lhs} shortcut keys will execute when entered.

