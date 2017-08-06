




#   VIM

    From 0 to hero




                         Andrei Gasparovici
                         Infoeducaţie 2017








# Despre mine


    Andrei Gasparovici


  * Github: https://github.com/andreigasparovici/
  * Facebook: https://www.facebook.com/andreigasparovici


  * elev la CNI "Grigore Moisil", Braşov
  * web developer & vim user













# Ce este vim?





    Vim este un editor de text open-source dezvoltat în 1991 de către Bram Moolenar.


















# De ce vim ?



* funcţionează sub orice OS (GNU/Linux, Windows, Mac OS)
* full-stack ready
* rapid
* documentaţie built-in excelentă
   :help
* creşte productivitatea
* extensibil şi configurabil (VimScript, plugins)












# Vim modes



* NORMAL mode
* INSERT mode
* VISUAL mode
* EX mode
* COMMAND mode
** COMPLETION mode (^X)













# NORMAL mode




* Cum deschidem (şi închidem) vim ?
* Navigare sus-jos-stânga-dreapta
* Căutare
* Înlocuire






# Cum deschidem vim?




$ vim
$ vim fisier.txt
$ vim fisier1.txt fisier2.txt fisier3.txt

$ vim -o fisier1.txt fisier2.txt (split)
$ vim -O fisier1.txt fisier2.txt (split vertical)







# Cum închidem vim?

* Închidere
:quit
:q

* Salvare şi închidere
:wq

* Închidere fără salvare
:q!

* Mai multe fisiere?
:wqa















# Navigare sus-jos-stânga-dreapta


                     k
                  h    	l
                     j


* k -> o linie în sus
* j -> o linie în jos
* h -> un caracter la stânga
* l -> un caracter la dreapta

* 3j -> 3 linii în jos







# Navigare între cuvinte




* w -> la începutul cuvântului următor
* b -> la începutul cuvântului precedent
* e -> la sfârşitul cuvântului următor
* ge -> la sfârşitul cuvântului precedent

* 3w -> 3 cuvinte







# Navigare între fraze





* ( -> fraza următoare
* ) -> fraza precedentă








# Navigarea între paragrafe




* { -> paragraful următor
* } -> paragraful anterior









# Alte comenzi pentru navigare


* %  -> salt la paranteza (sau acolada) pereche

* 0  -> salt la începutul liniei

* $  -> salt la sfârşitul liniei

* gg -> salt la începutul buffer-ului
* G  -> salt la finalul buffer-ului

* [p]% -> salt la p% din buffer


#

* L -> salt la ultima linie de pe ecran

* M -> salt la linia din mijlocul ecranului

* H -> salt la prima linie de pe ecran

* C-d -> salt cu jumătate de ecran în jos
* C-u -> salt cu jumătate de ecran în sus

* C-f -> salt cu un ecran în jos
* C-b -> salt cu un ecran în sus



# Salt la o linie


* [linie]G

* :linie + Enter











# Ajustarea poziţiei liniei curente pe ecran




* zt -> linia curentă devine prima de pe ecran

* zz -> linia curentă este la mijlocul ecranului

* zb -> linia curentă este ultima de pe ecran





# Căutare




    1. Căutare în document
    2. Căutare pe linia curentă














# Căutare în document


/vreausacaut <- regex



* n -> următoarea apariţie
* N -> apariţia precedentă

* Exemplu: 3n -> a treia apariţie următoare

* * -> caută cuvântul de sub cursor



# Opţiuni pentru căutarea în document


* :set incsearch -> Incremental search

* :set hlsearch -> Highlight search results

* :set ignorecase

* :set smartcase -> Case-sensitive doar pentru litere mari











# Căutare pe linia curentă


* f[caracter] -> caută înainte, pune cursorul pe caracter
* F[caracter] -> caută înapoi, ...

* t[caracter] -> caută înainte, dar pune cursorul înaintea caracterului
* T[caracter] -> caută înapoi , ...


* ; -> reia căutarea în acelaşi sens
* , -> reia căutarea în sens opus




# Înlocuire în document



:%s/cauta/inlocuieste




* Pentru a înlocui în tot fişierul, adăugăm /g







# Înlocuire pe linie



* r[caracter nou]

* Exemplu:

    Voi înlocui fiecare o cu x.










# Lucrul cu tab-uri


* :tabnew [nume-fisier] -> deschide un nou tab

* Navigare între tab-uri

:tabnext sau gt
:tabprev sau gT

* Vezi toate tab-urile

:tabs







#


* :tabclose -> închiderea unui tab

* :tabonly -> închiderea tuturor tab-urilor, în afară de cel curent

* :tabfirst -> salt la primul tab

* :tablast -> salt la ultimul tab





# Split-uri



:sp [file-name] -> un nou split orizontal

:vs [file-name] -> un nou split vertical








# Navigarea între split-uri




* C-w C-w -> schimbă focus-ul în sens invers trigonometric

* C-w h/j/k/l

* :wincmd h/j/k/l












# Insert mode


* i -> inserează înaintea cursorului
* I -> inserează la începutul liniei

* a -> inserează după cursor
* A -> inserează la sfârşitul liniei

* o -> inserează pe o linie nouă dedesubt
* O -> inserează pe o linie nouă deasupra

* Esc -> ieşire din insert mode, revenire în normal mode



# Visual mode


* v + movement

* Exemplu:

    "Emacs has not a bit of chance to survive so long as VIM is around. Besides, it also has the most detailed software documentation I have ever seen ,much better than most commercial software!"
                                         (Leiming Qian)











# Delete


* d + motion / visual selection

* dd -> şterge linia
* D -> şterge până la finalul liniei

* x -> şterge caracterul de sub cursor (delete)
* X -> şterge caracterul din stânga cursorului
      (backspace)










# Delete inside



* di( -> ştergere între paranteze
* di{ -> ştergere între acolade
* di[ -> ...

* di"
* di'

* dit -> ştergere în interiorul tag-ului (html, xml)




# Exemple

  1. Vreau să şterg 3 cuvinte.
  2. Vreau să şterg 3 caractere.
  3. Vreau să şterg (textul dintre paranteze).
  4. Vreau să şterg toată linia.
  5. Vreau să şterg toate caracterele până la primul 'g'.
  6. Vreau să şterg codul dintre acolade.
      :tabnew code.c

  7. Vreau să şterg codul din tag-ul <body>
      :tabnew code.html








# Change (ştergere + inserare)

* c + motion / visual selection

* cc -> modifică linia
* C -> modifică până la finalul liniei

* s -> modifică caracterul de sub cursor


* change inside + ...




# Command mode

* :comanda

* Exemple:

    - :set number -> afişează numerele liniilor
    - :set relativenumber
    - :shell -> linia de comanda a sistemului
    - :!ls -> execută o comandă de sistem

* Disable: set nonumber
* Toggle: set number!
* See value: set number?


# Exemplu: line numbering

  :tabnew file1.txt












# Copy(yank) and paste(put)

* y + movement / visual selection

* yy -> yank line

* p -> put (paste)









# Regiştri

* sunt zone în memorie unde sunt stocate date copiate sau şterse

* :reg -> toţi regiştrii

* registrul 0 -> ultimul text copiat
* registrul " -> ultimul text şters

* Copierea într-un registru
  "[reg]y



#



* Paste dintr-un registru (în normal mode)
  "[reg]p

* Inserarea conţinutului unui registru (în insert mode)
  C-r [reg]







# Undo & redo


* u -> undo
* C-r -> redo

* . -> redo last change

* Persistent undo

  set undofile
  set undodir=~/.vim/undodir






# Macros



* q[nume-macro] -> start recording

* q -> stop recording

* @[nume-macro] -> play macro
* 3@[nume-macro] -> play macro 3 times










# Visual block



* C-v -> start visual mode
* selectare zonă
* nişte modificări
* Esc

=> MAGIC





# Exemplu



  * Comentează / decomentează un fragment de cod

  :tabnew code.js












# Lucrul cu numere




* C-a -> creşte cu 1 numărul de sub cursor
* C-x -> scade cu 1 numărul de sub cursor

* Exemplu: 1024








# A small challenge

  Task: Se dă un fişier cu 10 linii, pe fiecare linie având un număr întreg. Să se transforme toate numerele în pătratele lor.


  :tabnew numere.txt








# Completion mode



* Word completion
* Line completion
* Filename completion
* Vim command completion
* Function completion


* Enter completion mode:
    insert mode + C-x




# Word completion



* C-n şi C-p

    "A previous girlfriend of mine switched to emacs.
    Needless to say, the relationship went nowhere."
                                  (Geoffrey Mann)






# Line completion



* C-x C-l


  "I luv VIM.
   It is incredible. I'm naming my first-born Vimberly."
                          (Jose Unpingco)








# Filename completion


* C-x C-f

  :!ls











# Function completion


* Completarea funcţiilor din standard library


  :tabnew code2.c











# Vim command completion

* C-x C-v

  tab










# Mapping

* Putem crea propriile combinaţii de taste

* map -> Keybinding în toate modurile
* map! -> Keybinding în insert mode şi command mode

* nmap -> normal mode mapping
* imap -> insert mode mapping
* vmap -> visual mode mapping
* cmap -> command mode mapping

* unmap -> Speaks for itself


# Exemplu

* Compilarea şi executarea unui program C

  :map <F9> :w<CR>:!gcc % -o %< -g && ./%<<CR>
  :tabnew code3.c


* Menţiuni:
    - %    -> numele fişierului curent
    - %<   -> numele fişierului curent fără extensie
    - <CR> -> enter



# Abrevieri


:abbr vim Vi IMproved
       ^
       |
    abreviere








# Litere mari şi mici

* ~ -> toggle case

* gu + movement / visual selection -> lowercase
* gU + movement / visual selection -> uppercase


* Exemplu:

  Vreau toate literele mari pe linia asta.





# vimrc

* Fişierul în care stocăm opţiunile şi setările

* Se află în:
    /home/user/.vimrc
    /home/user/.vim/vimrc

* Exemplu de fisier vimrc:
    :tabnew example_vimrc.vim











# Time travelling





   _The most useful form of time travel would be to go back a year or two and rectify the mistakes we made._
                            (Matt Lucas)






# Time travelling în Vim




* :earlier 15s -> înapoi în timp cu 15 secunde
* :later 30m   -> înainte în timp cu 30 minute









# Plugin-uri



* Extensii scrise în limbajul VimScript

* Plugin manager:
    - Pathogen (https://github.com/tpope/vim-pathogen)
    - Vundle (https://github.com/VundleVim/Vundle.vim)
    - Plug (https://github.com/junegunn/vim-plug)





# Some awesome plugins that I use


* vim-commentary
    (https://github.com/tpope/vim-commentary)

* vim-system-copy
    (https://github.com/christoomey/vim-system-copy)

* emmet-vim
    (https://github.com/mattn/emmet-vim)





# Vim commentary
  (https://github.com/tpope/vim-commentary)


  * Usage:

    gc + motion / visual selection

  * Example:

    :tabnew code.js





# Vim-system-copy
  (https://github.com/christoomey/vim-system-copy)



  * Vim nu foloseşte clipboard-ul sistemului, ci proprii regiştri

  * Dar dacă am nevoie să copiez din vim în clipboard?








#
  * Usage:

    - cp + motion / visual selection -> copy
    - cv                             -> paste

  * Requirements:

    - xsel
      * debian/ubuntu: apt install xsel
      * arch: pacman -S xsel






# Emmet-vim
  (https://github.com/mattn/emmet-vim)



  * Usage:
       Emmet syntax + C-y,

  * Exemplu:
      :tabnew emmet.html











#





                 Întrebări?










#





         Mulţumesc pentru atenţie!









