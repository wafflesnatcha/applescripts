FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
-- Open Terminal at the path of the frontmost finder window
-- 
-- @requires lib.scpt
-- @requires lib/Application/Terminal.scpt
-- @author Scott Buchanan <buchanan.sc@gmail.com>
-- @link http://wafflesnatcha.github.com     � 	 	� 
 - -   O p e n   T e r m i n a l   a t   t h e   p a t h   o f   t h e   f r o n t m o s t   f i n d e r   w i n d o w 
 - -   
 - -   @ r e q u i r e s   l i b . s c p t 
 - -   @ r e q u i r e s   l i b / A p p l i c a t i o n / T e r m i n a l . s c p t 
 - -   @ a u t h o r   S c o t t   B u c h a n a n   < b u c h a n a n . s c @ g m a i l . c o m > 
 - -   @ l i n k   h t t p : / / w a f f l e s n a t c h a . g i t h u b . c o m    
  
 l     ��������  ��  ��        j     �� �� 0 lib    I    �� ��
�� .sysoloadscpt        file  b     	    n         1    ��
�� 
psxp  l     ����  I    �� ��
�� .earsffdralis        afdr  m     ��
�� afdrscr���  ��  ��    m       �    l i b / l i b . s c p t��        j    �� �� 0 terminal Terminal  n        I    �� ���� 0 include     ��  m       �     ( A p p l i c a t i o n / T e r m i n a l��  ��    o    ���� 0 lib     !�� ! l     "���� " O     # $ # I    �� %���� 0 newtabat newTabAt %  &�� & n   	  ' ( ' I    �������� (0 frontmostdirectory frontmostDirectory��  ��   ( n   	  ) * ) o    ���� 0 _application _Application * o   	 ���� 0 lib  ��  ��   $ o     ���� 0 terminal Terminal��  ��  ��       �� + , - .��   + �������� 0 lib  �� 0 terminal Terminal
�� .aevtoappnull  �   � **** , �� /  0��   / k       1 1  2 3 2 l      �� 4 5��   4
-- lib.scpt-- Library Manager
--
-- @author Scott Buchanan <buchanan.sc@gmail.com>
-- @link http://wafflesnatcha.github.com
-- 
-- @example
-- -- Assuming lib.scpt is in ~/Library/Scripts/lib-- property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"-- get frontmostApplicationID() of _UI of lib
-- 
-- @example-- property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"-- property Firefox : include("Application/Firefox") of lib-- tell Firefox to refresh()    5 � 6 6 
 - -   l i b . s c p t  - -   L i b r a r y   M a n a g e r 
 - - 
 - -   @ a u t h o r   S c o t t   B u c h a n a n   < b u c h a n a n . s c @ g m a i l . c o m > 
 - -   @ l i n k   h t t p : / / w a f f l e s n a t c h a . g i t h u b . c o m  
 - -   
 - -   @ e x a m p l e 
 - -   - -   A s s u m i n g   l i b . s c p t   i s   i n   ~ / L i b r a r y / S c r i p t s / l i b  - -   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t "  - -   g e t   f r o n t m o s t A p p l i c a t i o n I D ( )   o f   _ U I   o f   l i b  
 - -   
 - -   @ e x a m p l e  - -   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t "  - -   p r o p e r t y   F i r e f o x   :   i n c l u d e ( " A p p l i c a t i o n / F i r e f o x " )   o f   l i b  - -   t e l l   F i r e f o x   t o   r e f r e s h ( )  3  7 8 7 l     ��������  ��  ��   8  9 : 9 j     �� ;�� 0 _include_path   ; J      < <  = > = b     	 ? @ ? n      A B A 1    ��
�� 
psxp B l     C���� C I    �� D��
�� .earsffdralis        afdr D m     ��
�� afdrscr���  ��  ��   @ m     E E � F F  l i b >  G�� G n   	  H I H 1    ��
�� 
psxp I l  	  J���� J I  	 �� K��
�� .earsffdralis        afdr K m   	 
��
�� afdrscr���  ��  ��  ��   :  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P &   Change the current include path    Q � R R @   C h a n g e   t h e   c u r r e n t   i n c l u d e   p a t h O  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W 6 0 @param list|alias|string _path New include path    X � Y Y `   @ p a r a m   l i s t | a l i a s | s t r i n g   _ p a t h   N e w   i n c l u d e   p a t h V  Z [ Z l     �� \ ]��   \ ( " @return list The new include path    ] � ^ ^ D   @ r e t u r n   l i s t   T h e   n e w   i n c l u d e   p a t h [  _ ` _ l     ��������  ��  ��   `  a b a i     c d c I      �� e����  0 setincludepath setIncludePath e  f�� f o      ���� 	0 _path  ��  ��   d k     - g g  h i h Z     j k���� j l     l���� l =     m n m n      o p o m    ��
�� 
pcls p o     ���� 	0 _path   n m    ��
�� 
alis��  ��   k r     q r q J     s s  t�� t c     u v u l    w���� w n     x y x 1   	 ��
�� 
psxp y o    	���� 	0 _path  ��  ��   v m    ��
�� 
TEXT��   r o      ���� 	0 _path  ��  ��   i  z { z Z   ' | }���� | l    ~���� ~ =     �  n     � � � m    ��
�� 
pcls � o    ���� 	0 _path   � m    ��
�� 
TEXT��  ��   } r    # � � � J    ! � �  ��� � o    ���� 	0 _path  ��   � o      ���� 	0 _path  ��  ��   {  ��� � r   ( - � � � o   ( )���� 	0 _path   � n      � � � o   * ,���� 0 _include_path   �  f   ) *��   b  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � . ( Add a new directory to the include path    � � � � P   A d d   a   n e w   d i r e c t o r y   t o   t h e   i n c l u d e   p a t h �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + @param alias|string _path New include path    � � � � V   @ p a r a m   a l i a s | s t r i n g   _ p a t h   N e w   i n c l u d e   p a t h �  � � � l     �� � ���   � ( " @return list The new include path    � � � � D   @ r e t u r n   l i s t   T h e   n e w   i n c l u d e   p a t h �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� �����  0 addincludepath addIncludePath �  ��� � o      ���� 	0 _path  ��  ��   � k     E � �  � � � Z     � ����� � l     ����� � =     � � � n      � � � m    ��
�� 
pcls � o     ���� 	0 _path   � m    ��
�� 
alis��  ��   � r     � � � J     � �  ��� � c     � � � l    ����� � n     � � � 1   	 ��
�� 
psxp � o    	���� 	0 _path  ��  ��   � m    ��
�� 
TEXT��   � o      ���� 	0 _path  ��  ��   �  � � � Z   ' � ���� � l    ��~�} � =    � � � n     � � � m    �|
�| 
pcls � o    �{�{ 	0 _path   � m    �z
�z 
TEXT�~  �}   � r    # � � � J    ! � �  ��y � o    �x�x 	0 _path  �y   � o      �w�w 	0 _path  ��  �   �  � � � Z  ( 9 � ��v�u � l  ( - ��t�s � >  ( - � � � n   ( + � � � m   ) +�r
�r 
pcls � o   ( )�q�q 	0 _path   � m   + ,�p
�p 
list�t  �s   � r   0 5 � � � J   0 3 � �  ��o � o   0 1�n�n 	0 _path  �o   � o      �m�m 	0 _path  �v  �u   �  ��l � r   : E � � � b   : A � � � o   : ?�k�k 0 _include_path   � o   ? @�j�j 	0 _path   � n      � � � o   B D�i�i 0 _include_path   �  f   A B�l   �  � � � l     �h�g�f�h  �g  �f   �  � � � l     �e � ��e   � &   Return the current include path    � � � � @   R e t u r n   t h e   c u r r e n t   i n c l u d e   p a t h �  � � � l     �d�c�b�d  �c  �b   �  � � � l     �a � ��a   �   @return list    � � � �    @ r e t u r n   l i s t �  � � � l     �`�_�^�`  �_  �^   �  � � � i      � � � I      �]�\�[�]  0 getincludepath getIncludePath�\  �[   � L      � � c      � � � n     � � � o    �Z�Z 0 _include_path   �  f      � m    �Y
�Y 
list �  � � � l     �X�W�V�X  �W  �V   �  � � � l     �U � ��U   � 6 0 Load a script from anywhere in the include path    � � � � `   L o a d   a   s c r i p t   f r o m   a n y w h e r e   i n   t h e   i n c l u d e   p a t h �  � � � l     �T�S�R�T  �S  �R   �  � � � l     �Q � �Q   � i c @param string _name Name (and path if necessary) of the library. For example, "Application/Finder"     � �   @ p a r a m   s t r i n g   _ n a m e   N a m e   ( a n d   p a t h   i f   n e c e s s a r y )   o f   t h e   l i b r a r y .   F o r   e x a m p l e ,   " A p p l i c a t i o n / F i n d e r " �  l     �P�P     @return script    �    @ r e t u r n   s c r i p t  l     �O�N�M�O  �N  �M   	
	 l     �L�L    	 @example    �    @ e x a m p l e
  l     �K�K   ^ X -- This will find a script name "Firefox.scpt" or "Firefox.applescript", in a directory    � �   - -   T h i s   w i l l   f i n d   a   s c r i p t   n a m e   " F i r e f o x . s c p t "   o r   " F i r e f o x . a p p l e s c r i p t " ,   i n   a   d i r e c t o r y  l     �J�J   C = -- called "Applications" found somewhere in the include path    � z   - -   c a l l e d   " A p p l i c a t i o n s "   f o u n d   s o m e w h e r e   i n   t h e   i n c l u d e   p a t h  l     �I�I   Y S property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"    � �   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t "  l     �H �H   @ : property Firefox : include("Applications/Firefox") of lib     �!! t   p r o p e r t y   F i r e f o x   :   i n c l u d e ( " A p p l i c a t i o n s / F i r e f o x " )   o f   l i b "#" l     �G$%�G  $    tell Firefox to refresh()   % �&& 4   t e l l   F i r e f o x   t o   r e f r e s h ( )# '(' l     �F�E�D�F  �E  �D  ( )*) i   ! $+,+ I      �C-�B�C 0 include  - .�A. o      �@�@ 	0 _name  �A  �B  , k     f// 010 X     a2�?32 k    \44 565 Q    *78�>7 L    !99 l    :�=�<: I    �;;�:
�; .sysoloadscpt        file; b    <=< b    >?> o    �9�9 	0 _path  ? m    @@ �AA  /= o    �8�8 	0 _name  �:  �=  �<  8 R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  �>  6 BCB Q   + CDE�4D L   . :FF l  . 9G�3�2G I  . 9�1H�0
�1 .sysoloadscpt        fileH b   . 5IJI b   . 3KLK b   . 1MNM o   . /�/�/ 	0 _path  N m   / 0OO �PP  /L o   1 2�.�. 	0 _name  J m   3 4QQ �RR 
 . s c p t�0  �3  �2  E R      �-�,�+
�- .ascrerr ****      � ****�,  �+  �4  C S�*S Q   D \TU�)T L   G SVV l  G RW�(�'W I  G R�&X�%
�& .sysoloadscpt        fileX b   G NYZY b   G L[\[ b   G J]^] o   G H�$�$ 	0 _path  ^ m   H I__ �``  /\ o   J K�#�# 	0 _name  Z m   L Maa �bb  . a p p l e s c r i p t�%  �(  �'  U R      �"�!� 
�" .ascrerr ****      � ****�!  �   �)  �*  �? 	0 _path  3 n   cdc I    ����  0 getincludepath getIncludePath�  �  d  f    1 e�e R   b f�f�
� .ascrerr ****      � ****f m   d egg �hh " l i b r a r y   n o t   f o u n d�  �  * iji l     ����  �  �  j klk l      �mn�  m [ Uon include(_name)	return (load script _include_path & _name & ".scpt")end include   n �oo �  o n   i n c l u d e ( _ n a m e )  	 r e t u r n   ( l o a d   s c r i p t   _ i n c l u d e _ p a t h   &   _ n a m e   &   " . s c p t " )  e n d   i n c l u d e l pqp l     ����  �  �  q rsr l     ����  �  �  s tut l     �vw�  v   Display an error message   w �xx 2   D i s p l a y   a n   e r r o r   m e s s a g eu yzy l     ����  �  �  z {|{ l     �}~�  } + % @param string _message Error message   ~ � J   @ p a r a m   s t r i n g   _ m e s s a g e   E r r o r   m e s s a g e| ��� l     �
���
  � X R @param integer _number Error code (set to anything other than an integer to omit)   � ��� �   @ p a r a m   i n t e g e r   _ n u m b e r   E r r o r   c o d e   ( s e t   t o   a n y t h i n g   o t h e r   t h a n   a n   i n t e g e r   t o   o m i t )� ��� l     �	���	  � 9 3 @return record The return value of `display alert`   � ��� f   @ r e t u r n   r e c o r d   T h e   r e t u r n   v a l u e   o f   ` d i s p l a y   a l e r t `� ��� l     ����  �  	 @example   � ���    @ e x a m p l e� ��� l     ����  � Y S property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"   � ��� �   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t "� ��� l     ����  � 
  try   � ���    t r y� ��� l     ����  � " 	-- commands that might fail   � ��� 8 	 - -   c o m m a n d s   t h a t   m i g h t   f a i l� ��� l     ����  � 1 + on error error_message number error_number   � ��� V   o n   e r r o r   e r r o r _ m e s s a g e   n u m b e r   e r r o r _ n u m b e r� ��� l     ����  � 8 2 	displayError(error_message, error_number) of lib   � ��� d   	 d i s p l a y E r r o r ( e r r o r _ m e s s a g e ,   e r r o r _ n u m b e r )   o f   l i b� ��� l     ����  �   end try   � ���    e n d   t r y� ��� l     �� ���  �   ��  � ��� i   % (��� I      ������� 0 displayerror displayError� ��� o      ���� 0 _message  � ���� o      ���� 0 _number  ��  ��  � k     )�� ��� r     ��� m     �� ��� 
 E r r o r� o      ���� 
0 _title  � ��� Z   ������� l   	������ =   	��� n    ��� m    ��
�� 
pcls� o    ���� 0 _number  � m    ��
�� 
long��  ��  � r    ��� b    ��� b    ��� b    ��� o    ���� 
0 _title  � m    �� ���    [� o    ���� 0 _number  � m    �� ���  ]� o      ���� 
0 _title  ��  ��  � ���� I   )����
�� .sysodisAaleR        TEXT� o    ���� 
0 _title  � ����
�� 
mesS� o    ���� 0 _message  � ����
�� 
as A� m    ��
�� EAlTwarN� ����
�� 
btns� J     #�� ���� m     !�� ���  O K��  � �����
�� 
dflt� m   $ %���� ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � !  Is UI Scriping is enabled?   � ��� 6   I s   U I   S c r i p i n g   i s   e n a b l e d ?� ��� l     ��������  ��  ��  � ��� l     ������  �   @return boolean   � ���     @ r e t u r n   b o o l e a n� ��� l     ��������  ��  ��  � ��� i   ) ,��� I      �������� (0 uiscriptingenabled UIScriptingEnabled��  ��  � O    
��� L    	�� 1    ��
�� 
uien� m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � : 4 Advanced {do shell script} using a bash login shell   � ��� h   A d v a n c e d   { d o   s h e l l   s c r i p t }   u s i n g   a   b a s h   l o g i n   s h e l l�    l     ��������  ��  ��    l     ����   U O @param string _command The command you wish to run through a bash login shell.    � �   @ p a r a m   s t r i n g   _ c o m m a n d   T h e   c o m m a n d   y o u   w i s h   t o   r u n   t h r o u g h   a   b a s h   l o g i n   s h e l l .  l     ��	
��  	 O I @param boolean _background Run as a background process (asynchronously).   
 � �   @ p a r a m   b o o l e a n   _ b a c k g r o u n d   R u n   a s   a   b a c k g r o u n d   p r o c e s s   ( a s y n c h r o n o u s l y ) .  l     ����   ) # @return string the commands output    � F   @ r e t u r n   s t r i n g   t h e   c o m m a n d s   o u t p u t  l     ��������  ��  ��    i   - 0 I      ������ 0 
bashscript 
bashScript  o      ���� 0 _command   �� o      ���� 0 _background  ��  ��   k        r      m        �!!   b a s h   - l s   < < ' E O F ' o      ���� 0 _script   "#" Z   $%����$ =    &'& o    ���� 0 _background  ' m    ��
�� boovtrue% r   
 ()( b   
 *+* o   
 ���� 0 _script  + m    ,, �--    & > / d e v / n u l l   &) o      ���� 0 _script  ��  ��  # .��. L     // I   ��0��
�� .sysoexecTEXT���     TEXT0 b    121 b    343 b    565 o    ���� 0 _script  6 m    77 �88  
4 o    ���� 0 _command  2 m    99 �::  
 E O F��  ��   ;<; l     ��������  ��  ��  < =>= l     ��?@��  ? + % Alias to bashScript(_command, false)   @ �AA J   A l i a s   t o   b a s h S c r i p t ( _ c o m m a n d ,   f a l s e )> BCB l     ��������  ��  ��  C DED l     ��FG��  F   @see bashScript   G �HH     @ s e e   b a s h S c r i p tE IJI l     ��������  ��  ��  J KLK i   1 4MNM I      ��O���� 0 bash  O P��P o      ���� 0 _command  ��  ��  N L     QQ n    RSR I    ��T���� 0 
bashscript 
bashScriptT UVU o    ���� 0 command  V W��W m    ��
�� boovfals��  ��  S  f     L XYX l     ��������  ��  ��  Y Z[Z h   5 <��\�� 0 _application _Application\ k      ]] ^_^ l     ��������  ��  ��  _ `a` l     ��bc��  b   lib -> _Application   c �dd (   l i b   - >   _ A p p l i c a t i o na efe l     ��gh��  g . ( Functions for working with applications   h �ii P   F u n c t i o n s   f o r   w o r k i n g   w i t h   a p p l i c a t i o n sf jkj l     ��������  ��  ��  k lml l     ��no��  n 6 0 Bundle identifier of the system default browser   o �pp `   B u n d l e   i d e n t i f i e r   o f   t h e   s y s t e m   d e f a u l t   b r o w s e rm qrq l     ��st��  s \ V Determined by the default application for the 'http://' URL scheme. If none is found,   t �uu �   D e t e r m i n e d   b y   t h e   d e f a u l t   a p p l i c a t i o n   f o r   t h e   ' h t t p : / / '   U R L   s c h e m e .   I f   n o n e   i s   f o u n d ,r vwv l     ��xy��  x "  returns "com.apple.Safari".   y �zz 8   r e t u r n s   " c o m . a p p l e . S a f a r i " .w {|{ l     ��������  ��  ��  | }~} l     �����     @return string   � ���    @ r e t u r n   s t r i n g~ ��� l     ��������  ��  ��  � ��� i     ��� I      ��������  0 defaultbrowser defaultBrowser��  ��  � k     V�� ��� O    Q��� O    P��� X    O����� Q   + J����� Z  . A������� =  . 3��� n   . 1��� o   / 1���� (0 lshandlerurlscheme LSHandlerURLScheme� o   . /���� 	0 _item  � m   1 2�� ���  h t t p� L   6 =�� n   6 <��� o   7 ;���� $0 lshandlerroleall LSHandlerRoleAll� o   6 7���� 	0 _item  ��  ��  � R      ����~
�� .ascrerr ****      � ****�  �~  ��  �� 	0 _item  � l   ��}�|� n    ��� o    �{�{ 0 
lshandlers 
LSHandlers� l   ��z�y� c    ��� n    ��� 1    �x
�x 
valL� n    ��� 1    �w
�w 
pcnt�  g    � m    �v
�v 
reco�z  �y  �}  �|  � 4    �u�
�u 
plif� l   ��t�s� b    ��� l   ��r�q� I   �p��
�p .earsffdralis        afdr� m    �o
�o afdrpref� �n��m
�n 
rtyp� m    	�l
�l 
utxt�m  �r  �q  � m    �� ��� < c o m . a p p l e . L a u n c h S e r v i c e s . p l i s t�t  �s  � m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��k� L   R V�� m   R U�� ���   c o m . a p p l e . S a f a r i�k  � ��� l     �j�i�h�j  �i  �h  � ��� l     �g���g  � + % Get the POSIX path to an application   � ��� J   G e t   t h e   P O S I X   p a t h   t o   a n   a p p l i c a t i o n� ��� l     �f���f  � R L Attempts to use "find_app" if it can find the binary in the PATH, otherwise   � ��� �   A t t e m p t s   t o   u s e   " f i n d _ a p p "   i f   i t   c a n   f i n d   t h e   b i n a r y   i n   t h e   P A T H ,   o t h e r w i s e� ��� l     �e���e  � !  it uses basic applescript.   � ��� 6   i t   u s e s   b a s i c   a p p l e s c r i p t .� ��� l     �d�c�b�d  �c  �b  � ��� l     �a���a  � Q K @param string _name The application name, "AppleScript Editor" for example   � ��� �   @ p a r a m   s t r i n g   _ n a m e   T h e   a p p l i c a t i o n   n a m e ,   " A p p l e S c r i p t   E d i t o r "   f o r   e x a m p l e� ��� l     �`���`  �   @return string   � ���    @ r e t u r n   s t r i n g� ��� l     �_�^�]�_  �^  �]  � ��� i    ��� I      �\��[�\ 0 pathto pathTo� ��Z� o      �Y�Y 	0 _name  �Z  �[  � k     /�� ��� r     ��� m     �X
�X 
msng� o      �W�W 	0 _path  � ��� Q    ,���� r    ��� n   ��� I    �V��U�V 0 
bashscript 
bashScript� ��� b    ��� m    	�� ���  f i n d _ a p p  � n   	 ��� 1    �T
�T 
strq� l  	 ��S�R� b   	 ��� o   	 
�Q�Q 	0 _name  � m   
 �� ���  . a p p�S  �R  � ��P� m    �O
�O boovfals�P  �U  �  f    � o      �N�N 	0 _path  � R      �M�L�K
�M .ascrerr ****      � ****�L  �K  � r    ,��� c    *��� n    (��� 1   & (�J
�J 
psxp� l   &��I�H� I   &�G �F
�G .earsffdralis        afdr  4    "�E
�E 
capp o     !�D�D 	0 _name  �F  �I  �H  � m   ( )�C
�C 
TEXT� o      �B�B 	0 _path  � �A L   - / o   - .�@�@ 	0 _path  �A  �  l     �?�>�=�?  �>  �=    l     �<	�<   = 7 Get the POSIX path to an application by application ID   	 �

 n   G e t   t h e   P O S I X   p a t h   t o   a n   a p p l i c a t i o n   b y   a p p l i c a t i o n   I D  l     �;�;         �     l     �:�:   "  @see pathTo of _Application    � 8   @ s e e   p a t h T o   o f   _ A p p l i c a t i o n  l     �9�9   a [ @param string _id The application bundle identifier, "com.apple.ScriptEditor2" for example    � �   @ p a r a m   s t r i n g   _ i d   T h e   a p p l i c a t i o n   b u n d l e   i d e n t i f i e r ,   " c o m . a p p l e . S c r i p t E d i t o r 2 "   f o r   e x a m p l e  l     �8�8     @return string    �    @ r e t u r n   s t r i n g   l     �7�6�5�7  �6  �5    !"! i    #$# I      �4%�3�4 0 pathtoid pathToID% &�2& o      �1�1 0 _id  �2  �3  $ k     .'' ()( r     *+* m     �0
�0 
msng+ o      �/�/ 	0 _path  ) ,-, Q    +./0. r    121 n   343 I    �.5�-�. 0 
bashscript 
bashScript5 676 b    898 m    	:: �;;  f i n d _ a p p  9 n   	 <=< 1   
 �,
�, 
strq= o   	 
�+�+ 0 _id  7 >�*> m    �)
�) boovfals�*  �-  4  f    2 o      �(�( 	0 _path  / R      �'�&�%
�' .ascrerr ****      � ****�&  �%  0 r    +?@? c    )ABA n    'CDC 1   % '�$
�$ 
psxpD l   %E�#�"E I   %�!F� 
�! .earsffdralis        afdrF 5    !�G�
� 
cappG o    �� 0 _id  
� kfrmID  �   �#  �"  B m   ' (�
� 
TEXT@ o      �� 	0 _path  - H�H L   , .II o   , -�� 	0 _path  �  " JKJ l     ����  �  �  K LML l     �NO�  N V P Calls frontmostFileOfProcess() using the current front most Application Process   O �PP �   C a l l s   f r o n t m o s t F i l e O f P r o c e s s ( )   u s i n g   t h e   c u r r e n t   f r o n t   m o s t   A p p l i c a t i o n   P r o c e s sM QRQ l     ����  �  �  R STS l     �UV�  U $  @return alias|(missing value)   V �WW <   @ r e t u r n   a l i a s | ( m i s s i n g   v a l u e )T XYX l     ����  �  �  Y Z[Z i    \]\ I      ���� 0 frontmostfile frontmostFile�  �  ] k     ^^ _`_ O    aba r    cdc 6   efe 4   �
g
�
 
pcapg m    �	�	 f =  	 hih 1   
 �
� 
pisfi m    �
� boovtrued o      �� 0 p  b m     jj�                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ` k�k L    ll n   mnm I    �o�� 00 frontmostfileofprocess frontmostFileOfProcesso p�p o    �� 0 p  �  �  n  f    �  [ qrq l     � �����   ��  ��  r sts l     ��uv��  u s m Directory of the front most file of the front most Application Process (if it isn't not already a directory)   v �ww �   D i r e c t o r y   o f   t h e   f r o n t   m o s t   f i l e   o f   t h e   f r o n t   m o s t   A p p l i c a t i o n   P r o c e s s   ( i f   i t   i s n ' t   n o t   a l r e a d y   a   d i r e c t o r y )t xyx l     ��������  ��  ��  y z{z l     ��|}��  | $  @return alias|(missing value)   } �~~ <   @ r e t u r n   a l i a s | ( m i s s i n g   v a l u e ){ � l     ��������  ��  ��  � ��� i    ��� I      �������� (0 frontmostdirectory frontmostDirectory��  ��  � k     7�� ��� r     ��� n    ��� I    �������� 0 frontmostfile frontmostFile��  ��  �  f     � o      ���� 0 f  � ��� Z    4������� >   ��� o    	���� 0 f  � m   	 
��
�� 
msng� Z    0������ n    ��� 1    ��
�� 
asdr� l   ������ I   �����
�� .sysonfo4asfe        file� o    ���� 0 f  ��  ��  ��  � L    �� c    ��� o    ���� 0 f  � m    ��
�� 
alis��  � L     0�� c     /��� l    -������ c     -��� l    +������ I    +�����
�� .sysoexecTEXT���     TEXT� b     '��� m     !�� ���  d i r n a m e  � l  ! &������ n   ! &��� 1   $ &��
�� 
strq� n   ! $��� 1   " $��
�� 
psxp� o   ! "���� 0 f  ��  ��  ��  ��  ��  � m   + ,��
�� 
psxf��  ��  � m   - .��
�� 
alis��  ��  � ���� L   5 7�� m   5 6��
�� 
msng��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � e _ Front most document of the front most window (assuming there is one) of an Application Process   � ��� �   F r o n t   m o s t   d o c u m e n t   o f   t h e   f r o n t   m o s t   w i n d o w   ( a s s u m i n g   t h e r e   i s   o n e )   o f   a n   A p p l i c a t i o n   P r o c e s s� ��� l     ��������  ��  ��  � ��� l     ������  � , & @param |application process| _process   � ��� L   @ p a r a m   | a p p l i c a t i o n   p r o c e s s |   _ p r o c e s s� ��� l     ������  � u o @return alias|(missing value) Alias of the file or missing value if the frontmost file couldn't be determined.   � ��� �   @ r e t u r n   a l i a s | ( m i s s i n g   v a l u e )   A l i a s   o f   t h e   f i l e   o r   m i s s i n g   v a l u e   i f   t h e   f r o n t m o s t   f i l e   c o u l d n ' t   b e   d e t e r m i n e d .� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 00 frontmostfileofprocess frontmostFileOfProcess� ���� o      ���� 0 _process  ��  ��  � k     b�� ��� h     ����� 0 ff  � k      �� ��� j     ����� 0 p  � o     ���� 0 _process  � ��� l     ������  � S M This method for finding frontmostFileOf() attempts to include an application   � ��� �   T h i s   m e t h o d   f o r   f i n d i n g   f r o n t m o s t F i l e O f ( )   a t t e m p t s   t o   i n c l u d e   a n   a p p l i c a t i o n� ��� l     ������  � R L library for _app, and run the resulting library's `frontmostFile()` handler   � ��� �   l i b r a r y   f o r   _ a p p ,   a n d   r u n   t h e   r e s u l t i n g   l i b r a r y ' s   ` f r o n t m o s t F i l e ( ) `   h a n d l e r� ��� i    
��� I      �������� 0 ff1  ��  ��  � k     N�� ��� Q     8���� r    ��� n   ��� I    ������� 0 include  � ���� b    ��� m    �� ���  A p p l i c a t i o n /� l   ������ n    ��� 1   
 ��
�� 
bnid� o    
���� 0 p  ��  ��  ��  ��  �  f    � o      ���� 0 _applib  � R      ������
�� .ascrerr ****      � ****��  ��  � Q    8���� r    .��� n   ,��� I    ,������� 0 include  � ���� b    (��� m        �  A p p l i c a t i o n /� l    '���� n     ' 1   % '��
�� 
pnam o     %���� 0 p  ��  ��  ��  ��  �  f    � o      ���� 0 _applib  � R      ������
�� .ascrerr ****      � ****��  ��  � L   6 8 m   6 7��
�� boovfals�  Q   9 K	�� L   < B

 n   < A I   = A�������� 0 frontmostfile frontmostFile��  ��   o   < =���� 0 _applib  	 R      ������
�� .ascrerr ****      � ****��  ��  ��   �� L   L N m   L M��
�� boovfals��  �  l     ��������  ��  ��    i     I      �������� 0 ff2  ��  ��   k     *  Q     '�� O    L     c     l   ���� c     !  l   "����" n    #$# 1    ��
�� 
ppth$ 4   ��%
�� 
docu% m    ���� ��  ��  ! m    ��
�� 
psxf��  ��   m    ��
�� 
alis 5    ��&��
�� 
capp& l   '����' n    ()( 1   
 ��
�� 
bnid) o    
���� 0 p  ��  ��  
�� kfrmID   R      ����~
�� .ascrerr ****      � ****�  �~  ��   *�}* L   ( *++ m   ( )�|
�| boovfals�}   ,-, l     �{�z�y�{  �z  �y  - .�x. i    /0/ I      �w�v�u�w 0 ff3  �v  �u  0 k     q11 232 O    n454 Q    m67�t6 X    d8�s98 k    _:: ;<; r    $=>= n    "?@? 1     "�r
�r 
pALL@ n     ABA 2     �q
�q 
attrB o    �p�p 0 w  > o      �o�o 0 attribs  < C�nC X   % _D�mED Z  5 ZFG�l�kF F   5 DHIH =  5 :JKJ l  5 8L�j�iL n   5 8MNM 1   6 8�h
�h 
pnamN o   5 6�g�g 0 i  �j  �i  K m   8 9OO �PP  A X D o c u m e n tI >  = BQRQ l  = @S�f�eS n   = @TUT 1   > @�d
�d 
valLU o   = >�c�c 0 i  �f  �e  R m   @ A�b
�b 
msngG L   G VVV c   G UWXW l  G SY�a�`Y c   G SZ[Z l  G Q\�_�^\ n   G Q]^] I   J Q�]_�\�] 0 	urldecode 	URLDecode_ `�[` n   J Maba 1   K M�Z
�Z 
valLb o   J K�Y�Y 0 i  �[  �\  ^ n  G Jcdc o   H J�X�X 0 _text _Textd  f   G H�_  �^  [ m   Q R�W
�W 
psxf�a  �`  X m   S T�V
�V 
alis�l  �k  �m 0 i  E o   ( )�U�U 0 attribs  �n  �s 0 w  9 n   
 efe 2    �T
�T 
cwinf o   
 �S�S 0 p  7 R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  �t  5 m     gg�                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  3 h�Oh L   o qii m   o p�N
�N boovfals�O  �x  � jkj l   �M�L�K�M  �L  �K  k lml l   �Jno�J  n G A Run through the various detection methods until we score a match   o �pp �   R u n   t h r o u g h   t h e   v a r i o u s   d e t e c t i o n   m e t h o d s   u n t i l   w e   s c o r e   a   m a t c hm qrq r    sts n    uvu I   	 �I�H�G�I 0 ff1  �H  �G  v o    	�F�F 0 ff  t o      �E�E 0 _res  r wxw Z   +yz�D�Cy F    {|{ =   }~} n    � m    �B
�B 
pcls� o    �A�A 0 _res  ~ m    �@
�@ 
bool| =   ��� o    �?�? 0 _res  � m    �>
�> boovfalsz r     '��� n     %��� I   ! %�=�<�;�= 0 ff2  �<  �;  � o     !�:�: 0 ff  � o      �9�9 0 _res  �D  �C  x ��� Z  , G���8�7� F   , 9��� =  , 1��� n   , /��� m   - /�6
�6 
pcls� o   , -�5�5 0 _res  � m   / 0�4
�4 
bool� =  4 7��� o   4 5�3�3 0 _res  � m   5 6�2
�2 boovfals� r   < C��� n   < A��� I   = A�1�0�/�1 0 ff3  �0  �/  � o   < =�.�. 0 ff  � o      �-�- 0 _res  �8  �7  � ��� l  H H�,�+�*�,  �+  �*  � ��� l  H H�)���)  � ) # Couldn't determine front most file   � ��� F   C o u l d n ' t   d e t e r m i n e   f r o n t   m o s t   f i l e� ��� Z  H _���(�'� F   H U��� =  H M��� n   H K��� m   I K�&
�& 
pcls� o   H I�%�% 0 _res  � m   K L�$
�$ 
bool� =  P S��� o   P Q�#�# 0 _res  � m   Q R�"
�" boovfals� r   X [��� m   X Y�!
�! 
msng� o      � �  0 _res  �(  �'  � ��� l  ` `����  �  �  � ��� L   ` b�� o   ` a�� 0 _res  �  � ��� l     ����  �  �  �  [ ��� l     ����  �  �  � ��� h   = H��� 	0 _file  � k      �� ��� l     ����  �  �  � ��� l     ����  �   lib -> _File   � ���    l i b   - >   _ F i l e� ��� l     ����  �   File system functions   � ��� ,   F i l e   s y s t e m   f u n c t i o n s� ��� l     ����  �  �  � ��� l     �
���
  � 0 * Return the filename portion of a pathname   � ��� T   R e t u r n   t h e   f i l e n a m e   p o r t i o n   o f   a   p a t h n a m e� ��� l     �	���	  �  �  � ��� l     ����  �   @return string   � ���    @ r e t u r n   s t r i n g� ��� l     ����  �  �  � ��� i     ��� I      ���� 0 basename  � �� � o      ���� 	0 _path  �   �  � k     �� ��� Z    ������� =    ��� n     ��� m    ��
�� 
pcls� o     ���� 	0 _path  � m    ��
�� 
alis� r    ��� l   ������ n    ��� 1   	 ��
�� 
psxp� o    	���� 	0 _path  ��  ��  � o      ���� 	0 _path  ��  ��  � ���� L    �� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  b a s e n a m e  � l   ������ n    ��� 1    ��
�� 
strq� o    ���� 	0 _path  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 1 + Return the directory portion of a pathname   � ��� V   R e t u r n   t h e   d i r e c t o r y   p o r t i o n   o f   a   p a t h n a m e� ��� l     ��������  ��  ��  � ��� l     ������  �   @return string   � ���    @ r e t u r n   s t r i n g� � � l     ��������  ��  ��     i     I      ������ 0 dirname   �� o      ���� 	0 _path  ��  ��   k      	 Z    
����
 =     n      m    ��
�� 
pcls o     ���� 	0 _path   m    ��
�� 
alis r     l   ���� n     1   	 ��
�� 
psxp o    	���� 	0 _path  ��  ��   o      ���� 	0 _path  ��  ��  	 �� L     I   ����
�� .sysoexecTEXT���     TEXT b     m     �  d i r n a m e   l   ���� n     1    ��
�� 
strq o    ���� 	0 _path  ��  ��  ��  ��     l     ��������  ��  ��    !"! l     ��#$��  # 8 2 Same as basename() but also removes the extension   $ �%% d   S a m e   a s   b a s e n a m e ( )   b u t   a l s o   r e m o v e s   t h e   e x t e n s i o n" &'& l     ��������  ��  ��  ' ()( l     ��*+��  *   @return string   + �,,    @ r e t u r n   s t r i n g) -.- l     ��������  ��  ��  . /0/ i    121 I      ��3���� 0 filename  3 4��4 o      ���� 	0 _path  ��  ��  2 k     55 676 Z    89����8 =    :;: n     <=< m    ��
�� 
pcls= o     ���� 	0 _path  ; m    ��
�� 
alis9 r    >?> l   @����@ n    ABA 1   	 ��
�� 
psxpB o    	���� 	0 _path  ��  ��  ? o      ���� 	0 _path  ��  ��  7 C��C L    DD I   ��E��
�� .sysoexecTEXT���     TEXTE b    FGF b    HIH m    JJ �KK  f = ` b a s e n a m e  I l   L����L n    MNM 1    ��
�� 
strqN o    ���� 	0 _path  ��  ��  G m    OO �PP " `   & &   e c h o   $ { f % . * }��  ��  0 QRQ l     ��������  ��  ��  R STS l     ��UV��  U , & Find an executable in the system PATH   V �WW L   F i n d   a n   e x e c u t a b l e   i n   t h e   s y s t e m   P A T HT XYX l     ��Z[��  Z      [ �\\   Y ]^] l     ��_`��  _ 2 , @param string _name The program to look for   ` �aa X   @ p a r a m   s t r i n g   _ n a m e   T h e   p r o g r a m   t o   l o o k   f o r^ bcb l     ��de��  d ? 9 @return string|missing value The location of the program   e �ff r   @ r e t u r n   s t r i n g | m i s s i n g   v a l u e   T h e   l o c a t i o n   o f   t h e   p r o g r a mc ghg l     ��������  ��  ��  h iji i    klk I      ��m���� 0 findbin findBinm n��n o      ���� 	0 _name  ��  ��  l k     /oo pqp r     rsr m     ��
�� 
msngs o      ���� 0 _bin  q tut Q    vw��v r    xyx n   z{z I    ��|���� 0 
bashscript 
bashScript| }~} b    � b    ��� m    	�� ���  w h i c h  � l  	 ������ n   	 ��� 1   
 ��
�� 
strq� o   	 
���� 	0 _name  ��  ��  � m    �� ���    2 > / d e v / n u l l~ ���� m    ��
�� boovfals��  ��  {  f    y o      ���� 0 _bin  w R      ������
�� .ascrerr ****      � ****��  ��  ��  u ��� Z    ,������� =    #��� o     !���� 0 _bin  � m   ! "�� ���  � L   & (�� m   & '��
�� 
msng��  ��  � ���� L   - /�� o   - .���� 0 _bin  ��  j ��� l     ��������  ��  ��  � ��� l     ������  � U O Filters a list of files to only contain files with one of the given extensions   � ��� �   F i l t e r s   a   l i s t   o f   f i l e s   t o   o n l y   c o n t a i n   f i l e s   w i t h   o n e   o f   t h e   g i v e n   e x t e n s i o n s� ��� l     ��������  ��  ��  � ��� l     ������  � 4 . @param alias[] _f The list of files to filter   � ��� \   @ p a r a m   a l i a s [ ]   _ f   T h e   l i s t   o f   f i l e s   t o   f i l t e r� ��� l     ������  � L F @param string|string[] _extensions A list of file extensions to match   � ��� �   @ p a r a m   s t r i n g | s t r i n g [ ]   _ e x t e n s i o n s   A   l i s t   o f   f i l e   e x t e n s i o n s   t o   m a t c h� ��� l     ������  �   @return list   � ���    @ r e t u r n   l i s t� ��� l     ����~��  �  �~  � ��� i    ��� I      �}��|�} 0 onlyext onlyExt� ��� o      �{�{ 0 _f  � ��z� o      �y�y 0 _extensions  �z  �|  � k     <�� ��� r     ��� c     ��� o     �x�x 0 _extensions  � m    �w
�w 
list� o      �v�v 0 _extensions  � ��u� O    <��� k   
 ;�� ��� r   
 ��� J   
 �t�t  � o      �s�s 0 	_filtered  � ��� X    6��r�� Z   1���q�p� E   $��� o     �o�o 0 _extensions  � n     #��� 1   ! #�n
�n 
nmxt� o     !�m�m 0 f  � s   ' -��� n   ' *��� 1   ( *�l
�l 
pcnt� o   ' (�k�k 0 f  � l     ��j�i� n      ���  ;   + ,� o   * +�h�h 0 	_filtered  �j  �i  �q  �p  �r 0 f  � o    �g�g 0 _f  � ��f� L   7 ;�� c   7 :��� o   7 8�e�e 0 	_filtered  � m   8 9�d
�d 
list�f  � m    ���                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �u  � ��� l     �c�b�a�c  �b  �a  � ��� l     �`���`  � D > Turns a list of files into a string of quoted shell arguments   � ��� |   T u r n s   a   l i s t   o f   f i l e s   i n t o   a   s t r i n g   o f   q u o t e d   s h e l l   a r g u m e n t s� ��� l     �_�^�]�_  �^  �]  � ��� l     �\���\  � 4 . @param alias[] _f The list of files to filter   � ��� \   @ p a r a m   a l i a s [ ]   _ f   T h e   l i s t   o f   f i l e s   t o   f i l t e r� ��� l     �[���[  �   @return string   � ���    @ r e t u r n   s t r i n g� ��� l     �Z�Y�X�Z  �Y  �X  � ��� i    ��� I      �W��V�W 0 
toshellarg 
toShellArg� ��U� o      �T�T 0 _f  �U  �V  � O     ;��� k    :�� ��� r    ��� m    �� �    � o      �S�S 
0 _paths  �  X    *�R r    % b    # b    	
	 o    �Q�Q 
0 _paths  
 m     �    n    " 1     "�P
�P 
strq n      1     �O
�O 
psxp l   �N�M c     o    �L�L 0 f   m    �K
�K 
TEXT�N  �M   o      �J�J 
0 _paths  �R 0 f   o    �I�I 0 _f    Z  + 7�H�G =  + . o   + ,�F�F 
0 _paths   m   , - �   L   1 3 m   1 2�E
�E boovfals�H  �G   �D L   8 : o   8 9�C�C 
0 _paths  �D  � m     �                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  !  l     �B�A�@�B  �A  �@  ! "#" l     �?$%�?  $ M G Same as filename() but uses the current script/application as the path   % �&& �   S a m e   a s   f i l e n a m e ( )   b u t   u s e s   t h e   c u r r e n t   s c r i p t / a p p l i c a t i o n   a s   t h e   p a t h# '(' l     �>�=�<�>  �=  �<  ( )*) l     �;+,�;  +   @return string   , �--    @ r e t u r n   s t r i n g* ./. l     �:�9�8�:  �9  �8  / 010 i    232 I      �7�6�5�7 0 
scriptname 
scriptName�6  �5  3 L     44 n    
565 I    
�47�3�4 0 filename  7 8�28 I   �19�0
�1 .earsffdralis        afdr9  f    �0  �2  �3  6  f     1 :;: l     �/�.�-�/  �.  �-  ; <=< l     �,>?�,  > > 8 Makes sure file doesn't already exist in specified path   ? �@@ p   M a k e s   s u r e   f i l e   d o e s n ' t   a l r e a d y   e x i s t   i n   s p e c i f i e d   p a t h= ABA l     �+CD�+  C B < If it does this will append a number to the end of the file   D �EE x   I f   i t   d o e s   t h i s   w i l l   a p p e n d   a   n u m b e r   t o   t h e   e n d   o f   t h e   f i l eB FGF l     �*�)�(�*  �)  �(  G HIH l     �'JK�'  J f ` @param config record {path: alias|string, prefix: string (optional), suffix: string (optional)}   K �LL �   @ p a r a m   c o n f i g   r e c o r d   { p a t h :   a l i a s | s t r i n g ,   p r e f i x :   s t r i n g   ( o p t i o n a l ) ,   s u f f i x :   s t r i n g   ( o p t i o n a l ) }I MNM l     �&OP�&  O A ; @return string A unique file name (not including the path)   P �QQ v   @ r e t u r n   s t r i n g   A   u n i q u e   f i l e   n a m e   ( n o t   i n c l u d i n g   t h e   p a t h )N RSR l     �%�$�#�%  �$  �#  S TUT i    VWV I      �"X�!�" 0 
uniquefile 
uniqueFileX Y� Y o      �� 
0 config  �   �!  W k     QZZ [\[ r     
]^] b     _`_ o     �� 
0 config  ` K    aa �bc� 
0 prefix  b m    dd �ee  u n t i t l e dc �f�� 
0 suffix  f m    gg �hh  �  ^ o      �� 
0 config  \ iji r    klk m    �� l o      �� 0 i  j m�m O    Qnon k    Ppp qrq r    sts n    uvu 1    �
� 
psxpv l   w��w c    xyx l   z��z n    {|{ 1    �
� 
FTPc| o    �� 
0 config  �  �  y m    �
� 
TEXT�  �  t o      �� 0 _parent  r }~} r    &� b    $��� l    ���� n     ��� o     �� 
0 prefix  � o    �
�
 
0 config  �  �  � l    #��	�� n     #��� o   ! #�� 
0 suffix  � o     !�� 
0 config  �	  �  � o      �� 	0 _name  ~ ��� V   ' M��� k   5 H�� ��� r   5 B��� b   5 @��� b   5 <��� b   5 :��� l  5 8���� n   5 8��� o   6 8�� 
0 prefix  � o   5 6�� 
0 config  �  �  � m   8 9�� ���   � o   : ;� �  0 i  � l  < ?������ n   < ?��� o   = ?���� 
0 suffix  � o   < =���� 
0 config  ��  ��  � o      ���� 	0 _name  � ���� r   C H��� [   C F��� o   C D���� 0 i  � m   D E���� � o      ���� 0 i  ��  � I  + 4�����
�� .coredoexbool        obj � l  + 0������ c   + 0��� b   + .��� o   + ,���� 0 _parent  � o   , -���� 	0 _name  � m   . /��
�� 
psxf��  ��  ��  � ���� L   N P�� o   N O���� 	0 _name  ��  o m    ���                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  U ���� l     ��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� h   I T����� 0 _list _List� k      �� ��� l     ��������  ��  ��  � ��� l     ������  �   lib -> _List   � ���    l i b   - >   _ L i s t� ��� l     ������  �   List functions   � ���    L i s t   f u n c t i o n s� ��� l     ��������  ��  ��  � ��� l     ������  � . ( Join every item of a list into a string   � ��� P   J o i n   e v e r y   i t e m   o f   a   l i s t   i n t o   a   s t r i n g� ��� l     ��������  ��  ��  � ��� l     ������  � ( " @param string _l The list to join   � ��� D   @ p a r a m   s t r i n g   _ l   T h e   l i s t   t o   j o i n� ��� l     ������  � < 6 @param string _delim Character to join the items with   � ��� l   @ p a r a m   s t r i n g   _ d e l i m   C h a r a c t e r   t o   j o i n   t h e   i t e m s   w i t h� ��� l     ������  �   @return list   � ���    @ r e t u r n   l i s t� ��� l     ��������  ��  ��  � ��� i     ��� I      ������� 0 join  � ��� o      ���� 0 _l  � ���� o      ���� 
0 _delim  ��  ��  � k     3�� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 _d  � ��� Q    *���� k   	 �� ��� r   	 ��� l  	 ������ c   	 ��� o   	 
���� 
0 _delim  � m   
 ��
�� 
TEXT��  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� r    ��� c    ��� o    ���� 0 _l  � m    ��
�� 
ctxt� o      ���� 0 _result  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 err_msg  � �� ��
�� 
errn  o      ���� 0 err_num  ��  � k    *  r    # o    ���� 0 _d   n      1     "��
�� 
txdl 1     ��
�� 
ascr �� R   $ *��	

�� .ascrerr ****      � ****	 o   ( )���� 0 err_msg  
 ����
�� 
errn o   & '���� 0 err_num  ��  ��  �  r   + 0 o   + ,���� 0 _d   n      1   - /��
�� 
txdl 1   , -��
�� 
ascr �� L   1 3 o   1 2���� 0 _result  ��  �  l     ��������  ��  ��    l     ����   ` Z Returns the index of the first occurrence of _e within _l, or -1 if _l doesn't contain _e    � �   R e t u r n s   t h e   i n d e x   o f   t h e   f i r s t   o c c u r r e n c e   o f   _ e   w i t h i n   _ l ,   o r   - 1   i f   _ l   d o e s n ' t   c o n t a i n   _ e  l     ����         �     !  l     ��"#��  "   @param list _list   # �$$ $   @ p a r a m   l i s t   _ l i s t! %&% l     ��'(��  '   @param mixed _element   ( �)) ,   @ p a r a m   m i x e d   _ e l e m e n t& *+* l     ��,-��  ,   @return integer   - �..     @ r e t u r n   i n t e g e r+ /0/ l     ��������  ��  ��  0 121 i    343 I      ��5���� 0 indexof indexOf5 676 o      ���� 0 _l  7 8��8 o      ���� 0 _e  ��  ��  4 k     $99 :;: Y     !<��=>��< Z   ?@����? =    ABA n    CDC 4    ��E
�� 
cobjE o    ���� 0 i  D o    ���� 0 _l  B o    ���� 0 _e  @ L    FF o    ���� 0 i  ��  ��  �� 0 i  = m    ���� > n    GHG 1    ��
�� 
lengH o    ���� 0 _l  ��  ; I��I L   " $JJ m   " #��������  2 KLK l     ��������  ��  ��  L MNM l     ��OP��  O $  Sort a list using bubble sort   P �QQ <   S o r t   a   l i s t   u s i n g   b u b b l e   s o r tN RSR l     ��������  ��  ��  S TUT l     ��VW��  V   @param list theList   W �XX (   @ p a r a m   l i s t   t h e L i s tU YZY l     ��[\��  [   @return list   \ �]]    @ r e t u r n   l i s tZ ^_^ l     ��`a��  ` : 4 @link http://macscripter.net/viewtopic.php?id=24766   a �bb h   @ l i n k   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 2 4 7 6 6_ cdc l     ��������  ��  ��  d efe i    ghg I      ��i���� 0 
bubblesort 
bubbleSorti j��j o      ���� 0 thelist theList��  ��  h k     kk lml l     �no�  n > 8 defining an internal script makes for faster run times!   o �pp p   d e f i n i n g   a n   i n t e r n a l   s c r i p t   m a k e s   f o r   f a s t e r   r u n   t i m e s !m qrq h     �~s�~ 0 bs  s j     �}t�} 	0 alist  t o     �|�| 0 thelist theListr uvu r    wxw n    yzy 1    �{
�{ 
lengz n   {|{ o   	 �z�z 	0 alist  | o    	�y�y 0 bs  x o      �x�x 0 thecount theCountv }~} Z   ��w�v A    ��� o    �u�u 0 thecount theCount� m    �t�t � L    �� n   ��� o    �s�s 	0 alist  � o    �r�r 0 bs  �w  �v  ~ ��� Y     y��q���� Y   * t��p���o� Z   6 o���n�m� ?   6 E��� n   6 <��� 4   9 <�l�
�l 
cobj� o   : ;�k�k 0 indexb indexB� n  6 9��� o   7 9�j�j 	0 alist  � o   6 7�i�i 0 bs  � n   < D��� 4   ? D�h�
�h 
cobj� l  @ C��g�f� [   @ C��� o   @ A�e�e 0 indexb indexB� m   A B�d�d �g  �f  � n  < ?��� o   = ?�c�c 	0 alist  � o   < =�b�b 0 bs  � k   H k�� ��� r   H P��� n   H N��� 4   K N�a�
�a 
cobj� o   L M�`�` 0 indexb indexB� n  H K��� o   I K�_�_ 	0 alist  � o   H I�^�^ 0 bs  � o      �]�] 0 temp  � ��� r   Q `��� n   Q Y��� 4   T Y�\�
�\ 
cobj� l  U X��[�Z� [   U X��� o   U V�Y�Y 0 indexb indexB� m   V W�X�X �[  �Z  � n  Q T��� o   R T�W�W 	0 alist  � o   Q R�V�V 0 bs  � n      ��� 4   \ _�U�
�U 
cobj� o   ] ^�T�T 0 indexb indexB� n  Y \��� o   Z \�S�S 	0 alist  � o   Y Z�R�R 0 bs  � ��Q� r   a k��� o   a b�P�P 0 temp  � n      ��� 4   e j�O�
�O 
cobj� l  f i��N�M� [   f i��� o   f g�L�L 0 indexb indexB� m   g h�K�K �N  �M  � n  b e��� o   c e�J�J 	0 alist  � o   b c�I�I 0 bs  �Q  �n  �m  �p 0 indexb indexB� m   - .�H�H � \   . 1��� o   . /�G�G 0 indexa indexA� m   / 0�F�F �o  �q 0 indexa indexA� o   # $�E�E 0 thecount theCount� m   $ %�D�D � m   % &�C�C��� ��B� L   z �� n  z ~��� o   { }�A�A 	0 alist  � o   z {�@�@ 0 bs  �B  f ��� l     �?�>�=�?  �>  �=  � ��� l     �<���<  �   Sort a list   � ���    S o r t   a   l i s t� ��� l     �;�:�9�;  �:  �9  � ��� l     �8���8  �   @param list theList   � ��� (   @ p a r a m   l i s t   t h e L i s t� ��� l     �7���7  �   @return list   � ���    @ r e t u r n   l i s t� ��� l     �6���6  � : 4 @link http://macscripter.net/viewtopic.php?id=24766   � ��� h   @ l i n k   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 2 4 7 6 6� ��� l     �5�4�3�5  �4  �3  � ��� i    ��� I      �2��1�2 0 	quicksort 	quickSort� ��0� o      �/�/ 0 thelist theList�0  �1  � k     '�� ��� l     �.���.  � - 'public routine, called from your script   � ��� N p u b l i c   r o u t i n e ,   c a l l e d   f r o m   y o u r   s c r i p t� ��� h     �-��- 0 bs  � k      �� ��� j     �,��, 	0 alist  � o     �+�+ 0 thelist theList� ��� l     �*�)�(�*  �)  �(  � ��� i    
��� I      �'��&�' 0 qsort Qsort�    o      �%�% 0 	leftindex 	leftIndex �$ o      �#�# 0 
rightindex 
rightIndex�$  �&  � k     @  l     �"�"   + %private routine called by quickSort.     � J p r i v a t e   r o u t i n e   c a l l e d   b y   q u i c k S o r t .   	
	 l     �!�!   # do not call from your script!    � : d o   n o t   c a l l   f r o m   y o u r   s c r i p t !
  Z     >� � ?      o     �� 0 
rightindex 
rightIndex o    �� 0 	leftindex 	leftIndex k    :  r     [     l   �� _     l   	�� \    	  o    �� 0 
rightindex 
rightIndex  o    �� 0 	leftindex 	leftIndex�  �   m   	 
�� �  �   o    �� 0 	leftindex 	leftIndex o      �� 	0 pivot   !"! r    #$# I    �%�� 0 
qpartition 
Qpartition% &'& o    �� 0 	leftindex 	leftIndex' ()( o    �� 0 
rightindex 
rightIndex) *�* o    �� 	0 pivot  �  �  $ o      �� 0 newpivot newPivot" +,+ r    *-.- I    $�/�� 0 qsort Qsort/ 010 o    �
�
 0 	leftindex 	leftIndex1 2�	2 \     343 o    �� 0 newpivot newPivot4 m    �� �	  �  . o      �� 0 thelist theList, 5�5 r   + :676 I   + 4�8�� 0 qsort Qsort8 9:9 [   , /;<; o   , -�� 0 newpivot newPivot< m   - .�� : =� = o   / 0���� 0 
rightindex 
rightIndex�   �  7 o      ���� 0 thelist theList�  �   �   >��> l  ? ?��������  ��  ��  ��  � ?@? l     ��������  ��  ��  @ ABA i    CDC I      ��E���� 0 
qpartition 
QpartitionE FGF o      ���� 0 	leftindex 	leftIndexG HIH o      ���� 0 
rightindex 
rightIndexI J��J o      ���� 	0 pivot  ��  ��  D k     �KK LML l     ��NO��  N + %private routine called by quickSort.    O �PP J p r i v a t e   r o u t i n e   c a l l e d   b y   q u i c k S o r t .  M QRQ l     ��ST��  S # do not call from your script!   T �UU : d o   n o t   c a l l   f r o m   y o u r   s c r i p t !R VWV r     XYX n     
Z[Z 4    
��\
�� 
cobj\ o    	���� 	0 pivot  [ n    ]^] o    ���� 	0 alist  ^ o     ���� 0 bs  Y o      ���� 0 
pivotvalue 
pivotValueW _`_ r    aba n    cdc 4    ��e
�� 
cobje o    ���� 	0 pivot  d n   fgf o    ���� 	0 alist  g o    ���� 0 bs  b o      ���� 0 temp  ` hih r    /jkj n    $lml 4   ! $��n
�� 
cobjn o   " #���� 0 
rightindex 
rightIndexm n   !opo o    !���� 	0 alist  p o    ���� 0 bs  k n      qrq 4   + .��s
�� 
cobjs o   , -���� 	0 pivot  r n  $ +tut o   ) +���� 	0 alist  u o   $ )���� 0 bs  i vwv r   0 <xyx o   0 1���� 0 temp  y n      z{z 4   8 ;��|
�� 
cobj| o   9 :���� 0 
rightindex 
rightIndex{ n  1 8}~} o   6 8���� 	0 alist  ~ o   1 6���� 0 bs  w � r   = @��� o   = >���� 0 	leftindex 	leftIndex� o      ���� 0 	tempindex 	tempIndex� ��� Y   A ��������� Z   M �������� B   M Y��� n   M W��� 4   T W���
�� 
cobj� o   U V���� 0 pointer  � n  M T��� o   R T���� 	0 alist  � o   M R���� 0 bs  � o   W X���� 0 
pivotvalue 
pivotValue� k   \ ��� ��� r   \ h��� n   \ f��� 4   c f���
�� 
cobj� o   d e���� 0 pointer  � n  \ c��� o   a c���� 	0 alist  � o   \ a���� 0 bs  � o      ���� 0 temp  � ��� r   i ~��� n   i s��� 4   p s���
�� 
cobj� o   q r���� 0 	tempindex 	tempIndex� n  i p��� o   n p���� 	0 alist  � o   i n���� 0 bs  � n      ��� 4   z }���
�� 
cobj� o   { |���� 0 pointer  � n  s z��� o   x z���� 	0 alist  � o   s x���� 0 bs  � ��� r    ���� o    ����� 0 temp  � n      ��� 4   � ����
�� 
cobj� o   � ����� 0 	tempindex 	tempIndex� n  � ���� o   � ����� 	0 alist  � o   � ����� 0 bs  � ���� r   � ���� [   � ���� o   � ����� 0 	tempindex 	tempIndex� m   � ����� � o      ���� 0 	tempindex 	tempIndex��  ��  ��  �� 0 pointer  � o   D E���� 0 	leftindex 	leftIndex� l  E H������ \   E H��� o   E F���� 0 
rightindex 
rightIndex� m   F G���� ��  ��  ��  � ��� r   � ���� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 
rightindex 
rightIndex� n  � ���� o   � ����� 	0 alist  � o   � ����� 0 bs  � o      ���� 0 temp  � ��� r   � ���� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 	tempindex 	tempIndex� n  � ���� o   � ����� 	0 alist  � o   � ����� 0 bs  � n      ��� 4   � ����
�� 
cobj� o   � ����� 0 
rightindex 
rightIndex� n  � ���� o   � ����� 	0 alist  � o   � ����� 0 bs  � ��� r   � ���� o   � ����� 0 temp  � n      ��� 4   � ����
�� 
cobj� o   � ����� 0 	tempindex 	tempIndex� n  � ���� o   � ����� 	0 alist  � o   � ����� 0 bs  � ��� l  � ���������  ��  ��  � ���� L   � ��� o   � ����� 0 	tempindex 	tempIndex��  B ���� l     ��������  ��  ��  ��  � ��� l   ��������  ��  ��  � ��� Z   !������� ?    ��� n    ��� 1    ��
�� 
leng� n   ��� o   	 ���� 	0 alist  � o    	���� 0 bs  � m    ���� � n   ��� I    ������� 0 qsort Qsort� ��� m    ���� � ���� n    ��� 1    ��
�� 
leng� n   ��� o    ���� 	0 alist  � o    ���� 0 bs  ��  ��  � o    ���� 0 bs  ��  ��  � ���� L   " '�� n  " &��� o   # %���� 	0 alist  � o   " #���� 0 bs  ��  � ��� l     ��������  ��  ��  � ��� l     ����  � &   Return unique values of of list   � ��� @   R e t u r n   u n i q u e   v a l u e s   o f   o f   l i s t� 	 		  l     �~�}�|�~  �}  �|  	 			 l     �{		�{  	   @param list _l   	 �		    @ p a r a m   l i s t   _ l	 			 l     �z�y�x�z  �y  �x  	 			
		 i    			 I      �w	�v�w 
0 unique  	 	�u	 o      �t�t 0 _l  �u  �v  	 k     -		 			 r     			 J     �s�s  	 o      �r�r 0 _result  	 			 X    *	�q		 Z   %		�p�o	 H    		 E   			 o    �n�n 0 _result  	 o    �m�m 0 i  	 r    !			 b    		 	 o    �l�l 0 _result  	  o    �k�k 0 i  	 o      �j�j 0 _result  �p  �o  �q 0 i  	 o    	�i�i 0 _l  	 	!�h	! L   + -	"	" o   + ,�g�g 0 _result  �h  	
 	#�f	# l     �e�d�c�e  �d  �c  �f  � 	$	%	$ l     �b�a�`�b  �a  �`  	% 	&	'	& l     �_�^�]�_  �^  �]  	' 	(	)	( h   U `�\	*�\ 0 _sound _Sound	* k      	+	+ 	,	-	, l     �[�Z�Y�[  �Z  �Y  	- 	.	/	. l     �X	0	1�X  	0   lib -> _Sound   	1 �	2	2    l i b   - >   _ S o u n d	/ 	3	4	3 l     �W	5	6�W  	5   Play sounds   	6 �	7	7    P l a y   s o u n d s	4 	8	9	8 l     �V�U�T�V  �U  �T  	9 	:	;	: l     �S	<	=�S  	<   Play a sound   	= �	>	>    P l a y   a   s o u n d	; 	?	@	? l     �R�Q�P�R  �Q  �P  	@ 	A	B	A l     �O	C	D�O  	C  	 @example   	D �	E	E    @ e x a m p l e	B 	F	G	F l     �N	H	I�N  	H Y S property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"   	I �	J	J �   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t "	G 	K	L	K l     �M	M	N�M  	M K E playFile("/System/Library/Sounds/Basso.aiff", true) of _Sound of lib   	N �	O	O �   p l a y F i l e ( " / S y s t e m / L i b r a r y / S o u n d s / B a s s o . a i f f " ,   t r u e )   o f   _ S o u n d   o f   l i b	L 	P	Q	P l     �L�K�J�L  �K  �J  	Q 	R	S	R l     �I	T	U�I  	T 7 1 @param _path alias|string The sound file to play   	U �	V	V b   @ p a r a m   _ p a t h   a l i a s | s t r i n g   T h e   s o u n d   f i l e   t o   p l a y	S 	W	X	W l     �H	Y	Z�H  	Y @ : @param _background boolean Don't wait for sound to finish   	Z �	[	[ t   @ p a r a m   _ b a c k g r o u n d   b o o l e a n   D o n ' t   w a i t   f o r   s o u n d   t o   f i n i s h	X 	\	]	\ l     �G	^	_�G  	^   @return void   	_ �	`	`    @ r e t u r n   v o i d	] 	a	b	a l     �F�E�D�F  �E  �D  	b 	c	d	c i     	e	f	e I      �C	g�B�C 0 playfile playFile	g 	h	i	h o      �A�A 	0 _path  	i 	j�@	j o      �?�? 0 _background  �@  �B  	f k     "	k	k 	l	m	l Z    	n	o�>�=	n =    	p	q	p n     	r	s	r m    �<
�< 
pcls	s o     �;�; 	0 _path  	q m    �:
�: 
alis	o r    	t	u	t l   	v�9�8	v n    	w	x	w 1   	 �7
�7 
psxp	x o    	�6�6 	0 _path  �9  �8  	u o      �5�5 	0 _path  �>  �=  	m 	y	z	y r    	{	|	{ b    	}	~	} m    		 �	�	�  a f p l a y  	~ n    	�	�	� 1    �4
�4 
strq	� o    �3�3 	0 _path  	| o      �2�2 0 _script  	z 	��1	� L    "	�	� n   !	�	�	� I    !�0	��/�0 0 
bashscript 
bashScript	� 	�	�	� o    �.�. 0 _script  	� 	��-	� o    �,�, 0 _background  �-  �/  	�  f    �1  	d 	�	�	� l     �+�*�)�+  �*  �)  	� 	�	�	� l     �(	�	��(  	� %  Alias to playFile(_path, true)   	� �	�	� >   A l i a s   t o   p l a y F i l e ( _ p a t h ,   t r u e )	� 	�	�	� l     �'�&�%�'  �&  �%  	� 	�	�	� l     �$	�	��$  	�   @see playFile   	� �	�	�    @ s e e   p l a y F i l e	� 	�	�	� l     �#�"�!�#  �"  �!  	� 	�	�	� i    	�	�	� I      � 	���  0 play  	� 	��	� o      �� 	0 _path  �  �  	� L     	�	� n    	�	�	� I    �	��� 0 playfile playFile	� 	�	�	� o    �� 	0 _path  	� 	��	� m    �
� boovtrue�  �  	�  f     	� 	��	� l     ����  �  �  �  	) 	�	�	� l     ����  �  �  	� 	�	�	� l     ����  �  �  	� 	�	�	� h   a l�	�� 0 _text _Text	� k      	�	� 	�	�	� l     ���
�  �  �
  	� 	�	�	� l     �		�	��	  	�   lib -> _Text   	� �	�	�    l i b   - >   _ T e x t	� 	�	�	� l     �	�	��  	�   Text & string functions   	� �	�	� 0   T e x t   &   s t r i n g   f u n c t i o n s	� 	�	�	� l     ����  �  �  	� 	�	�	� l     �	�	��  	� 5 / Pad the left side of a string with a character   	� �	�	� ^   P a d   t h e   l e f t   s i d e   o f   a   s t r i n g   w i t h   a   c h a r a c t e r	� 	�	�	� l     ����  �  �  	� 	�	�	� l     � 	�	��   	� 4 . @param string _txt The string you want to pad   	� �	�	� \   @ p a r a m   s t r i n g   _ t x t   T h e   s t r i n g   y o u   w a n t   t o   p a d	� 	�	�	� l     ��	�	���  	� B < @param string _character The string you want to pad it with   	� �	�	� x   @ p a r a m   s t r i n g   _ c h a r a c t e r   T h e   s t r i n g   y o u   w a n t   t o   p a d   i t   w i t h	� 	�	�	� l     ��	�	���  	� H B @param integer _length The desired length of the resulting string   	� �	�	� �   @ p a r a m   i n t e g e r   _ l e n g t h   T h e   d e s i r e d   l e n g t h   o f   t h e   r e s u l t i n g   s t r i n g	� 	�	�	� l     ��	�	���  	�   @return string   	� �	�	�    @ r e t u r n   s t r i n g	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i     	�	�	� I      ��	����� 0 padleft padLeft	� 	�	�	� o      ���� 0 _txt  	� 	�	�	� o      ���� 0 
_character  	� 	���	� o      ���� 0 _length  ��  ��  	� k     (	�	� 	�	�	� r     	�	�	� l    	�����	� c     	�	�	� o     ���� 0 _txt  	� m    ��
�� 
TEXT��  ��  	� o      ���� 0 _txt  	� 	�	�	� r    	�	�	� l   		�����	� c    		�	�	� o    ���� 0 
_character  	� m    ��
�� 
TEXT��  ��  	� o      ���� 0 
_character  	� 	�	�	� r    	�	�	� l   	�����	� \    	�	�	� o    ���� 0 _length  	� l   	�����	� n    	�	�	� 1    ��
�� 
leng	� o    ���� 0 _txt  ��  ��  ��  ��  	� o      ���� 0 i  	� 	�
 	� U    %


 r     


 b    


 o    ���� 0 
_character  
 o    ���� 0 _txt  
 o      ���� 0 _txt  
 o    ���� 0 i  
  
��
 L   & (

 o   & '���� 0 _txt  ��  	� 
	


	 l     ��������  ��  ��  

 


 l     ��

��  
 6 0 Pad the right side of a string with a character   
 �

 `   P a d   t h e   r i g h t   s i d e   o f   a   s t r i n g   w i t h   a   c h a r a c t e r
 


 l     ��������  ��  ��  
 


 l     ��

��  
 4 . @param string _txt The string you want to pad   
 �

 \   @ p a r a m   s t r i n g   _ t x t   T h e   s t r i n g   y o u   w a n t   t o   p a d
 


 l     ��

��  
 B < @param string _character The string you want to pad it with   
 �

 x   @ p a r a m   s t r i n g   _ c h a r a c t e r   T h e   s t r i n g   y o u   w a n t   t o   p a d   i t   w i t h
 


 l     ��

��  
 H B @param integer _length The desired length of the resulting string   
 �
 
  �   @ p a r a m   i n t e g e r   _ l e n g t h   T h e   d e s i r e d   l e n g t h   o f   t h e   r e s u l t i n g   s t r i n g
 
!
"
! l     ��
#
$��  
#   @return string   
$ �
%
%    @ r e t u r n   s t r i n g
" 
&
'
& l     ��������  ��  ��  
' 
(
)
( i    
*
+
* I      ��
,���� 0 padright padRight
, 
-
.
- o      ���� 0 _txt  
. 
/
0
/ o      ���� 0 
_character  
0 
1��
1 o      ���� 0 _length  ��  ��  
+ k     (
2
2 
3
4
3 r     
5
6
5 l    
7����
7 c     
8
9
8 o     ���� 0 _txt  
9 m    ��
�� 
TEXT��  ��  
6 o      ���� 0 _txt  
4 
:
;
: r    
<
=
< l   	
>����
> c    	
?
@
? o    ���� 0 
_character  
@ m    ��
�� 
TEXT��  ��  
= o      ���� 0 
_character  
; 
A
B
A r    
C
D
C l   
E����
E \    
F
G
F o    ���� 0 _length  
G l   
H����
H n    
I
J
I 1    ��
�� 
leng
J o    ���� 0 _txt  ��  ��  ��  ��  
D o      ���� 0 i  
B 
K
L
K U    %
M
N
M r     
O
P
O b    
Q
R
Q o    ���� 0 _txt  
R o    ���� 0 
_character  
P o      ���� 0 _txt  
N o    ���� 0 i  
L 
S��
S L   & (
T
T o   & '���� 0 _txt  ��  
) 
U
V
U l     ��������  ��  ��  
V 
W
X
W l     ��
Y
Z��  
Y H B Replace all occurances of _search found within _txt with _replace   
Z �
[
[ �   R e p l a c e   a l l   o c c u r a n c e s   o f   _ s e a r c h   f o u n d   w i t h i n   _ t x t   w i t h   _ r e p l a c e
X 
\
]
\ l     ��������  ��  ��  
] 
^
_
^ l     ��
`
a��  
` &   @param string _txt Subject text   
a �
b
b @   @ p a r a m   s t r i n g   _ t x t   S u b j e c t   t e x t
_ 
c
d
c l     ��
e
f��  
e . ( @param string _search String to replace   
f �
g
g P   @ p a r a m   s t r i n g   _ s e a r c h   S t r i n g   t o   r e p l a c e
d 
h
i
h l     ��
j
k��  
j . ( @param string _replace Replacement text   
k �
l
l P   @ p a r a m   s t r i n g   _ r e p l a c e   R e p l a c e m e n t   t e x t
i 
m
n
m l     ��
o
p��  
o 5 / @return string String with the replaced values   
p �
q
q ^   @ r e t u r n   s t r i n g   S t r i n g   w i t h   t h e   r e p l a c e d   v a l u e s
n 
r
s
r l     ��������  ��  ��  
s 
t
u
t i    
v
w
v I      ��
x���� 0 replace  
x 
y
z
y o      ���� 0 _txt  
z 
{
|
{ o      ���� 0 _search  
| 
}��
} o      ���� 0 _replace  ��  ��  
w k     &
~
~ 

�
 r     
�
�
� n    
�
�
� 1    ��
�� 
txdl
� 1     ��
�� 
ascr
� o      ���� 0 _d  
� 
�
�
� r    
�
�
� o    ���� 0 _search  
� n     
�
�
� 1    
��
�� 
txdl
� 1    ��
�� 
ascr
� 
�
�
� r    
�
�
� n    
�
�
� 2    ��
�� 
citm
� o    ���� 0 _txt  
� o      ���� 0 _l  
� 
�
�
� r    
�
�
� o    ���� 0 _replace  
� n     
�
�
� 1    ��
�� 
txdl
� 1    ��
�� 
ascr
� 
�
�
� r    
�
�
� c    
�
�
� o    ���� 0 _l  
� m    ��
�� 
TEXT
� o      ���� 0 _txt  
� 
�
�
� r    #
�
�
� o    ���� 0 _d  
� n     
�
�
� 1     "��
�� 
txdl
� 1     ��
�� 
ascr
� 
���
� L   $ &
�
� o   $ %���� 0 _txt  ��  
u 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� !  Split a string into a list   
� �
�
� 6   S p l i t   a   s t r i n g   i n t o   a   l i s t
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� . ( @param string _txt The text to split up   
� �
�
� P   @ p a r a m   s t r i n g   _ t x t   T h e   t e x t   t o   s p l i t   u p
� 
�
�
� l     �
�
��  
� ? 9 @param string|list _delim Boundry to split the text with   
� �
�
� r   @ p a r a m   s t r i n g | l i s t   _ d e l i m   B o u n d r y   t o   s p l i t   t h e   t e x t   w i t h
� 
�
�
� l     �~
�
��~  
�   @return list   
� �
�
�    @ r e t u r n   l i s t
� 
�
�
� l     �}�|�{�}  �|  �{  
� 
�
�
� i    
�
�
� I      �z
��y�z 	0 split  
� 
�
�
� o      �x�x 0 _txt  
� 
��w
� o      �v�v 
0 _delim  �w  �y  
� k     
�
� 
�
�
� r     
�
�
� n    
�
�
� 1    �u
�u 
txdl
� 1     �t
�t 
ascr
� o      �s�s 0 _d  
� 
�
�
� r    
�
�
� o    �r�r 
0 _delim  
� n     
�
�
� 1    
�q
�q 
txdl
� 1    �p
�p 
ascr
� 
�
�
� r    
�
�
� n    
�
�
� 2    �o
�o 
citm
� o    �n�n 0 _txt  
� o      �m�m 0 _result  
� 
�
�
� r    
�
�
� o    �l�l 0 _d  
� n     
�
�
� 1    �k
�k 
txdl
� 1    �j
�j 
ascr
� 
��i
� L    
�
� o    �h�h 0 _result  �i  
� 
�
�
� l     �g�f�e�g  �f  �e  
� 
�
�
� l     �d
�
��d  
� T N Strip whitespace (or other characters) from the beginning and end of a string   
� �
�
� �   S t r i p   w h i t e s p a c e   ( o r   o t h e r   c h a r a c t e r s )   f r o m   t h e   b e g i n n i n g   a n d   e n d   o f   a   s t r i n g
� 
�
�
� l     �c�b�a�c  �b  �a  
� 
�
�
� l     �`
�
��`  
� * $ @param string _txt The text to trim   
� �
�
� H   @ p a r a m   s t r i n g   _ t x t   T h e   t e x t   t o   t r i m
� 
�
�
� l     �_
�
��_  
� 6 0 @param list _chars List of characters to remove   
� �
�
� `   @ p a r a m   l i s t   _ c h a r s   L i s t   o f   c h a r a c t e r s   t o   r e m o v e
� 
�
�
� l     �^
�
��^  
�   @return string   
� �
�
�    @ r e t u r n   s t r i n g
� 
�
�
� l     �]
�
��]  
� B < @link http://macscripter.net/viewtopic.php?pid=66143#p66143   
� �
�
� x   @ l i n k   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? p i d = 6 6 1 4 3 # p 6 6 1 4 3
� 
� 
� l     �\�[�Z�\  �[  �Z     i     I      �Y�X�Y 0 trim    o      �W�W 0 _txt   �V o      �U�U 
0 _chars  �V  �X   k     r		 

 L      n     I    �T�S�T 0 trimleft trimLeft  n    I    �R�Q�R 0 	trimright 	trimRight  o    �P�P 0 _txt   �O o    �N�N 
0 _chars  �O  �Q    f     �M o    	�L�L 
0 _chars  �M  �S    f       Z   1�K�J l   �I�H G     >    !  n    "#" m    �G
�G 
pcls# o    �F�F 
0 _chars  ! m    �E
�E 
list =   $%$ o    �D�D 
0 _chars  % J    �C�C  �I  �H   r     -&'& J     +(( )*) m     !++ �,,   * -.- 1   ! "�B
�B 
tab . /0/ 1   " #�A
�A 
lnfd0 121 o   # $�@
�@ 
ret 2 3�?3 I  $ )�>4�=
�> .sysontocTEXT       shor4 m   $ %�<�<  �=  �?  ' o      �;�; 
0 _chars  �K  �J   565 W   2 P787 r   > K9:9 n   > I;<; 7  ? I�:=>
�: 
ctxt= m   C E�9�9 > m   F H�8�8��< o   > ?�7�7 0 _txt  : o      �6�6 0 _txt  8 H   6 =?? E  6 <@A@ o   6 7�5�5 
0 _chars  A n   7 ;BCB 4  8 ;�4D
�4 
cha D m   9 :�3�3 C o   7 8�2�2 0 _txt  6 EFE W   Q oGHG r   ] jIJI n   ] hKLK 7  ^ h�1MN
�1 
ctxtM m   b d�0�0 N m   e g�/�/��L o   ] ^�.�. 0 _txt  J o      �-�- 0 _txt  H H   U \OO E  U [PQP o   U V�,�, 
0 _chars  Q n   V ZRSR 4  W Z�+T
�+ 
cha T m   X Y�*�*��S o   V W�)�) 0 _txt  F U�(U L   p rVV o   p q�'�' 0 _txt  �(   WXW l     �&�%�$�&  �%  �$  X YZY l     �#[\�#  [ 4 . Like `trim()`, but just the start of the text   \ �]] \   L i k e   ` t r i m ( ) ` ,   b u t   j u s t   t h e   s t a r t   o f   t h e   t e x tZ ^_^ l     �"�!� �"  �!  �   _ `a` l     �bc�  b   @see trim of _Text   c �dd &   @ s e e   t r i m   o f   _ T e x ta efe l     ����  �  �  f ghg i    iji I      �k�� 0 trimleft trimLeftk lml o      �� 0 _txt  m n�n o      �� 
0 _chars  �  �  j k     Doo pqp Z    "rs��r l    t��t G     uvu >    wxw n     yzy m    �
� 
pclsz o     �� 
0 _chars  x m    �
� 
listv =   {|{ o    	�� 
0 _chars  | J   	 ��  �  �  s r    }~} J     ��� m    �� ���   � ��� 1    �
� 
tab � ��� 1    �
� 
lnfd� ��� o    �
� 
ret � ��
� I   �	��
�	 .sysontocTEXT       shor� m    ��  �  �
  ~ o      �� 
0 _chars  �  �  q ��� W   # A��� r   / <��� n   / :��� 7  0 :���
� 
ctxt� m   4 6�� � m   7 9����� o   / 0�� 0 _txt  � o      �� 0 _txt  � H   ' .�� E  ' -��� o   ' (� �  
0 _chars  � n   ( ,��� 4  ) ,���
�� 
cha � m   * +���� � o   ( )���� 0 _txt  � ���� L   B D�� o   B C���� 0 _txt  ��  h ��� l     ��������  ��  ��  � ��� l     ������  � 2 , Like `trim()`, but just the end of the text   � ��� X   L i k e   ` t r i m ( ) ` ,   b u t   j u s t   t h e   e n d   o f   t h e   t e x t� ��� l     ��������  ��  ��  � ��� l     ������  �   @see trim of _Text   � ��� &   @ s e e   t r i m   o f   _ T e x t� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	trimright 	trimRight� ��� o      ���� 0 _txt  � ���� o      ���� 
0 _chars  ��  ��  � k     D�� ��� Z    "������� l    ������ G     ��� >    ��� n     ��� m    ��
�� 
pcls� o     ���� 
0 _chars  � m    ��
�� 
list� =   ��� o    	���� 
0 _chars  � J   	 ����  ��  ��  � r    ��� J    �� ��� m    �� ���   � ��� 1    ��
�� 
tab � ��� 1    ��
�� 
lnfd� ��� o    ��
�� 
ret � ���� I   �����
�� .sysontocTEXT       shor� m    ����  ��  ��  � o      ���� 
0 _chars  ��  ��  � ��� W   # A��� r   / <��� n   / :��� 7  0 :����
�� 
ctxt� m   4 6���� � m   7 9������� o   / 0���� 0 _txt  � o      ���� 0 _txt  � H   ' .�� E  ' -��� o   ' (���� 
0 _chars  � n   ( ,��� 4  ) ,���
�� 
cha � m   * +������� o   ( )���� 0 _txt  � ���� L   B D�� o   B C���� 0 _txt  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � &   Decode URL entities in a string   � ��� @   D e c o d e   U R L   e n t i t i e s   i n   a   s t r i n g� ��� l     ��������  ��  ��  � ��� l     ������  � 0 * @param string theText  The text to decode   � ��� T   @ p a r a m   s t r i n g   t h e T e x t     T h e   t e x t   t o   d e c o d e� ��� l     ������  � Y S @return string|boolean The decoded string or false on failure (string was invalid)   � ��� �   @ r e t u r n   s t r i n g | b o o l e a n   T h e   d e c o d e d   s t r i n g   o r   f a l s e   o n   f a i l u r e   ( s t r i n g   w a s   i n v a l i d )� ��� l     ������  � A ; @link http://harvey.nu/applescript_url_decode_routine.html   � ��� v   @ l i n k   h t t p : / / h a r v e y . n u / a p p l e s c r i p t _ u r l _ d e c o d e _ r o u t i n e . h t m l� � � l     ��������  ��  ��     i     I      ������ 0 	urldecode 	URLDecode �� o      ���� 0 thetext theText��  ��   k     � 	 r     

 m      �   o      ���� 0 sdst sDst	  r     m     �   0 1 2 3 4 5 6 7 8 9 A B C D E F o      ���� 0 shex sHex  r     m    	����  o      ���� 0 i    V    � k    �  r      n    !"! 4    ��#
�� 
cha # o    ���� 0 i  " o    ���� 0 thetext theText  o      ���� 0 c   $%$ Z    �&'()& =     *+* o    ���� 0 c  + m    ,, �--  +' r   # (./. b   # &010 o   # $���� 0 sdst sDst1 m   $ %22 �33   / o      ���� 0 sdst sDst( 454 =   + .676 o   + ,���� 0 c  7 m   , -88 �99  %5 :��: k   1 �;; <=< l  1 1��������  ��  ��  = >?> l  1 1��@A��  @ !  invalid : missing hex char   A �BB 6   i n v a l i d   :   m i s s i n g   h e x   c h a r? CDC Z  1 AEF����E ?   1 8GHG o   1 2���� 0 i  H l  2 7I����I \   2 7JKJ l  2 5L����L n   2 5MNM 1   3 5��
�� 
lengN o   2 3���� 0 thetext theText��  ��  K m   5 6���� ��  ��  F L   ; =OO m   ; <��
�� boovfals��  ��  D PQP l  B B��������  ��  ��  Q RSR r   B TTUT \   B RVWV l  B PX����X I  B P����Y
�� .sysooffslong    ��� null��  Y ��Z[
�� 
psofZ l  D J\����\ n   D J]^] 4   E J��_
�� 
cha _ l  F I`����` [   F Iaba o   F G���� 0 i  b m   G H���� ��  ��  ^ o   D E���� 0 thetext theText��  ��  [ ��c��
�� 
psinc o   K L���� 0 shex sHex��  ��  ��  W m   P Q���� U o      ���� 0 icval1 iCVal1S ded r   U gfgf \   U ehih l  U cj����j I  U c����k
�� .sysooffslong    ��� null��  k ��lm
�� 
psofl l  W ]n����n n   W ]opo 4   X ]��q
�� 
cha q l  Y \r����r [   Y \sts o   Y Z�� 0 i  t m   Z [�~�~ ��  ��  p o   W X�}�} 0 thetext theText��  ��  m �|u�{
�| 
psinu o   ^ _�z�z 0 shex sHex�{  ��  ��  i m   c d�y�y g o      �x�x 0 icval2 iCVal2e vwv l  h h�w�v�u�w  �v  �u  w xyx l  h h�tz{�t  z - ' invalid : not 2 hex chars after % sign   { �|| N   i n v a l i d   :   n o t   2   h e x   c h a r s   a f t e r   %   s i g ny }~} Z  h |��s�r G   h s��� =   h k��� o   h i�q�q 0 icval1 iCVal1� m   i j�p�p��� =   n q��� o   n o�o�o 0 icval2 iCVal2� m   o p�n�n��� L   v x�� m   v w�m
�m boovfals�s  �r  ~ ��� l  } }�l�k�j�l  �k  �j  � ��� r   } ���� b   } ���� o   } ~�i�i 0 sdst sDst� l  ~ ���h�g� I  ~ ��f��e
�f .sysontocTEXT       shor� l  ~ ���d�c� [   ~ ���� ]   ~ ���� o   ~ �b�b 0 icval1 iCVal1� m    ��a�a � o   � ��`�` 0 icval2 iCVal2�d  �c  �e  �h  �g  � o      �_�_ 0 sdst sDst� ��^� r   � ���� [   � ���� o   � ��]�] 0 i  � m   � ��\�\ � o      �[�[ 0 i  �^  ��  ) r   � ���� b   � ���� o   � ��Z�Z 0 sdst sDst� o   � ��Y�Y 0 c  � o      �X�X 0 sdst sDst% ��W� r   � ���� [   � ���� o   � ��V�V 0 i  � m   � ��U�U � o      �T�T 0 i  �W   B    ��� o    �S�S 0 i  � n    ��� 1    �R
�R 
leng� o    �Q�Q 0 thetext theText ��P� L   � ��� o   � ��O�O 0 sdst sDst�P   ��� l     �N�M�L�N  �M  �L  � ��� l     �K���K  � &   Encode URL entities in a string   � ��� @   E n c o d e   U R L   e n t i t i e s   i n   a   s t r i n g� ��� l     �J�I�H�J  �I  �H  � ��� l     �G���G  � 0 * @param string theText  The text to encode   � ��� T   @ p a r a m   s t r i n g   t h e T e x t     T h e   t e x t   t o   e n c o d e� ��� l     �F���F  � ( " @return string The encoded string   � ��� D   @ r e t u r n   s t r i n g   T h e   e n c o d e d   s t r i n g� ��� l     �E���E  � A ; @link http://harvey.nu/applescript_url_encode_routine.html   � ��� v   @ l i n k   h t t p : / / h a r v e y . n u / a p p l e s c r i p t _ u r l _ e n c o d e _ r o u t i n e . h t m l� ��� l     �D�C�B�D  �C  �B  � ��� i     #��� I      �A��@�A 0 	urlencode 	URLEncode� ��?� o      �>�> 0 thetext theText�?  �@  � k    �� ��� r     ��� m     �� ���  � o      �=�= 0 
thetextenc 
theTextEnc� ��� X    ��<�� k    ��� ��� r    ��� o    �;�; 0 eachchar eachChar� o      �:�: 0 usechar useChar� ��� r    !��� I   �9��8
�9 .sysoctonshor       TEXT� o    �7�7 0 eachchar eachChar�8  � o      �6�6 0 eachcharnum eachCharNum� ��� Z   " �����5� =   " %��� o   " #�4�4 0 eachcharnum eachCharNum� m   # $�3�3  � r   ( +��� m   ( )�� ���  +� o      �2�2 0 usechar useChar� ��� F   . ��� F   . k��� F   . Y��� F   . I��� F   . 9��� l  . 1��1�0� >   . 1��� o   . /�/�/ 0 eachcharnum eachCharNum� m   / 0�.�. *�1  �0  � l  4 7��-�,� >   4 7��� o   4 5�+�+ 0 eachcharnum eachCharNum� m   5 6�*�* _�-  �,  � l  < G��)�(� G   < G��� A   < ?   o   < =�'�' 0 eachcharnum eachCharNum m   = >�&�& -� ?   B E o   B C�%�% 0 eachcharnum eachCharNum m   C D�$�$ .�)  �(  � l  L W�#�" G   L W A   L O o   L M�!�! 0 eachcharnum eachCharNum m   M N� �  0 ?   R U	
	 o   R S�� 0 eachcharnum eachCharNum
 m   S T�� 9�#  �"  � l  \ i�� G   \ i A   \ _ o   \ ]�� 0 eachcharnum eachCharNum m   ] ^�� A ?   b g o   b c�� 0 eachcharnum eachCharNum m   c f�� Z�  �  � l  n }�� G   n } A   n s o   n o�� 0 eachcharnum eachCharNum m   o r�� a ?   v { o   v w�� 0 eachcharnum eachCharNum m   w z�� z�  �  � � k   � �  r   � � I  � �� 
� .sysorondlong        doub l  � �!��! ^   � �"#" o   � ��� 0 eachcharnum eachCharNum# m   � ��� �  �    �$�

� 
dire$ m   � ��	
�	 olierndD�
   o      �� 0 firstdig firstDig %&% r   � �'(' `   � �)*) o   � ��� 0 eachcharnum eachCharNum* m   � ��� ( o      �� 0 	seconddig 	secondDig& +,+ Z   � �-.��- ?   � �/0/ o   � ��� 0 firstdig firstDig0 m   � ��� 	. k   � �11 232 r   � �454 [   � �676 o   � �� �  0 firstdig firstDig7 m   � ����� 75 o      ���� 0 anum aNum3 8��8 r   � �9:9 I  � ���;��
�� .sysontocTEXT       shor; o   � ����� 0 anum aNum��  : o      ���� 0 firstdig firstDig��  �  �  , <=< Z   � �>?����> ?   � �@A@ o   � ����� 0 	seconddig 	secondDigA m   � ����� 	? k   � �BB CDC r   � �EFE [   � �GHG o   � ����� 0 	seconddig 	secondDigH m   � ����� 7F o      ���� 0 anum aNumD I��I r   � �JKJ I  � ���L��
�� .sysontocTEXT       shorL o   � ����� 0 anum aNum��  K o      ���� 0 	seconddig 	secondDig��  ��  ��  = MNM r   � �OPO c   � �QRQ l  � �S����S b   � �TUT b   � �VWV m   � �XX �YY  %W l  � �Z����Z c   � �[\[ o   � ����� 0 firstdig firstDig\ m   � ���
�� 
TEXT��  ��  U l  � �]����] c   � �^_^ o   � ����� 0 	seconddig 	secondDig_ m   � ���
�� 
TEXT��  ��  ��  ��  R m   � ���
�� 
TEXTP o      ���� 0 numhex numHexN `��` r   � �aba o   � ����� 0 numhex numHexb o      ���� 0 usechar useChar��  �  �5  � c��c r   � �ded c   � �fgf b   � �hih o   � ����� 0 
thetextenc 
theTextEnci o   � ����� 0 usechar useCharg m   � ���
�� 
TEXTe o      ���� 0 
thetextenc 
theTextEnc��  �< 0 eachchar eachChar� n    
jkj 2   
��
�� 
cha k o    ���� 0 thetext theText� l��l L  mm o  ���� 0 
thetextenc 
theTextEnc��  � n��n l     ��������  ��  ��  ��  	� opo l     ��������  ��  ��  p qrq l     ��������  ��  ��  r s��s h   m x��t�� 
0 _ui _UIt k      uu vwv l     ��������  ��  ��  w xyx l     ��z{��  z   lib -> _UI   { �||    l i b   - >   _ U Iy }~} l     �����     User interface functions   � ��� 2   U s e r   i n t e r f a c e   f u n c t i o n s~ ��� l     ��������  ��  ��  � ��� l     ������  �   Frontmost application   � ��� ,   F r o n t m o s t   a p p l i c a t i o n� ��� l     ��������  ��  ��  � ��� l     ������  �   @return application   � ��� (   @ r e t u r n   a p p l i c a t i o n� ��� l     ��������  ��  ��  � ��� i     ��� I      �������� ,0 frontmostapplication frontmostApplication��  ��  � L     
�� 4     	���
�� 
capp� l   ������ n   ��� I    �������� 40 frontmostapplicationpath frontmostApplicationPath��  ��  �  f    ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � !  Frontmost application path   � ��� 6   F r o n t m o s t   a p p l i c a t i o n   p a t h� ��� l     ��������  ��  ��  � ��� l     ������  �   @return string HFS path   � ��� 0   @ r e t u r n   s t r i n g   H F S   p a t h� ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 40 frontmostapplicationpath frontmostApplicationPath��  ��  � L     �� I    ����
�� .earsffdralis        afdr� m     ��
�� appfegfp� �����
�� 
rtyp� m    ��
�� 
utxt��  � ��� l     ��������  ��  ��  � ��� l     ������  � $  Frontmost application process   � ��� <   F r o n t m o s t   a p p l i c a t i o n   p r o c e s s� ��� l     ��������  ��  ��  � ��� l     ������  �   @return process   � ���     @ r e t u r n   p r o c e s s� ��� l     ��������  ��  ��  � ��� i    ��� I      �������� :0 frontmostapplicationprocess frontmostApplicationProcess��  ��  � O    ��� L    �� 6   ��� 4   ���
�� 
pcap� m    ���� � =  	 ��� 1   
 ��
�� 
pisf� m    ��
�� boovtrue� m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � K E Calls frontmostDirectoryOf() using the current frontmost application   � ��� �   C a l l s   f r o n t m o s t D i r e c t o r y O f ( )   u s i n g   t h e   c u r r e n t   f r o n t m o s t   a p p l i c a t i o n� ��� l     ��������  ��  ��  � ��� l     ������  � I C @return string|boolean POSIX path of directory or false on failure   � ��� �   @ r e t u r n   s t r i n g | b o o l e a n   P O S I X   p a t h   o f   d i r e c t o r y   o r   f a l s e   o n   f a i l u r e� ��� l     ��������  ��  ��  � ��� i    ��� I      ��~�}� (0 frontmostdirectory frontmostDirectory�~  �}  � L     �� n    
��� I    
�|��{�| ,0 frontmostdirectoryof frontmostDirectoryOf� ��z� n   ��� I    �y�x�w�y ,0 frontmostapplication frontmostApplication�x  �w  �  f    �z  �{  �  f     � ��� l     �v�u�t�v  �u  �t  � ��� l     �s���s  � p j Similar to frontmostFileOf(), but if the result is not a directory, it will return the path of the result   � ��� �   S i m i l a r   t o   f r o n t m o s t F i l e O f ( ) ,   b u t   i f   t h e   r e s u l t   i s   n o t   a   d i r e c t o r y ,   i t   w i l l   r e t u r n   t h e   p a t h   o f   t h e   r e s u l t� ��� l     �r�q�p�r  �q  �p  � ��� l     �o���o  � K E @param application|string _app Application or name of an application   � ��� �   @ p a r a m   a p p l i c a t i o n | s t r i n g   _ a p p   A p p l i c a t i o n   o r   n a m e   o f   a n   a p p l i c a t i o n� ��� l     �n���n  � I C @return string|boolean POSIX path of directory or false on failure   � ��� �   @ r e t u r n   s t r i n g | b o o l e a n   P O S I X   p a t h   o f   d i r e c t o r y   o r   f a l s e   o n   f a i l u r e� ��� l     �m�l�k�m  �l  �k  �    i     I      �j�i�j ,0 frontmostdirectoryof frontmostDirectoryOf �h o      �g�g 0 _app  �h  �i   k     7  r     	
	 I     �f�e�f "0 frontmostfileof frontmostFileOf �d o    �c�c 0 _app  �d  �e  
 o      �b�b 0 f    Z   	 4�a�` >  	  o   	 
�_�_ 0 f   m   
 �^
�^ boovfals Z    0�] n     1    �\
�\ 
asdr l   �[�Z I   �Y�X
�Y .sysonfo4asfe        file o    �W�W 0 f  �X  �[  �Z   L     o    �V�V 0 f  �]   L    0 c    / l   -�U�T c    -  l   +!�S�R! n    +"#" I   $ +�Q$�P�Q 0 dirname  $ %�O% n   $ '&'& 1   % '�N
�N 
psxp' o   $ %�M�M 0 f  �O  �P  # o    $�L�L 	0 _file  �S  �R    m   + ,�K
�K 
psxf�U  �T   m   - .�J
�J 
alis�a  �`   (�I( L   5 7)) m   5 6�H
�H boovfals�I   *+* l     �G�F�E�G  �F  �E  + ,-, l     �D./�D  . F @ Calls frontmostFileOf() using the current frontmost application   / �00 �   C a l l s   f r o n t m o s t F i l e O f ( )   u s i n g   t h e   c u r r e n t   f r o n t m o s t   a p p l i c a t i o n- 121 l     �C�B�A�C  �B  �A  2 343 l     �@56�@  5 $  @return alias|(missing value)   6 �77 <   @ r e t u r n   a l i a s | ( m i s s i n g   v a l u e )4 898 l     �?�>�=�?  �>  �=  9 :;: i    <=< I      �<�;�:�< 0 frontmostfile frontmostFile�;  �:  = L     >> n    
?@? I    
�9A�8�9 "0 frontmostfileof frontmostFileOfA B�7B n   CDC I    �6�5�4�6 ,0 frontmostapplication frontmostApplication�5  �4  D  f    �7  �8  @  f     ; EFE l     �3�2�1�3  �2  �1  F GHG l     �0IJ�0  I Y S Current document of the frontmost window (assuming there is one) of an application   J �KK �   C u r r e n t   d o c u m e n t   o f   t h e   f r o n t m o s t   w i n d o w   ( a s s u m i n g   t h e r e   i s   o n e )   o f   a n   a p p l i c a t i o nH LML l     �/�.�-�/  �.  �-  M NON l     �,PQ�,  P   @deprecated   Q �RR    @ d e p r e c a t e dO STS l     �+UV�+  U 2 , @see _Application -> frontmostFileOfProcess   V �WW X   @ s e e   _ A p p l i c a t i o n   - >   f r o n t m o s t F i l e O f P r o c e s sT XYX l     �*Z[�*  Z K E @param application|string _app Application or name of an application   [ �\\ �   @ p a r a m   a p p l i c a t i o n | s t r i n g   _ a p p   A p p l i c a t i o n   o r   n a m e   o f   a n   a p p l i c a t i o nY ]^] l     �)_`�)  _ u o @return alias|(missing value) Alias of the file or missing value if the frontmost file couldn't be determined.   ` �aa �   @ r e t u r n   a l i a s | ( m i s s i n g   v a l u e )   A l i a s   o f   t h e   f i l e   o r   m i s s i n g   v a l u e   i f   t h e   f r o n t m o s t   f i l e   c o u l d n ' t   b e   d e t e r m i n e d .^ bcb l     �(�'�&�(  �'  �&  c ded i    fgf I      �%h�$�% "0 frontmostfileof frontmostFileOfh i�#i o      �"�" 0 _app  �#  �$  g k     jj klk h     �!m�! 0 ff  m k      nn opo l     � qr�   q S M This method for finding frontmostFileOf() attempts to include an application   r �ss �   T h i s   m e t h o d   f o r   f i n d i n g   f r o n t m o s t F i l e O f ( )   a t t e m p t s   t o   i n c l u d e   a n   a p p l i c a t i o np tut l     �vw�  v R L library for _app, and run the resulting library's `frontmostFile()` handler   w �xx �   l i b r a r y   f o r   _ a p p ,   a n d   r u n   t h e   r e s u l t i n g   l i b r a r y ' s   ` f r o n t m o s t F i l e ( ) `   h a n d l e ru yzy i     {|{ I      �}�� 0 ff1  } ~�~ o      �� 0 _app  �  �  | k     F ��� Q     0���� r    ��� n   ��� I    ���� 0 include  � ��� b    	��� m    �� ���  A p p l i c a t i o n /� l   ���� n    ��� 1    �
� 
pnam� o    �� 0 _app  �  �  �  �  �  f    � o      �� 0 _applib  � R      ���
� .ascrerr ****      � ****�  �  � Q    0���� r    &��� n   $��� I    $���� 0 include  � ��� b     ��� m    �� ���  A p p l i c a t i o n /� l   ���� n    ��� 1    �

�
 
ID  � o    �	�	 0 _app  �  �  �  �  �  f    � o      �� 0 _applib  � R      ���
� .ascrerr ****      � ****�  �  � L   . 0�� m   . /�
� boovfals� ��� Q   1 C���� L   4 :�� n   4 9��� I   5 9��� � 0 frontmostfile frontmostFile�  �   � o   4 5���� 0 _applib  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ���� L   D F�� m   D E��
�� boovfals��  z ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 ff2  � ���� o      ���� 0 _app  ��  ��  � k     �� ��� Q     ����� O   ��� L    �� c    ��� l   ������ c    ��� l   ������ n    ��� 1    ��
�� 
ppth� 4   ���
�� 
docu� m   	 
���� ��  ��  � m    ��
�� 
psxf��  ��  � m    ��
�� 
alis� o    ���� 0 _app  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� L    �� m    ��
�� boovfals��  � ��� l     ��������  ��  ��  � ���� i    ��� I      ������� 0 ff3  � ���� o      ���� 0 _app  ��  ��  � k     i�� ��� O     f��� X    e����� k    `�� ��� r    #��� n    !��� 1    !��
�� 
pALL� n    ��� 2    ��
�� 
attr� o    ���� 0 w  � o      ���� 0 attribs  � ���� X   $ `����� Z  4 [������� F   4 C��� =  4 9��� l  4 7������ n   4 7��� 1   5 7��
�� 
pnam� o   4 5���� 0 i  ��  ��  � m   7 8�� ���  A X D o c u m e n t� >  < A��� l  < ?������ n   < ?��� 1   = ?��
�� 
valL� o   < =���� 0 i  ��  ��  � m   ? @��
�� 
msng� L   F W�� c   F V��� l  F R������ c   F R��� l  F P������ n   F P��� I   I P������� 0 	urldecode 	URLDecode� ���� n   I L��� 1   J L��
�� 
valL� o   I J���� 0 i  ��  ��  � n  F I��� o   G I���� 0 _text _Text�  f   F G��  ��  � m   P Q��
�� 
psxf��  ��  � m   R U��
�� 
alis��  ��  �� 0 i  � o   ' (���� 0 attribs  ��  �� 0 w  � n       2    ��
�� 
cwin 4    ��
�� 
pcap l  	 ���� n   	  1   
 ��
�� 
pnam o   	 
���� 0 _app  ��  ��  � m     �                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � �� L   g i m   g h��
�� boovfals��  ��  l 	
	 l   ��������  ��  ��  
  Q    &�� Z   ���� =    n     m    ��
�� 
pcls o    ���� 0 _app   m    ��
�� 
TEXT r     4    ��
�� 
capp o    ���� 0 _app   o      ���� 0 _app  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��    Z  ' 5���� >  ' , n   ' * 1   ( *��
�� 
prun o   ' (���� 0 _app   m   * +��
�� boovtrue L   / 1   m   / 0��
�� boovfals��  ��   !"! r   6 9#$# m   6 7��
�� 
msng$ o      ���� 0 _res  " %&% l  : :��������  ��  ��  & '(' l  : :��)*��  ) G A Run through the various detection methods until we score a match   * �++ �   R u n   t h r o u g h   t h e   v a r i o u s   d e t e c t i o n   m e t h o d s   u n t i l   w e   s c o r e   a   m a t c h( ,-, r   : B./. n   : @010 I   ; @��2���� 0 ff1  2 3��3 o   ; <���� 0 _app  ��  ��  1 o   : ;���� 0 ff  / o      ���� 0 _res  - 454 Z  C _67����6 F   C P898 =  C H:;: n   C F<=< m   D F��
�� 
pcls= o   C D���� 0 _res  ; m   F G��
�� 
bool9 =  K N>?> o   K L���� 0 _res  ? m   L M��
�� boovfals7 r   S [@A@ n   S YBCB I   T Y��D���� 0 ff2  D E��E o   T U���� 0 _app  ��  ��  C o   S T���� 0 ff  A o      ���� 0 _res  ��  ��  5 FGF Z  ` |HI����H F   ` mJKJ =  ` eLML n   ` cNON m   a c��
�� 
pclsO o   ` a���� 0 _res  M m   c d��
�� 
boolK =  h kPQP o   h i���� 0 _res  Q m   i j�
� boovfalsI r   p xRSR n   p vTUT I   q v�~V�}�~ 0 ff3  V W�|W o   q r�{�{ 0 _app  �|  �}  U o   p q�z�z 0 ff  S o      �y�y 0 _res  ��  ��  G X�xX L   } YY o   } ~�w�w 0 _res  �x  e Z[Z l     �v�u�t�v  �u  �t  [ \]\ l     �s^_�s  ^ K E Execute the specified menu item.  In this case, assuming the Finder    _ �`` �   E x e c u t e   t h e   s p e c i f i e d   m e n u   i t e m .     I n   t h i s   c a s e ,   a s s u m i n g   t h e   F i n d e r  ] aba l     �rcd�r  c I C is the active application, arranging the frontmost folder by date.   d �ee �   i s   t h e   a c t i v e   a p p l i c a t i o n ,   a r r a n g i n g   t h e   f r o n t m o s t   f o l d e r   b y   d a t e .b fgf l     �q�p�o�q  �p  �o  g hih l     �njk�n  j W Q @param list mList A list in the form og {"Finder", "View", "Arrange By", "Date"}   k �ll �   @ p a r a m   l i s t   m L i s t   A   l i s t   i n   t h e   f o r m   o g   { " F i n d e r " ,   " V i e w " ,   " A r r a n g e   B y " ,   " D a t e " }i mnm l     �mop�m  o   @return void   p �qq    @ r e t u r n   v o i dn rsr l     �ltu�l  t ( " @author Jacob Rus, September 2006   u �vv D   @ a u t h o r   J a c o b   R u s ,   S e p t e m b e r   2 0 0 6s wxw l     �kyz�k  y J D @link http://hints.macworld.com/article.php?story=20060921045743404   z �{{ �   @ l i n k   h t t p : / / h i n t s . m a c w o r l d . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 6 0 9 2 1 0 4 5 7 4 3 4 0 4x |}| l     �j�i�h�j  �i  �h  } ~~ i    ��� I      �g��f�g 0 	menuclick 	menuClick� ��e� o      �d�d 0 
_menu_list  �e  �f  � k     X�� ��� h     �c��c 0 	menuclick 	menuClick� i     ��� I      �b��a�b 0 recurse  � ��� o      �`�` 0 
_menu_list  � ��_� o      �^�^ 0 _parent  �_  �a  � k     8�� ��� q      �� �]�\�] 	0 _item  �\  � ��� r     ��� n     ��� 4    �[�
�[ 
cobj� m    �Z�Z � o     �Y�Y 0 
_menu_list  � o      �X�X 	0 _item  � ��W� O    8��� Z    7���V�� ?    ��� n   ��� 1    �U
�U 
leng� o    �T�T 0 
_menu_list  � m    �S�S � n   ,��� I    ,�R��Q�R 0 recurse  � ��� n    !��� 7  !�P��
�P 
cobj� m    �O�O � l    ��N�M� n    ��� 1     �L
�L 
leng� o    �K�K 0 
_menu_list  �N  �M  � o    �J�J 0 
_menu_list  � ��I� l  ! (��H�G� n  ! (��� l  % (��F�E� 4   % (�D�
�D 
menE� o   & '�C�C 	0 _item  �F  �E  � n  ! %��� l  " %��B�A� 4   " %�@�
�@ 
menI� o   # $�?�? 	0 _item  �B  �A  � o   ! "�>�> 0 _parent  �H  �G  �I  �Q  �  f    �V  � I  / 7�=��<
�= .prcsclicuiel    ��� uiel� n  / 3��� 4   0 3�;�
�; 
menI� o   1 2�:�: 	0 _item  � o   / 0�9�9 0 _parent  �<  � m    ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �W  � ��� l   �8�7�6�8  �7  �6  � ��� Z   ���5�4� A    ��� n   ��� 1   	 �3
�3 
leng� o    	�2�2 0 
_menu_list  � m    �1�1 � R    �0��/
�0 .ascrerr ****      � ****� m    �� ��� 8 m e n u   l i s t   i s   n o t   l o n g   e n o u g h�/  �5  �4  � ��� l   �.�-�,�.  �-  �,  � ��� q    �� �+��+ 0 _app  � �*�)�* 0 _top  �)  � ��� r    3��� l   $��(�'� n    $��� 7  $�&��
�& 
cobj� m     �%�% � m   ! #�$�$ � o    �#�# 0 
_menu_list  �(  �'  � J      �� ��� o      �"�" 0 _app  � ��!� o      � �  0 _top  �!  � ��� l  4 4����  �  �  � ��� O  4 X��� n   8 W��� l 	 9 W���� I   9 W���� 0 recurse  � ��� l  9 F���� n   9 F��� 7 : F���
� 
cobj� m   > @�� � l  A E���� n  A E��� 1   C E�
� 
leng� o   A C�� 0 
_menu_list  �  �  � o   9 :�� 0 
_menu_list  �  �  � ��� n  F S��� l 
 P S���� l  P S���
� 4   P S�	�
�	 
menE� o   Q R�� 0 _top  �  �
  �  �  � n  F P��� l  M P���� 4   M P��
� 
mbri� o   N O�� 0 _top  �  �  � n  F M��� l  J M���� 4   J M��
� 
mbar� m   K L� �  �  �  � l 	 F J������ l  F J ����  4   F J��
�� 
prcs o   H I���� 0 _app  ��  ��  ��  ��  �  �  �  �  � o   8 9���� 0 	menuclick 	menuClick� m   4 5�                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �    l     ��������  ��  ��    l     ��������  ��  ��    l     ��	
��  	   Resize a window   
 �     R e s i z e   a   w i n d o w  l     ��������  ��  ��    l     ����   . ( @return rectangle New bounds of _window    � P   @ r e t u r n   r e c t a n g l e   N e w   b o u n d s   o f   _ w i n d o w  l     ��������  ��  ��    i     # I      ������ 0 resizewindow resizeWindow  o      ���� 0 _window    o      ���� 
0 _width   �� o      ���� 0 _height  ��  ��   k     `  !  r     "#" n    $%$ I    ��&���� 0 elementbounds elementBounds& '��' o    ���� 0 _window  ��  ��  %  f     # o      ���� 0 _w  ! ()( r   	 *+* J   	 ,, -.- n   	 /0/ o   
 ���� 0 x1  0 o   	 
���� 0 _w  . 121 n    343 o    ���� 0 y1  4 o    ���� 0 _w  2 565 n    787 o    ���� 0 x2  8 o    ���� 0 _w  6 9��9 n    :;: o    ���� 0 y2  ; o    ���� 0 _w  ��  + o      ���� 0 _new  ) <=< Z   8>?����> F    '@A@ >   BCB o    ���� 
0 _width  C m    ��
�� 
msngA ?     %DED c     #FGF o     !���� 
0 _width  G m   ! "��
�� 
longE m   # $����  ? r   * 4HIH [   * /JKJ l  * -L����L n   * -MNM o   + -���� 0 x1  N o   * +���� 0 _w  ��  ��  K o   - .���� 
0 _width  I n      OPO 4   0 3��Q
�� 
cobjQ m   1 2���� P o   / 0���� 0 _new  ��  ��  = RSR Z  9 WTU����T F   9 FVWV >  9 <XYX o   9 :���� 0 _height  Y m   : ;��
�� 
msngW ?   ? DZ[Z c   ? B\]\ o   ? @���� 0 _height  ] m   @ A��
�� 
long[ m   B C����  U r   I S^_^ [   I N`a` l  I Lb����b n   I Lcdc o   J L���� 0 y1  d o   I J���� 0 _w  ��  ��  a o   L M���� 0 _height  _ n      efe 4   O R��g
�� 
cobjg m   P Q���� f o   N O���� 0 _new  ��  ��  S hih r   X ]jkj o   X Y���� 0 _new  k n      lml 1   Z \��
�� 
pbndm o   Y Z���� 0 _window  i n��n L   ^ `oo o   ^ _���� 0 _new  ��   pqp l     ��������  ��  ��  q rsr l     ��tu��  t 9 3 Resize a window anchoring the center of the window   u �vv f   R e s i z e   a   w i n d o w   a n c h o r i n g   t h e   c e n t e r   o f   t h e   w i n d o ws wxw l     ��������  ��  ��  x yzy l     ��{|��  { . ( @return rectangle New bounds of _window   | �}} P   @ r e t u r n   r e c t a n g l e   N e w   b o u n d s   o f   _ w i n d o wz ~~ l     ��������  ��  ��   ��� i   $ '��� I      ������� (0 resizewindowcenter resizeWindowCenter� ��� o      ���� 0 _window  � ��� o      ���� 
0 _width  � ���� o      ���� 0 _height  ��  ��  � k     ��� ��� r     ��� n    ��� I    ������� 0 elementbounds elementBounds� ���� o    ���� 0 _window  ��  ��  �  f     � o      ���� 0 _w  � ��� r   	 ��� J   	 �� ��� n   	 ��� o   
 ���� 0 x1  � o   	 
���� 0 _w  � ��� n    ��� o    ���� 0 y1  � o    ���� 0 _w  � ��� n    ��� o    ���� 0 x2  � o    ���� 0 _w  � ���� n    ��� o    ���� 0 y2  � o    ���� 0 _w  ��  � o      ���� 0 _new  � ��� l   ��������  ��  ��  � ��� Z    I������� ?    ��� c    ��� o    ���� 
0 _width  � m    ��
�� 
long� m    ����  � k   " E�� ��� r   " /��� I  " -�����
�� .sysorondlong        doub� l  " )������ ^   " )��� l  " '������ \   " '��� o   " #���� 
0 _width  � l  # &������ n   # &��� o   $ &���� 	0 width  � o   # $���� 0 _w  ��  ��  ��  ��  � m   ' (�� ��  ��  ��  � o      �~�~ 0 d  � ��� r   0 :��� \   0 5��� l  0 3��}�|� n   0 3��� o   1 3�{�{ 0 x1  � o   0 1�z�z 0 _w  �}  �|  � o   3 4�y�y 0 d  � n      ��� 4   6 9�x�
�x 
cobj� m   7 8�w�w � o   5 6�v�v 0 _new  � ��u� r   ; E��� [   ; @��� l  ; >��t�s� n   ; >��� o   < >�r�r 0 x2  � o   ; <�q�q 0 _w  �t  �s  � o   > ?�p�p 0 d  � n      ��� 4   A D�o�
�o 
cobj� m   B C�n�n � o   @ A�m�m 0 _new  �u  ��  ��  � ��� l  J J�l�k�j�l  �k  �j  � ��� Z   J y���i�h� ?   J O��� c   J M��� o   J K�g�g 0 _height  � m   K L�f
�f 
long� m   M N�e�e  � k   R u�� ��� r   R _��� I  R ]�d��c
�d .sysorondlong        doub� l  R Y��b�a� ^   R Y��� l  R W��`�_� \   R W��� o   R S�^�^ 0 _height  � l  S V��]�\� n   S V��� o   T V�[�[ 
0 height  � o   S T�Z�Z 0 _w  �]  �\  �`  �_  � m   W X�Y�Y �b  �a  �c  � o      �X�X 0 d  � ��� r   ` j��� \   ` e��� l  ` c��W�V� n   ` c��� o   a c�U�U 0 y1  � o   ` a�T�T 0 _w  �W  �V  � o   c d�S�S 0 d  � n      ��� 4   f i�R�
�R 
cobj� m   g h�Q�Q � o   e f�P�P 0 _new  � ��O� r   k u��� [   k p� � l  k n�N�M n   k n o   l n�L�L 0 y2   o   k l�K�K 0 _w  �N  �M    o   n o�J�J 0 d  � n       4   q t�I
�I 
cobj m   r s�H�H  o   p q�G�G 0 _new  �O  �i  �h  �  l  z z�F�E�D�F  �E  �D   	
	 r   z  o   z {�C�C 0 _new   n       1   | ~�B
�B 
pbnd o   { |�A�A 0 _window  
 �@ L   � � o   � ��?�? 0 _new  �@  �  l     �>�=�<�>  �=  �<    l     �;�;   I C Get a nice record with the dimensions and position of a UI element    � �   G e t   a   n i c e   r e c o r d   w i t h   t h e   d i m e n s i o n s   a n d   p o s i t i o n   o f   a   U I   e l e m e n t  l     �:�9�8�:  �9  �8    l     �7�7   !  @param UI element _element    � 6   @ p a r a m   U I   e l e m e n t   _ e l e m e n t   l     �6!"�6  ! p j @return record {x1 : integer, y1: integer, x2 : integer, y2 : integer, width : integer, height : integer}   " �## �   @ r e t u r n   r e c o r d   { x 1   :   i n t e g e r ,   y 1 :   i n t e g e r ,   x 2   :   i n t e g e r ,   y 2   :   i n t e g e r ,   w i d t h   :   i n t e g e r ,   h e i g h t   :   i n t e g e r }  $%$ l     �5�4�3�5  �4  �3  % &'& i   ( +()( I      �2*�1�2 0 elementbounds elementBounds* +�0+ o      �/�/ 0 _element  �0  �1  ) k     �,, -.- Q     m/01/ k    !22 343 e    55 c    676 n    898 1    �.
�. 
pbnd9 o    �-�- 0 _element  7 m    �,
�, 
list4 :�+: r   	 !;<; K   	 == �*>?�* 0 x1  > n   
 @A@ 4    �)B
�) 
cobjB m    �(�( A 1   
 �'
�' 
rslt? �&CD�& 0 y1  C n    EFE 4    �%G
�% 
cobjG m    �$�$ F 1    �#
�# 
rsltD �"HI�" 0 x2  H n    JKJ 4    �!L
�! 
cobjL m    � �  K 1    �
� 
rsltI �M�� 0 y2  M n    NON 4    �P
� 
cobjP m    �� O 1    �
� 
rslt�  < o      �� 0 _b  �+  0 R      ���
� .ascrerr ****      � ****�  �  1 Q   ) mQRSQ O   , cTUT k   0 bVV WXW r   0 7YZY c   0 5[\[ n   0 3]^] 1   1 3�
� 
posn^ o   0 1�� 0 _element  \ m   3 4�
� 
listZ o      �� 0 p  X _`_ r   8 ?aba c   8 =cdc n   8 ;efe 1   9 ;�
� 
ptszf o   8 9�� 0 _element  d m   ; <�
� 
listb o      �� 0 s  ` g�g r   @ bhih K   @ `jj �kl� 0 x1  k n   A Emnm 4   B E�o
� 
cobjo m   C D�
�
 n o   A B�	�	 0 p  l �pq� 0 y1  p n   F Jrsr 4   G J�t
� 
cobjt m   H I�� s o   F G�� 0 p  q �uv� 0 x2  u [   K Twxw l  K Oy��y n   K Oz{z 4   L O�|
� 
cobj| m   M N� �  { o   K L���� 0 p  �  �  x l  O S}����} n   O S~~ 4   P S���
�� 
cobj� m   Q R����  o   O P���� 0 s  ��  ��  v ������� 0 y2  � [   U ^��� l  U Y������ n   U Y��� 4   V Y���
�� 
cobj� m   W X���� � o   U V���� 0 p  ��  ��  � l  Y ]������ n   Y ]��� 4   Z ]���
�� 
cobj� m   [ \���� � o   Y Z���� 0 s  ��  ��  ��  i o      ���� 0 _b  �  U m   , -���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  R R      ����
�� .ascrerr ****      � ****� o      ���� 0 error_message  � �����
�� 
errn� o      ���� 0 error_number  ��  S k   k m�� ��� l  k k������  � 2 ,my displayError(error_message, error_number)   � ��� X m y   d i s p l a y E r r o r ( e r r o r _ m e s s a g e ,   e r r o r _ n u m b e r )� ���� L   k m�� m   k l��
�� boovfals��  . ���� L   n ��� b   n ���� o   n o���� 0 _b  � K   o ��� ������ 	0 width  � \   r y��� l  r u������ n   r u��� o   s u���� 0 x2  � o   r s���� 0 _b  ��  ��  � l  u x������ n   u x��� o   v x���� 0 x1  � o   u v���� 0 _b  ��  ��  � ������� 
0 height  � \   | ���� l  | ������ n   | ��� o   } ���� 0 y2  � o   | }���� 0 _b  ��  ��  � l   ������� n    ���� o   � ����� 0 y1  � o    ����� 0 _b  ��  ��  ��  ��  ' ��� l     ��������  ��  ��  � ��� l     ������  � g a Returns screenBounds(), while trying to account for the dock (size and orientation) and menu bar   � ��� �   R e t u r n s   s c r e e n B o u n d s ( ) ,   w h i l e   t r y i n g   t o   a c c o u n t   f o r   t h e   d o c k   ( s i z e   a n d   o r i e n t a t i o n )   a n d   m e n u   b a r� ��� l     ��������  ��  ��  � ��� l     ������  �   @return record   � ���    @ r e t u r n   r e c o r d� ��� l     ������  �   @see elementBounds   � ��� &   @ s e e   e l e m e n t B o u n d s� ��� l     ��������  ��  ��  � ��� i   , /��� I      �������� 0 desktopbounds desktopBounds��  ��  � k     ��� ��� l     ������  �   the full screen bounds   � ��� .   t h e   f u l l   s c r e e n   b o u n d s� ��� r     ��� n    ��� I    �������� 0 screenbounds screenBounds��  ��  �  f     � o      ���� 0 _s  � ��� l   ��������  ��  ��  � ��� l   ������  �   bounds of the menubar   � ��� ,   b o u n d s   o f   t h e   m e n u b a r� ��� O   #��� O   "��� e    !�� 6   !��� 4   ���
�� 
uiel� m    ���� � =   ��� 1    ��
�� 
pcls� m    ��
�� 
mbar� 4    ���
�� 
pcap� m    �� ���  S y s t e m   E v e n t s� m    	���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� r   $ ,��� n  $ *��� I   % *������� 0 elementbounds elementBounds� ���� 1   % &��
�� 
rslt��  ��  �  f   $ %� o      ���� 0 _m  � ��� l  - -��������  ��  ��  � ��� l  - -������  � 2 , modify _s to account for the menubar height   � ��� X   m o d i f y   _ s   t o   a c c o u n t   f o r   t h e   m e n u b a r   h e i g h t� ��� r   - E��� K   - C�� �� �� 0 x1    n   . 1 o   / 1���� 0 x1   o   . /���� 0 _s   ���� 0 y1   [   2 9 l  2 5���� n   2 5	
	 o   3 5���� 0 y1  
 o   2 3���� 0 _s  ��  ��   l  5 8���� n   5 8 o   6 8���� 
0 height   o   5 6���� 0 _m  ��  ��   ���� 0 x2   n   : = o   ; =���� 0 x2   o   : ;���� 0 _s   ������ 0 y2   n   > A o   ? A���� 0 y2   o   > ?���� 0 _s  ��  � o      ���� 0 _b  �  l  F F��������  ��  ��    O  F U e   J T n   J T 1   O S��
�� 
dahd 1   J O��
�� 
dpas m   F G�                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��     Z   V �!"���! >  V Y#$# 1   V W�
� 
rslt$ m   W X�
� boovtrue" k   \ �%% &'& r   \ c()( n  \ a*+* I   ] a���� 0 
dockbounds 
dockBounds�  �  +  f   \ ]) o      �� 0 _d  ' ,-, r   d k./. n  d i010 I   e i���� 0 dockposition dockPosition�  �  1  f   d e/ o      �� 0 _o  - 2�2 Z   l �345�3 =  l q676 o   l m�� 0 _o  7 m   m p88 �99  b o t t o m4 r   t :;: l  t {<��< \   t {=>= l  t w?��~? n   t w@A@ o   u w�}�} 0 y2  A o   t u�|�| 0 _s  �  �~  > l  w zB�{�zB n   w zCDC o   x z�y�y 
0 height  D o   w x�x�x 0 _d  �{  �z  �  �  ; n      EFE o   | ~�w�w 0 y2  F o   { |�v�v 0 _b  5 GHG =  � �IJI o   � ��u�u 0 _o  J m   � �KK �LL  l e f tH MNM r   � �OPO l  � �Q�t�sQ [   � �RSR l  � �T�r�qT n   � �UVU o   � ��p�p 0 x1  V o   � ��o�o 0 _s  �r  �q  S l  � �W�n�mW n   � �XYX o   � ��l�l 	0 width  Y o   � ��k�k 0 _d  �n  �m  �t  �s  P n      Z[Z o   � ��j�j 0 x1  [ o   � ��i�i 0 _b  N \]\ =  � �^_^ o   � ��h�h 0 _o  _ m   � �`` �aa 
 r i g h t] b�gb r   � �cdc l  � �e�f�ee \   � �fgf l  � �h�d�ch n   � �iji o   � ��b�b 0 x2  j o   � ��a�a 0 _s  �d  �c  g l  � �k�`�_k n   � �lml o   � ��^�^ 	0 width  m o   � ��]�] 0 _d  �`  �_  �f  �e  d n      non o   � ��\�\ 0 x2  o o   � ��[�[ 0 _b  �g  �  �  ��  �    pqp l  � ��Z�Y�X�Z  �Y  �X  q r�Wr L   � �ss b   � �tut o   � ��V�V 0 _b  u K   � �vv �Uwx�U 	0 width  w \   � �yzy l  � �{�T�S{ n   � �|}| o   � ��R�R 0 x2  } o   � ��Q�Q 0 _b  �T  �S  z l  � �~�P�O~ n   � �� o   � ��N�N 0 x1  � o   � ��M�M 0 _b  �P  �O  x �L��K�L 
0 height  � \   � ���� l  � ���J�I� n   � ���� o   � ��H�H 0 y2  � o   � ��G�G 0 _b  �J  �I  � l  � ���F�E� n   � ���� o   � ��D�D 0 y1  � o   � ��C�C 0 _b  �F  �E  �K  �W  � ��� l     �B�A�@�B  �A  �@  � ��� l     �?���?  � * $ Returns elementBounds() of the dock   � ��� H   R e t u r n s   e l e m e n t B o u n d s ( )   o f   t h e   d o c k� ��� l     �>�=�<�>  �=  �<  � ��� l     �;���;  �   @return record   � ���    @ r e t u r n   r e c o r d� ��� l     �:���:  �   @see elementBounds   � ��� &   @ s e e   e l e m e n t B o u n d s� ��� l     �9�8�7�9  �8  �7  � ��� i   0 3��� I      �6�5�4�6 0 
dockbounds 
dockBounds�5  �4  � k     �� ��� O    ��� O   ��� e    �� 4   �3�
�3 
uiel� m    �2�2 � 4    �1�
�1 
pcap� m    �� ���  D o c k� m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��0� L    �� n   ��� I    �/��.�/ 0 elementbounds elementBounds� ��-� 1    �,
�, 
rslt�-  �.  �  f    �0  � ��� l     �+�*�)�+  �*  �)  � ��� l     �(���(  � 0 * The Dock's current position on the screen   � ��� T   T h e   D o c k ' s   c u r r e n t   p o s i t i o n   o n   t h e   s c r e e n� ��� l     �'�&�%�'  �&  �%  � ��� l     �$���$  � + % @return string left | right | bottom   � ��� J   @ r e t u r n   s t r i n g   l e f t   |   r i g h t   |   b o t t o m� ��� l     �#�"�!�#  �"  �!  � ��� i   4 7��� I      � ���  0 dockposition dockPosition�  �  � O    ��� L    �� c    ��� n    	��� 1    	�
� 
dpse� 1    �
� 
dpas� m   	 
�
� 
ctxt� m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ����  �  �  � ��� l     ����  � X R Returns elementBounds() of the Finder desktop window (basically the whole screen)   � ��� �   R e t u r n s   e l e m e n t B o u n d s ( )   o f   t h e   F i n d e r   d e s k t o p   w i n d o w   ( b a s i c a l l y   t h e   w h o l e   s c r e e n )� ��� l     ����  �  �  � ��� l     ����  �   @return record   � ���    @ r e t u r n   r e c o r d� ��� l     ����  �   @see elementBounds   � ��� &   @ s e e   e l e m e n t B o u n d s� ��� l     ����  �  �  � ��� i   8 ;��� I      ���� 0 screenbounds screenBounds�  �  � O    ��� L    �� n   ��� I    ���
� 0 elementbounds elementBounds� ��	� n    
��� m    
�
� 
cwin� 1    �
� 
desk�	  �
  �  f    � m     ���                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l     ����  �  �  �  ��   0 ����������� �  � �� ��������������������������� 0 _include_path  �   0 setincludepath setIncludePath��  0 addincludepath addIncludePath��  0 getincludepath getIncludePath�� 0 include  �� 0 displayerror displayError�� (0 uiscriptingenabled UIScriptingEnabled�� 0 
bashscript 
bashScript�� 0 bash  �� 0 _application _Application�� 	0 _file  �� 0 _list _List�� 0 _sound _Sound�� 0 _text _Text�� 
0 _ui _UI� ����    �		 @ / U s e r s / s c o t t / L i b r a r y / S c r i p t s / l i b �

 : / U s e r s / s c o t t / L i b r a r y / S c r i p t s /� �� d��������  0 setincludepath setIncludePath�� ����   ���� 	0 _path  ��   ���� 	0 _path   ����������
�� 
pcls
�� 
alis
�� 
psxp
�� 
TEXT�� 0 _include_path  �� .��,�  ��,�&kvE�Y hO��,�  
�kvE�Y hO�)�,F� �� ���������  0 addincludepath addIncludePath�� ����   ���� 	0 _path  ��   ���� 	0 _path   ������������
�� 
pcls
�� 
alis
�� 
psxp
�� 
TEXT
�� 
list�� 0 _include_path  �� F��,�  ��,�&kvE�Y hO��,�  
�kvE�Y hO��,� 
�kvE�Y hOb   �%)�,F� �� ���������  0 getincludepath getIncludePath��  ��     ������ 0 _include_path  
�� 
list�� )�,�&� ��,�������� 0 include  �� ����   ���� 	0 _name  ��   ������ 	0 _name  �� 	0 _path   ��������@������OQ_ag��  0 getincludepath getIncludePath
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .sysoloadscpt        file��  ��  �� g `)j+  [��l kh  ��%�%j W X  hO ��%�%�%j W X  hO ��%�%�%j W X  h[OY��O)j�� ����������� 0 displayerror displayError�� ��   ��� 0 _message  � 0 _number  ��   ���� 0 _message  � 0 _number  � 
0 _title   �������������
� 
pcls
� 
long
� 
mesS
� 
as A
� EAlTwarN
� 
btns
� 
dflt� 
� .sysodisAaleR        TEXT�� *�E�O��,�  ��%�%�%E�Y hO������kv�k� � ������ (0 uiscriptingenabled UIScriptingEnabled�  �     ��
� 
uien� � *�,EU� ����� 0 
bashscript 
bashScript� ��   ��� 0 _command  � 0 _background  �   ���� 0 _command  � 0 _background  � 0 _script    ,79�
� .sysoexecTEXT���     TEXT� !�E�O�e  
��%E�Y hO��%�%�%j � �N���� 0 bash  � � �    �� 0 _command  �   ��� 0 _command  � 0 command   �� 0 
bashscript 
bashScript� 	)�fl+    �\ ,!� 0 _application _Application!  0"#$%&'(" �������  0 defaultbrowser defaultBrowser� 0 pathto pathTo� 0 pathtoid pathToID� 0 frontmostfile frontmostFile� (0 frontmostdirectory frontmostDirectory� 00 frontmostfileofprocess frontmostFileOfProcess# ����)*��  0 defaultbrowser defaultBrowser�  �  ) �� 	0 _item  * �����������������~�}�|�
� 
plif
� afdrpref
� 
rtyp
� 
utxt
� .earsffdralis        afdr
� 
pcnt
� 
valL
� 
reco� 0 
lshandlers 
LSHandlers
� 
kocl
� 
cobj
� .corecnte****       ****� (0 lshandlerurlscheme LSHandlerURLScheme�~ $0 lshandlerroleall LSHandlerRoleAll�}  �|  � W� N*����l �%/ > ;*�,�,�&�,[��l kh   ��,�  �a ,EY hW X  h[OY��UUOa $ �{��z�y+,�x�{ 0 pathto pathTo�z �w-�w -  �v�v 	0 _name  �y  + �u�t�u 	0 _name  �t 	0 _path  , �s���r�q�p�o�n�m�l�k
�s 
msng
�r 
strq�q 0 
bashscript 
bashScript�p  �o  
�n 
capp
�m .earsffdralis        afdr
�l 
psxp
�k 
TEXT�x 0�E�O )��%�,%fl+ E�W X  *�/j �,�&E�O�% �j$�i�h./�g�j 0 pathtoid pathToID�i �f0�f 0  �e�e 0 _id  �h  . �d�c�d 0 _id  �c 	0 _path  / �b:�a�`�_�^�]�\�[�Z�Y
�b 
msng
�a 
strq�` 0 
bashscript 
bashScript�_  �^  
�] 
capp
�\ kfrmID  
�[ .earsffdralis        afdr
�Z 
psxp
�Y 
TEXT�g /�E�O )��,%fl+ E�W X  *��0j �,�&E�O�& �X]�W�V12�U�X 0 frontmostfile frontmostFile�W  �V  1 �T�T 0 p  2 j�S3�R�Q
�S 
pcap3  
�R 
pisf�Q 00 frontmostfileofprocess frontmostFileOfProcess�U � *�k/�[�,\Ze81E�UO)�k+ ' �P��O�N45�M�P (0 frontmostdirectory frontmostDirectory�O  �N  4 �L�L 0 f  5 
�K�J�I�H�G��F�E�D�C�K 0 frontmostfile frontmostFile
�J 
msng
�I .sysonfo4asfe        file
�H 
asdr
�G 
alis
�F 
psxp
�E 
strq
�D .sysoexecTEXT���     TEXT
�C 
psxf�M 8)j+  E�O�� '�j �,E 	��&Y ��,�,%j �&�&Y hO�( �B��A�@67�?�B 00 frontmostfileofprocess frontmostFileOfProcess�A �>8�> 8  �=�= 0 _process  �@  6 �<�;�:�< 0 _process  �; 0 ff  �: 0 _res  7 	�9�9�8�7�6�5�4�3�9 0 ff  9 �2:�1�0;<�/
�2 .ascrinit****      � ****: k     == �>> �?? @@ .�.�.  �1  �0  ; �-�,�+�*�- 0 p  �, 0 ff1  �+ 0 ff2  �* 0 ff3  < �)ABC�) 0 p  A �(��'�&DE�%�( 0 ff1  �'  �&  D �$�$ 0 _applib  E ��#�"�!�  ��
�# 
bnid�" 0 include  �!  �   
� 
pnam� 0 frontmostfile frontmostFile�% O )�b   �,%k+ E�W $X   )�b   �,%k+ E�W 	X  fO �j+ W X  hOfB ���FG�� 0 ff2  �  �  F  G 	���������
� 
capp
� 
bnid
� kfrmID  
� 
docu
� 
ppth
� 
psxf
� 
alis�  �  � +  *�b   �,E�0 *�k/�,�&�&UW X  hOfC �0��HI�� 0 ff3  �  �  H ���
� 0 w  � 0 attribs  �
 0 i  I g�	������O��� ������������
�	 
cwin
� 
kocl
� 
cobj
� .corecnte****       ****
� 
attr
� 
pALL
� 
pnam
� 
valL
� 
msng
�  
bool�� 0 _text _Text�� 0 	urldecode 	URLDecode
�� 
psxf
�� 
alis��  ��  � r� k b \b   �-[��l kh  ��-�,E�O 9�[��l kh ��,� 	 	��,��& )�,��,k+ �&�&Y h[OY��[OY��W X  hUOf�/ b   �OL OL OL �8 0 ff1  
�7 
pcls
�6 
bool�5 0 ff2  �4 0 ff3  
�3 
msng�? c��K S�O�j+ E�O��,� 	 �f �& �j+ E�Y hO��,� 	 �f �& �j+ E�Y hO��,� 	 �f �& �E�Y hO� ��� ,J�� 	0 _file  J 
 0KLMNOPQRSK ������������������ 0 basename  �� 0 dirname  �� 0 filename  �� 0 findbin findBin�� 0 onlyext onlyExt�� 0 
toshellarg 
toShellArg�� 0 
scriptname 
scriptName�� 0 
uniquefile 
uniqueFileL �������TU���� 0 basename  �� ��V�� V  ���� 	0 _path  ��  T ���� 	0 _path  U �����������
�� 
pcls
�� 
alis
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,�  
��,E�Y hO��,%j M ������WX���� 0 dirname  �� ��Y�� Y  ���� 	0 _path  ��  W ���� 	0 _path  X ����������
�� 
pcls
�� 
alis
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,�  
��,E�Y hO��,%j N ��2����Z[���� 0 filename  �� ��\�� \  ���� 	0 _path  ��  Z ���� 	0 _path  [ ������J��O��
�� 
pcls
�� 
alis
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,�  
��,E�Y hO��,%�%j O ��l����]^���� 0 findbin findBin�� ��_�� _  ���� 	0 _name  ��  ] ������ 	0 _name  �� 0 _bin  ^ �������������
�� 
msng
�� 
strq�� 0 
bashscript 
bashScript��  ��  �� 0�E�O )��,%�%fl+ E�W X  hO��  �Y hO�P ����`a�� 0 onlyext onlyExt� �b� b  ��� 0 _f  � 0 _extensions  �  ` ����� 0 _f  � 0 _extensions  � 0 	_filtered  � 0 f  a �������
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
nmxt
� 
pcnt� =��&E�O� 3jvE�O &�[��l kh ���, ��,�6GY h[OY��O��&UQ ����cd�� 0 
toshellarg 
toShellArg� �e� e  �� 0 _f  �  c ���� 0 _f  � 
0 _paths  � 0 f  d 
�������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
TEXT
� 
psxp
� 
strq� <� 8�E�O !�[��l kh ��%��&�,�,%E�[OY��O��  fY hO�UR �3��fg�� 0 
scriptname 
scriptName�  �  f  g ��
� .earsffdralis        afdr� 0 filename  � ))j  k+ S �W��hi�� 0 
uniquefile 
uniqueFile� �j� j  �� 
0 config  �  h ����� 
0 config  � 0 i  � 0 _parent  � 	0 _name  i �d�g��������� 
0 prefix  � 
0 suffix  � 
� 
FTPc
� 
TEXT
� 
psxp
� 
psxf
� .coredoexbool        obj � R������%E�OlE�O� ?��,�&�,E�O��,��,%E�O %h��%�&j 
��,�%�%��,%E�O�kE�[OY��O�U �� ,k� 0 _list _Listk  0lmnopql ������ 0 join  � 0 indexof indexOf� 0 
bubblesort 
bubbleSort� 0 	quicksort 	quickSort� 
0 unique  m ����rs�~� 0 join  � �}t�} t  �|�{�| 0 _l  �{ 
0 _delim  �  r �z�y�x�w�v�u�z 0 _l  �y 
0 _delim  �x 0 _d  �w 0 _result  �v 0 err_msg  �u 0 err_num  s �t�s�r�q�pu�o
�t 
ascr
�s 
txdl
�r 
TEXT
�q 
ctxt�p 0 err_msg  u �n�m�l
�n 
errn�m 0 err_num  �l  
�o 
errn�~ 4��,E�O ��&��,FO��&E�W X  ���,FO)�l�O���,FO�n �k4�j�ivw�h�k 0 indexof indexOf�j �gx�g x  �f�e�f 0 _l  �e 0 _e  �i  v �d�c�b�d 0 _l  �c 0 _e  �b 0 i  w �a�`
�a 
leng
�` 
cobj�h %  k��,Ekh ��/�  �Y h[OY��Oio �_h�^�]yz�\�_ 0 
bubblesort 
bubbleSort�^ �[{�[ {  �Z�Z 0 thelist theList�]  y �Y�X�W�V�U�T�Y 0 thelist theList�X 0 bs  �W 0 thecount theCount�V 0 indexa indexA�U 0 indexb indexB�T 0 temp  z �Ss|�R�Q�P�S 0 bs  | �O}�N�M~�L
�O .ascrinit****      � ****} k     �� s�K�K  �N  �M  ~ �J�J 	0 alist   �I�I 	0 alist  �L b   ��R 	0 alist  
�Q 
leng
�P 
cobj�\ ���K S�O��,�,E�O�l 
��,EY hO X�kih  Ik�kkh ��,�/��,�k/ (��,�/E�O��,�k/��,�/FO���,�k/FY h[OY��[OY��O��,Ep �H��G�F���E�H 0 	quicksort 	quickSort�G �D��D �  �C�C 0 thelist theList�F  � �B�A�B 0 thelist theList�A 0 bs  � �@���?�>�=�@ 0 bs  � �<��;�:���9
�< .ascrinit****      � ****� k     �� ��� ��� A�8�8  �;  �:  � �7�6�5�7 	0 alist  �6 0 qsort Qsort�5 0 
qpartition 
Qpartition� �4���4 	0 alist  � �3��2�1���0�3 0 qsort Qsort�2 �/��/ �  �.�-�. 0 	leftindex 	leftIndex�- 0 
rightindex 
rightIndex�1  � �,�+�*�)�, 0 	leftindex 	leftIndex�+ 0 
rightindex 
rightIndex�* 	0 pivot  �) 0 newpivot newPivot� �(�'�( 0 
qpartition 
Qpartition�' 0 qsort Qsort�0 A�� 9��l"�E�O*���m+  E�O*��kl+ Ec   O*�k�l+ Ec   Y hOP� �&D�%�$���#�& 0 
qpartition 
Qpartition�% �"��" �  �!� ��! 0 	leftindex 	leftIndex�  0 
rightindex 
rightIndex� 	0 pivot  �$  � �������� 0 	leftindex 	leftIndex� 0 
rightindex 
rightIndex� 	0 pivot  � 0 
pivotvalue 
pivotValue� 0 temp  � 0 	tempindex 	tempIndex� 0 pointer  � ��� 	0 alist  
� 
cobj�# �b  �,�/E�Ob  �,�/E�Ob  �,�/b  �,�/FO�b  �,�/FO�E�O X��kkh b  �,�/� :b  �,�/E�Ob  �,�/b  �,�/FO�b  �,�/FO�kE�Y h[OY��Ob  �,�/E�Ob  �,�/b  �,�/FO�b  �,�/FO��9 b   �OL OL �? 	0 alist  
�> 
leng�= 0 qsort Qsort�E (��K S�O��,�,k �k��,�,l+ Y hO��,Eq �	������ 
0 unique  � ��� �  �� 0 _l  �  � ���� 0 _l  � 0 _result  � 0 i  � ���

� 
kocl
� 
cobj
�
 .corecnte****       ****� .jvE�O $�[��l kh �� 
��%E�Y h[OY��O� �		* ,��	 0 _sound _Sound�  0���� ��� 0 playfile playFile� 0 play  � �	f������ 0 playfile playFile� ��� �  �� � 	0 _path  �  0 _background  �  � �������� 	0 _path  �� 0 _background  �� 0 _script  � ������	����
�� 
pcls
�� 
alis
�� 
psxp
�� 
strq�� 0 
bashscript 
bashScript� #��,�  
��,E�Y hO��,%E�O)��l+ � ��	����������� 0 play  �� ����� �  ���� 	0 _path  ��  � ���� 	0 _path  � ���� 0 playfile playFile�� 	)�el+   ��	� ,��� 0 _text _Text�  0����������� 	�������������������� 0 padleft padLeft�� 0 padright padRight�� 0 replace  �� 	0 split  �� 0 trim  �� 0 trimleft trimLeft�� 0 	trimright 	trimRight�� 0 	urldecode 	URLDecode�� 0 	urlencode 	URLEncode� ��	����������� 0 padleft padLeft�� ����� �  �������� 0 _txt  �� 0 
_character  �� 0 _length  ��  � ���������� 0 _txt  �� 0 
_character  �� 0 _length  �� 0 i  � ����
�� 
TEXT
�� 
leng�� )��&E�O��&E�O���,E�O �kh��%E�[OY��O�� ��
+���������� 0 padright padRight�� ����� �  �������� 0 _txt  �� 0 
_character  �� 0 _length  ��  � ���������� 0 _txt  �� 0 
_character  �� 0 _length  �� 0 i  � ����
�� 
TEXT
�� 
leng�� )��&E�O��&E�O���,E�O �kh��%E�[OY��O�� ��
w���������� 0 replace  �� ����� �  �������� 0 _txt  �� 0 _search  �� 0 _replace  ��  � ��������� 0 _txt  �� 0 _search  � 0 _replace  � 0 _d  � 0 _l  � ����
� 
ascr
� 
txdl
� 
citm
� 
TEXT�� '��,E�O���,FO��-E�O���,FO��&E�O���,FO�� �
������� 	0 split  � ��� �  ��� 0 _txt  � 
0 _delim  �  � ����� 0 _txt  � 
0 _delim  � 0 _d  � 0 _result  � ���
� 
ascr
� 
txdl
� 
citm� ��,E�O���,FO��-E�O���,FO�� ������� 0 trim  � ��� �  ��� 0 _txt  � 
0 _chars  �  � ��� 0 _txt  � 
0 _chars  � �����+��������� 0 	trimright 	trimRight� 0 trimleft trimLeft
� 
pcls
� 
list
� 
bool
� 
tab 
� 
lnfd
� 
ret 
� .sysontocTEXT       shor� 
� 
cha 
� 
ctxt���� s))��l+  �l+ O��,�
 �jv �& ����jj 	�vE�Y hO h���k/�[�\[Zl\Zi2E�[OY��O h���i/�[�\[Zk\Z�2E�[OY��O�� �j������ 0 trimleft trimLeft� ��� �  ��� 0 _txt  � 
0 _chars  �  � ��� 0 _txt  � 
0 _chars  � �����������
� 
pcls
� 
list
� 
bool
� 
tab 
� 
lnfd
� 
ret 
� .sysontocTEXT       shor� 
� 
cha 
� 
ctxt� E��,�
 �jv �& ����jj �vE�Y hO h���k/�[�\[Zl\Zi2E�[OY��O�� �������~� 0 	trimright 	trimRight� �}��} �  �|�{�| 0 _txt  �{ 
0 _chars  �  � �z�y�z 0 _txt  �y 
0 _chars  � �x�w�v��u�t�s�r�q�p�o�n
�x 
pcls
�w 
list
�v 
bool
�u 
tab 
�t 
lnfd
�s 
ret 
�r .sysontocTEXT       shor�q 
�p 
cha 
�o 
ctxt�n���~ E��,�
 �jv �& ����jj �vE�Y hO h���i/�[�\[Zk\Z�2E�[OY��O�� �m�l�k���j�m 0 	urldecode 	URLDecode�l �i��i �  �h�h 0 thetext theText�k  � �g�f�e�d�c�b�a�g 0 thetext theText�f 0 sdst sDst�e 0 shex sHex�d 0 i  �c 0 c  �b 0 icval1 iCVal1�a 0 icval2 iCVal2� �`�_,28�^�]�\�[�Z�Y�X
�` 
leng
�_ 
cha 
�^ 
psof
�] 
psin�\ 
�[ .sysooffslong    ��� null
�Z 
bool�Y 
�X .sysontocTEXT       shor�j ��E�O�E�OkE�O �h���,��/E�O��  
��%E�Y o��  d���,l fY hO*��k/�� 
kE�O*��l/�� 
kE�O�i 
 �i �& fY hO��� �j %E�O�lE�Y ��%E�O�kE�[OY�oO�� �W��V�U���T�W 0 	urlencode 	URLEncode�V �S��S �  �R�R 0 thetext theText�U  � 	�Q�P�O�N�M�L�K�J�I�Q 0 thetext theText�P 0 
thetextenc 
theTextEnc�O 0 eachchar eachChar�N 0 usechar useChar�M 0 eachcharnum eachCharNum�L 0 firstdig firstDig�K 0 	seconddig 	secondDig�J 0 anum aNum�I 0 numhex numHex� ��H�G�F�E�D�C��B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1X�0
�H 
cha 
�G 
kocl
�F 
cobj
�E .corecnte****       ****
�D .sysoctonshor       TEXT�C  �B *�A _
�@ 
bool�? -�> .�= 0�< 9�; A�: Z�9 a�8 z�7 
�6 
dire
�5 olierndD
�4 .sysorondlong        doub�3 	�2 7
�1 .sysontocTEXT       shor
�0 
TEXT�T�E�O ���-[��l kh �E�O�j E�O��  �E�Y Ť�	 ���&	 ��
 ���&�&	 ��
 ���&�&	 ��
 	�a �&�&	 �a 
 	�a �&�& p�a !a a l E�O�a #E�O�a  �a E�O�j E�Y hO�a  �a E�O�j E�Y hOa �a &%�a &%a &E�O�E�Y hO��%a &E�[OY�O� �/t ,��/ 
0 _ui _UI�  0����������������� �.�-�,�+�*�)�(�'�&�%�$�#�"�!� �. ,0 frontmostapplication frontmostApplication�- 40 frontmostapplicationpath frontmostApplicationPath�, :0 frontmostapplicationprocess frontmostApplicationProcess�+ (0 frontmostdirectory frontmostDirectory�* ,0 frontmostdirectoryof frontmostDirectoryOf�) 0 frontmostfile frontmostFile�( "0 frontmostfileof frontmostFileOf�' 0 	menuclick 	menuClick�& 0 resizewindow resizeWindow�% (0 resizewindowcenter resizeWindowCenter�$ 0 elementbounds elementBounds�# 0 desktopbounds desktopBounds�" 0 
dockbounds 
dockBounds�! 0 dockposition dockPosition�  0 screenbounds screenBounds� �������� ,0 frontmostapplication frontmostApplication�  �  �  � ��
� 
capp� 40 frontmostapplicationpath frontmostApplicationPath� *�)j+ /E� �������� 40 frontmostapplicationpath frontmostApplicationPath�  �  �  � ����
� appfegfp
� 
rtyp
� 
utxt
� .earsffdralis        afdr� 	���l � �������� :0 frontmostapplicationprocess frontmostApplicationProcess�  �  �  � ��3�
� 
pcap
� 
pisf� � *�k/�[�,\Ze81EU� ���
�	���� (0 frontmostdirectory frontmostDirectory�
  �	  �  � ��� ,0 frontmostapplication frontmostApplication� ,0 frontmostdirectoryof frontmostDirectoryOf� ))j+  k+ � ������� ,0 frontmostdirectoryof frontmostDirectoryOf� ��� �  � �  0 _app  �  � ������ 0 _app  �� 0 f  � ���������������� "0 frontmostfileof frontmostFileOf
�� .sysonfo4asfe        file
�� 
asdr
�� 
psxp�� 0 dirname  
�� 
psxf
�� 
alis� 8*�k+  E�O�f &�j �,E �Y b  
��,k+ �&�&Y hOf� ��=���������� 0 frontmostfile frontmostFile��  ��  �  � ������ ,0 frontmostapplication frontmostApplication�� "0 frontmostfileof frontmostFileOf�� ))j+  k+ � ��g���������� "0 frontmostfileof frontmostFileOf�� ����� �  ���� 0 _app  ��  � �������� 0 _app  �� 0 ff  �� 0 _res  � ��m������������������������� 0 ff  � �����������
�� .ascrinit****      � ****� k     �� y�� ��� �����  ��  ��  � �������� 0 ff1  �� 0 ff2  �� 0 ff3  � ���� ��|���������� 0 ff1  �� ����� �  ���� 0 _app  ��  � ������ 0 _app  �� 0 _applib  � ��������������
�� 
pnam�� 0 include  ��  ��  
�� 
ID  �� 0 frontmostfile frontmostFile�� G )��,%k+ E�W  X   )��,%k+ E�W 	X  fO �j+ W X  hOf� ������������� 0 ff2  �� ����� �  ���� 0 _app  ��  � �� 0 _app  � ������
� 
docu
� 
ppth
� 
psxf
� 
alis�  �  ��   � *�k/�,�&�&UW X  hOf� �������� 0 ff3  � ��� �  �� 0 _app  �  � ����� 0 _app  � 0 w  � 0 attribs  � 0 i  � ����������������
� 
pcap
� 
pnam
� 
cwin
� 
kocl
� 
cobj
� .corecnte****       ****
� 
attr
� 
pALL
� 
valL
� 
msng
� 
bool� 0 _text _Text� 0 	urldecode 	URLDecode
� 
psxf
� 
alis� j� c `*��,E/�-[��l kh ��-�,E�O ;�[��l kh ��,� 	 	��,��& )�,��,k+ �&a &Y h[OY��[OY��UOf�� L  OL OL 
�� 
pcls
�� 
TEXT
�� 
capp��  ��  
�� 
prun
�� 
msng�� 0 ff1  
�� 
bool�� 0 ff2  �� 0 ff3  �� ���K S�O ��,�  *�/E�Y hW X  hO��,e fY hO�E�O��k+ 
E�O��,� 	 �f �& ��k+ E�Y hO��,� 	 �f �& ��k+ E�Y hO�� �������� 0 	menuclick 	menuClick� ��� �  �� 0 
_menu_list  �  � ����� 0 
_menu_list  � 0 	menuclick 	menuClick� 0 _app  � 0 _top  � �������������� 0 	menuclick 	menuClick� �������� ��
�� .ascrinit****      � ****� k      �����  ��  ��  � ���� 0 recurse     ����������� 0 recurse  �� ����   ������ 0 
_menu_list  �� 0 _parent  ��   ����~�� 0 
_menu_list  � 0 _parent  �~ 	0 _item   �}��|�{�z�y�x
�} 
cobj
�| 
leng
�{ 
menI
�z 
menE�y 0 recurse  
�x .prcsclicuiel    ��� uiel�� 9��k/E�O� .��,k )�[�\[Zl\Z��,2��/�/l+ Y 
��/j U�� L  
� 
leng
� 
cobj
� 
prcs
� 
mbar
� 
mbri
�� 
menE�� 0 recurse  � Y��K S�O��,m 	)j�Y hO�[�\[Zk\Zl2E[�k/E�Z[�l/E�ZO� !��[�\[Zm\Z��,2*�/�k/�/�/l+ U� �w�v�u�t�w 0 resizewindow resizeWindow�v �s�s   �r�q�p�r 0 _window  �q 
0 _width  �p 0 _height  �u   �o�n�m�l�k�o 0 _window  �n 
0 _width  �m 0 _height  �l 0 _w  �k 0 _new   �j�i�h�g�f�e�d�c�b�a�`�j 0 elementbounds elementBounds�i 0 x1  �h 0 y1  �g 0 x2  �f 0 y2  �e 
�d 
msng
�c 
long
�b 
bool
�a 
cobj
�` 
pbnd�t a)�k+  E�O��,��,��,��,�vE�O��	 	��&j�& ��,���m/FY hO��	 	��&j�& ��,����/FY hO���,FO�� �_��^�]	
�\�_ (0 resizewindowcenter resizeWindowCenter�^ �[�[   �Z�Y�X�Z 0 _window  �Y 
0 _width  �X 0 _height  �]  	 �W�V�U�T�S�R�W 0 _window  �V 
0 _width  �U 0 _height  �T 0 _w  �S 0 _new  �R 0 d  
 �Q�P�O�N�M�L�K�J�I�H�G�F�Q 0 elementbounds elementBounds�P 0 x1  �O 0 y1  �N 0 x2  �M 0 y2  �L 
�K 
long�J 	0 width  
�I .sysorondlong        doub
�H 
cobj�G 
0 height  
�F 
pbnd�\ �)�k+  E�O��,��,��,��,�vE�O��&j (���,l!j E�O��,���k/FO��,���m/FY hO��&j (���,l!j E�O��,���l/FO��,����/FY hO���,FO�� �E)�D�C�B�E 0 elementbounds elementBounds�D �A�A   �@�@ 0 _element  �C   �?�>�=�<�;�:�? 0 _element  �> 0 _b  �= 0 p  �< 0 s  �; 0 error_message  �: 0 error_number   �9�8�7�6�5�4�3�2�1�0�/�.��-�,�+�*�)
�9 
pbnd
�8 
list�7 0 x1  
�6 
rslt
�5 
cobj�4 0 y1  �3 0 x2  �2 0 y2  �1 �0 �/  �.  
�- 
posn
�, 
ptsz�+ 0 error_message   �(�'�&
�( 
errn�' 0 error_number  �&  �* 	0 width  �) 
0 height  �B � #��,�&O���k/���l/���m/����/�E�W KX 
  <� 4��,�&E�O��,�&E�O��k/��l/��k/��k/��l/��l/�E�UW 	X  fO�a ��,��,a ��,��,�%� �%��$�#�"�% 0 desktopbounds desktopBounds�$  �#   �!� ����! 0 _s  �  0 _m  � 0 _b  � 0 _d  � 0 _o   �����3��������������8K�`�
� 0 screenbounds screenBounds
� 
pcap
� 
uiel
� 
pcls
� 
mbar
� 
rslt� 0 elementbounds elementBounds� 0 x1  � 0 y1  � 
0 height  � 0 x2  � 0 y2  � 
� 
dpas
� 
dahd� 0 
dockbounds 
dockBounds� 0 dockposition dockPosition� 	0 width  �
 �" �)j+  E�O� *��/ *�k/�[�,\Z�81EUUO)�k+ 	E�O��,��,��,���,��,�E�O� *a ,a ,EUO�e \)j+ E�O)j+ E�O�a   ��,��,��,FY 3�a   ��,�a ,��,FY �a   ��,�a ,��,FY hY hO�a ��,��,��,��,a %� �	�����	 0 
dockbounds 
dockBounds�  �     ������
� 
pcap
� 
uiel
� 
rslt� 0 elementbounds elementBounds� � *��/ *�k/EUUO)�k+ � ��� ����� 0 dockposition dockPosition�   ��     �������
�� 
dpas
�� 
dpse
�� 
ctxt�� � 
*�,�,�&U� ����������� 0 screenbounds screenBounds��  ��     �������
�� 
desk
�� 
cwin�� 0 elementbounds elementBounds�� � )*�,�,k+ U - �� ��   k        l      ����  =7-- lib -> Terminal-- Useful handlers for Terminal
--
-- TotalTerminal (http://totalterminal.binaryage.com) Support:
-- For versions prior to 1.2 "Show on Reopen" must be checked in
-- the TotalTerminal Preferences.
--
-- @author Scott Buchanan <buchanan.sc@gmail.com>
-- @link http://wafflesnatcha.github.com    �n  - -   l i b   - >   T e r m i n a l  - -   U s e f u l   h a n d l e r s   f o r   T e r m i n a l 
 - - 
 - -   T o t a l T e r m i n a l   ( h t t p : / / t o t a l t e r m i n a l . b i n a r y a g e . c o m )   S u p p o r t : 
 - -   F o r   v e r s i o n s   p r i o r   t o   1 . 2   " S h o w   o n   R e o p e n "   m u s t   b e   c h e c k e d   i n 
 - -   t h e   T o t a l T e r m i n a l   P r e f e r e n c e s . 
 - - 
 - -   @ a u t h o r   S c o t t   B u c h a n a n   < b u c h a n a n . s c @ g m a i l . c o m > 
 - -   @ l i n k   h t t p : / / w a f f l e s n a t c h a . g i t h u b . c o m   !  l     ��������  ��  ��  ! "#" j     ��$�� &0 totalterminal_app TotalTerminal_app$ m     ��
�� 
msng# %&% l     ��������  ��  ��  & '(' l     ��)*��  )   Change directories   * �++ &   C h a n g e   d i r e c t o r i e s( ,-, l     ��������  ��  ��  - ./. l     ��01��  0 B < @param  alias|string  _path  The path you want to change to   1 �22 x   @ p a r a m     a l i a s | s t r i n g     _ p a t h     T h e   p a t h   y o u   w a n t   t o   c h a n g e   t o/ 343 l     ��56��  5 P J @param  string|window  _window  The terminal window to run the command in   6 �77 �   @ p a r a m     s t r i n g | w i n d o w     _ w i n d o w     T h e   t e r m i n a l   w i n d o w   t o   r u n   t h e   c o m m a n d   i n4 898 l     ��:;��  :   @return void   ; �<<    @ r e t u r n   v o i d9 =>= l     ��������  ��  ��  > ?@? i    ABA I      ��C���� 0 cd  C DED o      ���� 	0 _path  E F��F o      ���� 0 _window  ��  ��  B k     |GG HIH Z    $JK����J G     LML G     NON G     PQP =    RSR o     ���� 	0 _path  S m    ��
�� 
msngQ =   	TUT o    ���� 	0 _path  U m    VV �WW  O =   XYX o    ���� 	0 _path  Y m    ��
�� boovfalsM =   Z[Z o    ���� 	0 _path  [ m    ��
�� 
nullK L     \\ m    ��
�� boovfals��  ��  I ]^] Z  % 6_`����_ =  % *aba n   % (cdc m   & (��
�� 
pclsd o   % &���� 	0 _path  b m   ( )��
�� 
alis` r   - 2efe n   - 0ghg 1   . 0��
�� 
psxph o   - .���� 	0 _path  f o      ���� 	0 _path  ��  ��  ^ iji l  7 7��������  ��  ��  j klk r   7 >mnm b   7 <opo m   7 8qq �rr  c d  p n   8 ;sts 1   9 ;��
�� 
strqt o   8 9���� 	0 _path  n o      ���� 0 _cmd  l uvu l  ? ?��������  ��  ��  v w�w O   ? |xyx Z   C {z{|}z =  C H~~ l  C F���� n   C F��� 1   D F�
� 
pcls� o   C D�� 0 _window  �  �   m   F G�
� 
cwin{ I  K R���
� .coredoscnull��� ��� ctxt� o   K L�� 0 _cmd  � ���
� 
kfil� o   M N�� 0 _window  �  | ��� G   U d��� =  U Z��� l  U X���� n   U X��� 1   V X�
� 
pcls� o   U V�� 0 _window  �  �  � m   X Y�
� 
long� =  ] b��� l  ] `���� n   ] `��� 1   ^ `�
� 
pcls� o   ] ^�� 0 _window  �  �  � m   ` a�
� 
ctxt� ��� I  g s���
� .coredoscnull��� ��� ctxt� o   g h�� 0 _cmd  � ���
� 
kfil� 4   i o��
� 
cwin� l  k n���� c   k n��� o   k l�� 0 _window  � m   l m�
� 
long�  �  �  �  } I  v {���
� .coredoscnull��� ��� ctxt� o   v w�� 0 _cmd  �  y m   ? @���                                                                                      @ alis    l  Macintosh HD               �:k�H+  ~��Terminal.app                                                   ~�8��g        ����  	                	Utilities     �:�      ���    ~��~��  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  �  @ ��� l     ����  �  �  � ��� l     ����  �   Activate Terminal   � ��� $   A c t i v a t e   T e r m i n a l� ��� l     ����  �      � ���   � ��� l     ����  �   @return void   � ���    @ r e t u r n   v o i d� ��� l     ����  �  �  � ��� i    
��� I      ���� 0 	_activate  �  �  � O     ��� k    �� ��� I   	���
� .miscactvnull��� ��� null�  �  � ��� I  
 ���
� .aevtrappnull��� ��� null�  �  �  � m     ���                                                                                      @ alis    l  Macintosh HD               �:k�H+  ~��Terminal.app                                                   ~�8��g        ����  	                	Utilities     �:�      ���    ~��~��  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  � ��� l     ����  �  �  � ��� l     ����  � Y S Tries to open TotalTerminal, but if it can't (i.e. TotalTerminal isn't installed),   � ��� �   T r i e s   t o   o p e n   T o t a l T e r m i n a l ,   b u t   i f   i t   c a n ' t   ( i . e .   T o t a l T e r m i n a l   i s n ' t   i n s t a l l e d ) ,� ��� l     ����  � $  it will open Terminal instead   � ��� <   i t   w i l l   o p e n   T e r m i n a l   i n s t e a d� ��� l     ����  �  �  � ��� l     ����  � D > @return boolean true if TotalTerminal opened, false otherwise   � ��� |   @ r e t u r n   b o o l e a n   t r u e   i f   T o t a l T e r m i n a l   o p e n e d ,   f a l s e   o t h e r w i s e� ��� l     ����  �  �  � ��� i    ��� I      �~�}�|�~ 	0 _open  �}  �|  � k     �� ��� t     ��� Q    ���� k    �� ��� I   
�{��z
�{ .sysoexecTEXT���     TEXT� m    �� ��� 4 o p e n   - W   - a   ' T o t a l T e r m i n a l '�z  � ��y� L    �� m    �x
�x boovtrue�y  � R      �w�v�u
�w .ascrerr ****      � ****�v  �u  � I   �t��s
�t .miscactvnull��� ��� null� m    ���                                                                                      @ alis    l  Macintosh HD               �:k�H+  ~��Terminal.app                                                   ~�8��g        ����  	                	Utilities     �:�      ���    ~��~��  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  �s  � m     �r�r � ��q� L    �� m    �p
�p boovfals�q  � ��� l     �o�n�m�o  �n  �m  � ��� l     �l���l  �   Create a new tab   � ��� "   C r e a t e   a   n e w   t a b� ��� l     �k�j�i�k  �j  �i  � ��� l     �h���h  �   @return void   � ���    @ r e t u r n   v o i d� ��� l     �g�f�e�g  �f  �e  � ��� i    ��� I      �d�c�b�d 0 newtab newTab�c  �b  � Z     D���a�� n       I    �`�_�^�` 0 	isrunning 	isRunning�_  �^    f     � k    $  n    I   	 �]�\�[�] 0 	_activate  �\  �[    f    	 �Z O   $	 I   #�Y
�X
�Y .prcsclicuiel    ��� uiel
 n     4    �W
�W 
menI m     �  N e w   T a b n     4    �V
�V 
menE m     � 
 S h e l l n     4    �U
�U 
mbar m    �T�T  4    �S
�S 
pcap m     �  T e r m i n a l�X  	 m    �                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �Z  �a  � k   ' D  n  ' ,  I   ( ,�R�Q�P�R 	0 _open  �Q  �P     f   ' ( !"! Z  - >#$�O�N# l  - 2%�M�L% n  - 2&'& I   . 2�K�J�I�K $0 hastotalterminal hasTotalTerminal�J  �I  '  f   - .�M  �L  $ I  5 :�H(�G
�H .sysodelanull��� ��� nmbr( m   5 6�F�F �G  �O  �N  " )�E) n  ? D*+* I   @ D�D�C�B�D 0 	_activate  �C  �B  +  f   ? @�E  � ,-, l     �A�@�?�A  �@  �?  - ./. l     �>01�>  0 - ' Create a new tab and cd to a directory   1 �22 N   C r e a t e   a   n e w   t a b   a n d   c d   t o   a   d i r e c t o r y/ 343 l     �=�<�;�=  �<  �;  4 565 l     �:78�:  7 6 0 @param alias|string _path The path to change to   8 �99 `   @ p a r a m   a l i a s | s t r i n g   _ p a t h   T h e   p a t h   t o   c h a n g e   t o6 :;: l     �9<=�9  <   @return void   = �>>    @ r e t u r n   v o i d; ?@? l     �8�7�6�8  �7  �6  @ ABA i    CDC I      �5E�4�5 0 newtabat newTabAtE F�3F o      �2�2 	0 _path  �3  �4  D k     GG HIH n    JKJ I    �1�0�/�1 0 newtab newTab�0  �/  K  f     I L�.L n   MNM I    �-O�,�- 0 cd  O PQP o    �+�+ 	0 _path  Q R�*R m    	�)�) �*  �,  N  f    �.  B STS l     �(�'�&�(  �'  �&  T UVU l     �%WX�%  W . ( Open a new window and cd to a directory   X �YY P   O p e n   a   n e w   w i n d o w   a n d   c d   t o   a   d i r e c t o r yV Z[Z l     �$�#�"�$  �#  �"  [ \]\ l     �!^_�!  ^ 6 0 @param string|alias _path The path to change to   _ �`` `   @ p a r a m   s t r i n g | a l i a s   _ p a t h   T h e   p a t h   t o   c h a n g e   t o] aba l     � cd�   c   @return void   d �ee    @ r e t u r n   v o i db fgf l     ����  �  �  g hih i    jkj I      �l�� 0 newwindowat newWindowAtl m�m o      �� 	0 _path  �  �  k k     /nn opo Z     qr��q >    sts n     uvu 1    �
� 
prunv m     ww�                                                                                      @ alis    l  Macintosh HD               �:k�H+  ~��Terminal.app                                                   ~�8��g        ����  	                	Utilities     �:�      ���    ~��~��  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  t m    �
� boovtruer k    xx yzy n   {|{ I   	 ���� 	0 _open  �  �  |  f    	z }~} I   ��
� .sysodelanull��� ��� nmbr m    �� �  ~ ��� n   ��� I    ���� 0 	_activate  �  �  �  f    �  �  �  p ��
� Z   /���	�� >   !��� o    �� 	0 _path  � m     �� ���  � n  $ +��� I   % +���� 0 cd  � ��� o   % &�� 	0 _path  � ��� m   & '�
� boovfals�  �  �  f   $ %�	  �  �
  i ��� l     �� ���  �   ��  � ��� i    ��� I      �������� 0 	isrunning 	isRunning��  ��  � k     '�� ��� Q     $����� k    �� ��� O   ��� e    �� 6   ��� n    ��� 1    ��
�� 
ID  � 4   ���
�� 
pcap� m   	 
���� � =   ��� 1    ��
�� 
pnam� m    �� ���  T e r m i n a l� m    ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� L    �� m    ��
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� L   % '�� m   % &��
�� boovfals��  � ��� l     ��������  ��  ��  � ���� i    "��� I      �������� $0 hastotalterminal hasTotalTerminal��  ��  � k     ?�� ��� Z     '������� =    ��� o     ���� &0 totalterminal_app TotalTerminal_app� m    ��
�� 
msng� Q   
 #���� r    ��� m    ���                                                                                      @ alis    h  Macintosh HD               �:k�H+  ~��TotalTerminal.app                                              D.�idG        ����  	                Applications    �:�      �i��    ~��  ,Macintosh HD:Applications: TotalTerminal.app  $  T o t a l T e r m i n a l . a p p    M a c i n t o s h   H D  Applications/TotalTerminal.app  / ��  � o      ���� &0 totalterminal_app TotalTerminal_app� R      ������
�� .ascrerr ****      � ****��  ��  � r    #��� m    ��
�� boovfals� o      ���� &0 totalterminal_app TotalTerminal_app��  ��  � ��� Z  ( 8������� >  ( /��� o   ( -���� &0 totalterminal_app TotalTerminal_app� m   - .��
�� boovfals� L   2 4�� m   2 3��
�� boovtrue��  ��  � ���� L   9 ?�� o   9 >���� &0 totalterminal_app TotalTerminal_app��  ��   ���������������  � 	�������������������� &0 totalterminal_app TotalTerminal_app�� 0 cd  �� 0 	_activate  �� 	0 _open  �� 0 newtab newTab�� 0 newtabat newTabAt�� 0 newwindowat newWindowAt�� 0 	isrunning 	isRunning�� $0 hastotalterminal hasTotalTerminal
�� 
msng� ��B���������� 0 cd  �� ����� �  ������ 	0 _path  �� 0 _window  ��  � �������� 	0 _path  �� 0 _window  �� 0 _cmd  � ��V�������q�������
�� 
msng
�� 
bool
�� 
null
� 
pcls
� 
alis
� 
psxp
� 
strq
� 
cwin
� 
kfil
� .coredoscnull��� ��� ctxt
� 
long
� 
ctxt�� }�� 
 �� �&
 �f �&
 �� �& fY hO��,�  
��,E�Y hO��,%E�O� :��,�  ��l Y (��,� 
 	��,� �& ��*��&/l Y �j U� �������� 0 	_activate  �  �  �  � ���
� .miscactvnull��� ��� null
� .aevtrappnull��� ��� null� � *j O*j U� �������� 	0 _open  �  �  �  � ������
� .sysoexecTEXT���     TEXT�  �  
� .miscactvnull��� ��� null� mn �j OeW X  �j oOf� �������� 0 newtab newTab�  �  �  � ����������� 0 	isrunning 	isRunning� 0 	_activate  
� 
pcap
� 
mbar
� 
menE
� 
menI
� .prcsclicuiel    ��� uiel� 	0 _open  � $0 hastotalterminal hasTotalTerminal
� .sysodelanull��� ��� nmbr� E)j+   !)j+ O� *��/�k/��/��/j 
UY )j+ O)j+  
lj Y hO)j+ � �D������ 0 newtabat newTabAt� ��� �  �� 	0 _path  �  � �� 	0 _path  � ��� 0 newtab newTab� 0 cd  � )j+  O)�kl+ � �k������ 0 newwindowat newWindowAt� ��� �  �� 	0 _path  �  � �� 	0 _path  � w������
� 
prun� 	0 _open  
� .sysodelanull��� ��� nmbr� 0 	_activate  � 0 cd  � 0��,e )j+ Olj O)j+ Y hO�� )�fl+ Y h� �������� 0 	isrunning 	isRunning�  �  �  � �������~�}
� 
pcap
� 
ID  �  
� 
pnam�~  �}  � ( � *�k/�,�[�,\Z�81EUOeW X  hOf� �|��{�z���y�| $0 hastotalterminal hasTotalTerminal�{  �z  �  � �x��w�v
�x 
msng�w  �v  �y @b   �   �Ec   W X  fEc   Y hOb   f eY hOb    . �u��t�s���r
�u .aevtoappnull  �   � ****� k     ��  !�q�q  �t  �s  �  � �p�o�n�p 0 _application _Application�o (0 frontmostdirectory frontmostDirectory�n 0 newtabat newTabAt�r b   *b   �,j+ k+ U ascr  ��ޭ