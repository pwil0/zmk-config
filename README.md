# My Funny Little Layout
All my keyboards use a 34 key layout with an optional extra thumb key for mouse actions (I love my Charybdis nano).

It's a cool layout for qwerty users.

### QWERTY Remapping
Proper finger placement in row staggered keyboards is uncomfortable for me (and probably for you too) so I did a couple of small changes to the layout when moving to a column staggered layout.

Here's my finger placement for the alphas in a standard qwerty keyboard:

![Pasted image 20250114164618](https://github.com/user-attachments/assets/ea25e4d1-2519-4495-9b4c-d96df2c53e77)


This is how it translates to my column staggered boards:

![Pasted image 20250114164948](https://github.com/user-attachments/assets/16f2b5ee-d75a-43b1-8a5e-36ddf47f3b8e)

The differences are the M key is now pressed with the middle finger instead of the index finger and the slash is moved all the way to the left pinky

### Layers
The layout uses 4 quickly accessible layers for typing, 1 layer for mouse emulation and 1 layer for configuration.

#### Default layer
![Pasted image 20250114170905](https://github.com/user-attachments/assets/a74ae22a-4848-4c27-a8dd-c1bcdca91fa7)

Standard QWERTY layout with the shift keys in the bottom row of the pinky fingers using [hold-tap](https://zmk.dev/docs/keymaps/behaviors/hold-tap) behaviors and access to the other layers in the thumbs.

The Enter key doesn't have any extra functionality in an attempt to hopefully make it harder to press it by accident

#### Numbers layer
![Pasted image 20250114172105](https://github.com/user-attachments/assets/3774aa78-66c0-497b-b781-882ba6fb0d8f)

The numbers are pressed with the same fingers as in the standard keyboard but without moving from the home row.

There's lots of free space to add more function keys to the bottom row (F14 and F15 change the brightness in a macbook) but I recommend leaving the 2 rightmost keys transparent so you can type comma and period while writing numbers without changing layers.

#### Movement layer
![Pasted image 20250114172810](https://github.com/user-attachments/assets/c654af8c-a97b-49cc-a3b3-dde716139eb0)

The arrows, home/end and pgup/pgdn are copied on both hands, Del key is in both pinky corners and Caps Lock in the left index finger. There's sound controls on the bottom row for the left hand.

The Del key used to be in the symbols layer only, but I kept getting them confused so I added it to both and duplicated it here to be able to spam it with both hands if I needed to. Caps lock is there for no reason other than that position was unused and not uncomfortable to reach.

#### Symbols layer
![Pasted image 20250114173545](https://github.com/user-attachments/assets/533964dc-b2e6-476e-891c-5710ea5ee787)

This is a very important layer for typing and most of the keys have a logical explanation for their position here.

The middle row has the symbols that you would get from pressing the numbers while holding shift from 1 to 8, then 9 and 0 (open and close parenthesis) are moved up and - and = take the last 2 places in the middle row. On a standard keyboard I press 9 and 0 with ring and pinky but when I'm typing the parenthesis I reach with middle and ring, and this movement is replicated in this layout. - and = follow the logic of putting symbols from the numbers row in the middle row.

Square brackets are mirrored from the parenthesis on the left hand and for curly braces I press those with shift. The backtick is in the top left corner similar to where it would be in the standard keyboard. Backslash is close to where it would be in a standard keyboard on the right pinky and the question mark is where it would be in the default layer.

The single and double quotes are mirrored but there's no other reason for them to be where they are other than that those keys were free. Same logic applies to ~ and _

The 5 Backspaces are one of my favorite things from this layout. You can spam them to delete text fast in places where using Option/Ctrl + Bksp would be impractical. This is easy to remember because this layer is accessed by holding the thumb key that sends Bksp when tapped.
#### Configuration layer
![Pasted image 20250114175438](https://github.com/user-attachments/assets/6c332950-f999-40eb-a410-ea8b10b3271b)

Here's where the bluetooth profiles are selected or cleared, the output is changed and the boards are restarted or rebooted to bootloader to flash the firmware.

It's important to set this layer in a way that it wouldn't be accessed accidentally. In my case it's accessed with a left thumb key in the numbers layer (also accessed with the left thumb).

#### Mouse layer
This one is different depending on if the keyboard has a trackball or not. For the trackball keyboards it only has the mouse buttons but for the regular keyboards it has cursor movement in the same keys where the movement layer has the arrows.

The key that enables this layer is missing in the 34key keyboards like the ferris so it's moved to one of the free keys in the movement layers in those keyboards.

### Combos
The Esc key is nowhere to be found in any of the layers. Being a vim user I wanted it to be as easy to access as possible, so I put it in a combo of D and F.

Whenever left thumb or right thumb is mentioned in the context of combos it means the Tab key or the Bksp key respectively.

Other useful combos are:
- F + V = Enter: to be able to use enter with the left hand
- A + / = Bksp: to be able to use Bksp with the left hand
- A + Left thumb = CTRL + W: my prefix key in tmux
- / + Left thumb = CTRL + S: my leader key in vim
- , + . = Left click
- , + ; = Right click
- . + ; = Middle click

Then there's a series of combos with the thumbs that I use for the CTRL, GUI and Alt keys.
### Home row combo mods
I never tried standard homerow mods and I don't feel like I need to because my combo approach has been working just fine since I started using it. The basic idea is to use the keys under the strongest fingers in the home row (SDF and JKL) to access the bottom row modifiers in a standard keyboard (CTRL, Option/Alt and Command/GUI), but instead of relying on the [hold-tap](https://zmk.dev/docs/keymaps/behaviors/hold-tap) behavior I'm using combos with the furthest thumb keys on each side of the keyboard to trigger the modifiers:
- S + left thumb = left CTRL
- D + left thumb = left GUI
- F + left thumb = left Alt
- J + right thumb = Alt gr
- K + right thumb = right GUI
- L + right thumb = right CTRL
Also any combination of these is also a valid combo (S + F + left thumb = CTRL + Alt)

However, some combinations of modifier + alpha are unconfortable to press because they use the same key twice like CTRL + S. To solve this I have another way of pressing the modifiers that guarantees no overlap with the thumb combo.

### Thumbless Home row combo mods
They use the other 2 non pinky fingers to trigger each modifier, and the outermost (closest to the pinky) is used in the top row while the other is in the middle row. This is mirrored in both hands:
- E + F = left CTRL
- W + F = left GUI
- W + D = left Alt
- O + K = Alt gr
- O + J = right GUI
- I + J = right CTRL

There's also a way to press any combination of 2 modifiers without thumbs using the 3 non pinky fingers. The finger in the position of the modifier that's not being pressed is in the middle row while the other 2 are in the top row:
- S + E + R = left GUI + left Alt
- W + D + R = left CTRL + left Alt
- W + E + F = left CTRL + left GUI
- J + I + O = right GUI + right CTRL
- U + K + O = Alt gr + right CTRL
- U + I + L = Alt gr + right GUI

### Hyper key
There's a couple of combos on each hand to press Shift + CTRL + ALT + GUI on each side. This combination is commonly known as a Hyper key and can be very useful for mapping shortcuts to it:
- left thumb + Q = left Hyper
- Z + X = left Hyper
- right thumb + P = right Hyper
- M + , = right Hyper
