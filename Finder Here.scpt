FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
-- Open a Finder window at the frontmost window's current document
--
-- @requires lib.scpt
-- @author Scott Buchanan <buchanan.sc@gmail.com>
-- @link http://wafflesnatcha.github.com     � 	 	p 
 - -   O p e n   a   F i n d e r   w i n d o w   a t   t h e   f r o n t m o s t   w i n d o w ' s   c u r r e n t   d o c u m e n t 
 - - 
 - -   @ r e q u i r e s   l i b . s c p t 
 - -   @ a u t h o r   S c o t t   B u c h a n a n   < b u c h a n a n . s c @ g m a i l . c o m > 
 - -   @ l i n k   h t t p : / / w a f f l e s n a t c h a . g i t h u b . c o m    
  
 l     ��������  ��  ��        j     �� �� 0 lib    I    �� ��
�� .sysoloadscpt        file  b     	    n         1    ��
�� 
psxp  l     ����  I    �� ��
�� .earsffdralis        afdr  m     ��
�� afdrscr���  ��  ��    m       �    l i b / l i b . s c p t��        l     ����  r         n         I    �������� 0 frontmostfile frontmostFile��  ��    n          o    ���� 0 _application _Application   o     ���� 0 lib    o      ���� 0 f  ��  ��     ! " ! l   : #���� # O    : $ % $ k    9 & &  ' ( ' Z    3 ) *���� ) =    + , + n     - . - 1    ��
�� 
pcls . o    ���� 0 f   , m    ��
�� 
alis * Z    / / 0�� 1 / =    2 3 2 n     4 5 4 1    ��
�� 
kind 5 o    ���� 0 f   3 m     6 6 � 7 7  F o l d e r 0 I  " '�� 8��
�� .aevtodocnull  �    alis 8 o   " #���� 0 f  ��  ��   1 I  * /�� 9��
�� .miscslctnull���    obj  9 o   * +���� 0 f  ��  ��  ��   (  :�� : I  4 9������
�� .miscactvnull��� ��� obj ��  ��  ��   % m     ; ;�                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   "  <�� < l     ��������  ��  ��  ��       �� = > ?��   = ������ 0 lib  
�� .aevtoappnull  �   � **** > �� @  A��   @ k       B B  C D C l      �� E F��   E*$
-- lib.scpt
-- Library Manager
--
-- @author Scott Buchanan <buchanan.sc@gmail.com>
-- @link http://wafflesnatcha.github.com
-- 
-- Example:
-- <code>
-- -- Assuming lib.scpt is in ~/Library/Scripts/lib
-- property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"
-- get frontmostApplicationPath() of _UI of lib
-- </code>
--
-- <code>
-- property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"
-- property Firefox : include("Application/Firefox") of lib
-- tell Firefox to refresh()
-- </code>
    F � G GH 
 - -   l i b . s c p t 
 - -   L i b r a r y   M a n a g e r 
 - - 
 - -   @ a u t h o r   S c o t t   B u c h a n a n   < b u c h a n a n . s c @ g m a i l . c o m > 
 - -   @ l i n k   h t t p : / / w a f f l e s n a t c h a . g i t h u b . c o m 
 - -   
 - -   E x a m p l e : 
 - -   < c o d e > 
 - -   - -   A s s u m i n g   l i b . s c p t   i s   i n   ~ / L i b r a r y / S c r i p t s / l i b 
 - -   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t " 
 - -   g e t   f r o n t m o s t A p p l i c a t i o n P a t h ( )   o f   _ U I   o f   l i b 
 - -   < / c o d e > 
 - - 
 - -   < c o d e > 
 - -   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t " 
 - -   p r o p e r t y   F i r e f o x   :   i n c l u d e ( " A p p l i c a t i o n / F i r e f o x " )   o f   l i b 
 - -   t e l l   F i r e f o x   t o   r e f r e s h ( ) 
 - -   < / c o d e > 
 D  H I H l     ��������  ��  ��   I  J K J j     �� L�� 0 _include_path   L J      M M  N O N b     	 P Q P n      R S R 1    ��
�� 
psxp S l     T���� T I    �� U��
�� .earsffdralis        afdr U m     ��
�� afdrscr���  ��  ��   Q m     V V � W W  l i b O  X�� X n   	  Y Z Y 1    ��
�� 
psxp Z l  	  [���� [ I  	 �� \��
�� .earsffdralis        afdr \ m   	 
��
�� afdrscr���  ��  ��  ��   K  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a &   Change the current include path    b � c c @   C h a n g e   t h e   c u r r e n t   i n c l u d e   p a t h `  d e d l     ��������  ��  ��   e  f g f l     �� h i��   h 4 . @param list|alias|text _path New include path    i � j j \   @ p a r a m   l i s t | a l i a s | t e x t   _ p a t h   N e w   i n c l u d e   p a t h g  k l k l     �� m n��   m ( " @return list The new include path    n � o o D   @ r e t u r n   l i s t   T h e   n e w   i n c l u d e   p a t h l  p q p l     ��������  ��  ��   q  r s r i     t u t I      �� v����  0 setincludepath setIncludePath v  w�� w o      ���� 	0 _path  ��  ��   u k     - x x  y z y Z     { |���� { l     }���� } =     ~  ~ n      � � � m    ��
�� 
pcls � o     ���� 	0 _path    m    ��
�� 
alis��  ��   | r     � � � J     � �  ��� � c     � � � l    ����� � n     � � � 1   	 ��
�� 
psxp � o    	���� 	0 _path  ��  ��   � m    ��
�� 
ctxt��   � o      ���� 	0 _path  ��  ��   z  � � � Z   ' � ����� � l    ����� � =    � � � n     � � � m    ��
�� 
pcls � o    ���� 	0 _path   � m    ��
�� 
ctxt��  ��   � r    # � � � J    ! � �  ��� � o    ���� 	0 _path  ��   � o      ���� 	0 _path  ��  ��   �  ��� � r   ( - � � � o   ( )���� 	0 _path   � n      � � � o   * ,���� 0 _include_path   �  f   ) *��   s  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � . ( Add a new directory to the include path    � � � � P   A d d   a   n e w   d i r e c t o r y   t o   t h e   i n c l u d e   p a t h �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) @param alias|text _path New include path    � � � � R   @ p a r a m   a l i a s | t e x t   _ p a t h   N e w   i n c l u d e   p a t h �  � � � l     �� � ���   � ( " @return list The new include path    � � � � D   @ r e t u r n   l i s t   T h e   n e w   i n c l u d e   p a t h �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� �����  0 addincludepath addIncludePath �  ��� � o      ���� 	0 _path  ��  ��   � k     E � �  � � � Z     � ���� � l     ��~�} � =     � � � n      � � � m    �|
�| 
pcls � o     �{�{ 	0 _path   � m    �z
�z 
alis�~  �}   � r     � � � J     � �  ��y � c     � � � l    ��x�w � n     � � � 1   	 �v
�v 
psxp � o    	�u�u 	0 _path  �x  �w   � m    �t
�t 
ctxt�y   � o      �s�s 	0 _path  ��  �   �  � � � Z   ' � ��r�q � l    ��p�o � =    � � � n     � � � m    �n
�n 
pcls � o    �m�m 	0 _path   � m    �l
�l 
ctxt�p  �o   � r    # � � � J    ! � �  ��k � o    �j�j 	0 _path  �k   � o      �i�i 	0 _path  �r  �q   �  � � � Z  ( 9 � ��h�g � l  ( - ��f�e � >  ( - � � � n   ( + � � � m   ) +�d
�d 
pcls � o   ( )�c�c 	0 _path   � m   + ,�b
�b 
list�f  �e   � r   0 5 � � � J   0 3 � �  ��a � o   0 1�`�` 	0 _path  �a   � o      �_�_ 	0 _path  �h  �g   �  ��^ � r   : E � � � b   : A � � � o   : ?�]�] 0 _include_path   � o   ? @�\�\ 	0 _path   � n      � � � o   B D�[�[ 0 _include_path   �  f   A B�^   �  � � � l     �Z�Y�X�Z  �Y  �X   �  � � � l     �W � ��W   � &   Return the current include path    � � � � @   R e t u r n   t h e   c u r r e n t   i n c l u d e   p a t h �  � � � l     �V�U�T�V  �U  �T   �  � � � l     �S � ��S   �   @return list    � � � �    @ r e t u r n   l i s t �  � � � l     �R�Q�P�R  �Q  �P   �  � � � i      � � � I      �O�N�M�O  0 getincludepath getIncludePath�N  �M   � L        c      n     o    �L�L 0 _include_path    f      m    �K
�K 
list �  l     �J�I�H�J  �I  �H    l     �G	
�G  	 6 0 Load a script from anywhere in the include path   
 � `   L o a d   a   s c r i p t   f r o m   a n y w h e r e   i n   t h e   i n c l u d e   p a t h  l     �F�E�D�F  �E  �D    l     �C�C    	 Example:    �    E x a m p l e :  l     �B�B     <code>    �    < c o d e >  l     �A�A   ^ X -- This will find a script name "Firefox.scpt" or "Firefox.applescript", in a directory    � �   - -   T h i s   w i l l   f i n d   a   s c r i p t   n a m e   " F i r e f o x . s c p t "   o r   " F i r e f o x . a p p l e s c r i p t " ,   i n   a   d i r e c t o r y  l     �@ �@   C = -- called "Applications" found somewhere in the include path     �!! z   - -   c a l l e d   " A p p l i c a t i o n s "   f o u n d   s o m e w h e r e   i n   t h e   i n c l u d e   p a t h "#" l     �?$%�?  $ Y S property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"   % �&& �   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t "# '(' l     �>)*�>  ) @ : property Firefox : include("Applications/Firefox") of lib   * �++ t   p r o p e r t y   F i r e f o x   :   i n c l u d e ( " A p p l i c a t i o n s / F i r e f o x " )   o f   l i b( ,-, l     �=./�=  .    tell Firefox to refresh()   / �00 4   t e l l   F i r e f o x   t o   r e f r e s h ( )- 121 l     �<34�<  3   </code>   4 �55    < / c o d e >2 676 l     �;�:�9�;  �:  �9  7 898 l     �8:;�8  : g a @param text _name Name (and path if necessary) of the library. For example, "Application/Finder"   ; �<< �   @ p a r a m   t e x t   _ n a m e   N a m e   ( a n d   p a t h   i f   n e c e s s a r y )   o f   t h e   l i b r a r y .   F o r   e x a m p l e ,   " A p p l i c a t i o n / F i n d e r "9 =>= l     �7?@�7  ?   @return script   @ �AA    @ r e t u r n   s c r i p t> BCB l     �6�5�4�6  �5  �4  C DED i   ! $FGF I      �3H�2�3 0 include  H I�1I o      �0�0 	0 _name  �1  �2  G k     fJJ KLK X     aM�/NM k    \OO PQP Q    *RS�.R L    !TT l    U�-�,U I    �+V�*
�+ .sysoloadscpt        fileV b    WXW b    YZY o    �)�) 	0 _path  Z m    [[ �\\  /X o    �(�( 	0 _name  �*  �-  �,  S R      �'�&�%
�' .ascrerr ****      � ****�&  �%  �.  Q ]^] Q   + C_`�$_ L   . :aa l  . 9b�#�"b I  . 9�!c� 
�! .sysoloadscpt        filec b   . 5ded b   . 3fgf b   . 1hih o   . /�� 	0 _path  i m   / 0jj �kk  /g o   1 2�� 	0 _name  e m   3 4ll �mm 
 . s c p t�   �#  �"  ` R      ���
� .ascrerr ****      � ****�  �  �$  ^ n�n Q   D \op�o L   G Sqq l  G Rr��r I  G R�s�
� .sysoloadscpt        files b   G Ntut b   G Lvwv b   G Jxyx o   G H�� 	0 _path  y m   H Izz �{{  /w o   J K�� 	0 _name  u m   L M|| �}}  . a p p l e s c r i p t�  �  �  p R      ���
� .ascrerr ****      � ****�  �  �  �  �/ 	0 _path  N n   ~~ I    ����  0 getincludepath getIncludePath�  �    f    L ��� R   b f���

� .ascrerr ****      � ****� m   d e�� ��� " l i b r a r y   n o t   f o u n d�
  �  E ��� l     �	���	  �  �  � ��� l     ����  �   Display an error message   � ��� 2   D i s p l a y   a n   e r r o r   m e s s a g e� ��� l     ����  �  �  � ��� l     ����  �  	 Example:   � ���    E x a m p l e :� ��� l     ����  �   <code>   � ���    < c o d e >� ��� l     � ���   � Y S property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"   � ��� �   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t "� ��� l     ������  � 
  try   � ���    t r y� ��� l     ������  � " 	-- commands that might fail   � ��� 8 	 - -   c o m m a n d s   t h a t   m i g h t   f a i l� ��� l     ������  � 1 + on error error_message number error_number   � ��� V   o n   e r r o r   e r r o r _ m e s s a g e   n u m b e r   e r r o r _ n u m b e r� ��� l     ������  � 8 2 	displayError(error_message, error_number) of lib   � ��� d   	 d i s p l a y E r r o r ( e r r o r _ m e s s a g e ,   e r r o r _ n u m b e r )   o f   l i b� ��� l     ������  �   end try   � ���    e n d   t r y� ��� l     ������  �   </code>   � ���    < / c o d e >� ��� l     ��������  ��  ��  � ��� l     ������  � ) # @param text _message Error message   � ��� F   @ p a r a m   t e x t   _ m e s s a g e   E r r o r   m e s s a g e� ��� l     ������  � X R @param integer _number Error code (set to anything other than an integer to omit)   � ��� �   @ p a r a m   i n t e g e r   _ n u m b e r   E r r o r   c o d e   ( s e t   t o   a n y t h i n g   o t h e r   t h a n   a n   i n t e g e r   t o   o m i t )� ��� l     ������  � 9 3 @return record The return value of `display alert`   � ��� f   @ r e t u r n   r e c o r d   T h e   r e t u r n   v a l u e   o f   ` d i s p l a y   a l e r t `� ��� l     ��������  ��  ��  � ��� i   % (��� I      ������� 0 displayerror displayError� ��� o      ���� 0 _message  � ���� o      ���� 0 _number  ��  ��  � k     )�� ��� r     ��� m     �� ��� 
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
dflt� m   $ %���� ��  ��  � � � l     ��������  ��  ��     l     ����   !  Is UI Scriping is enabled?    � 6   I s   U I   S c r i p i n g   i s   e n a b l e d ?  l     ��������  ��  ��   	 l     ��
��  
   @return boolean    �     @ r e t u r n   b o o l e a n	  l     ��������  ��  ��    i   ) , I      �������� (0 uiscriptingenabled UIScriptingEnabled��  ��   O    
 L    	 1    ��
�� 
uien m     �                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    l     ��������  ��  ��    l     ����   : 4 Advanced {do shell script} using a bash login shell    � h   A d v a n c e d   { d o   s h e l l   s c r i p t }   u s i n g   a   b a s h   l o g i n   s h e l l  l     ��������  ��  ��    !  l     ��"#��  " S M @param text _command The command you wish to run through a bash login shell.   # �$$ �   @ p a r a m   t e x t   _ c o m m a n d   T h e   c o m m a n d   y o u   w i s h   t o   r u n   t h r o u g h   a   b a s h   l o g i n   s h e l l .! %&% l     ��'(��  ' O I @param boolean _background Run as a background process (asynchronously).   ( �)) �   @ p a r a m   b o o l e a n   _ b a c k g r o u n d   R u n   a s   a   b a c k g r o u n d   p r o c e s s   ( a s y n c h r o n o u s l y ) .& *+* l     ��,-��  , &   @return text the command output   - �.. @   @ r e t u r n   t e x t   t h e   c o m m a n d   o u t p u t+ /0/ l     ��������  ��  ��  0 121 i   - 0343 I      ��5���� 0 
bashscript 
bashScript5 676 o      ���� 0 _command  7 8��8 o      ���� 0 _background  ��  ��  4 k     "99 :;: r     <=< m     >> �??   b a s h   - l s   < < ' E O F '= o      ���� 0 _script  ; @A@ Z   BC����B =    DED o    ���� 0 _background  E m    ��
�� boovtrueC r   
 FGF b   
 HIH o   
 ���� 0 _script  I m    JJ �KK    & > / d e v / n u l l   &G o      ���� 0 _script  ��  ��  A L��L L    "MM I   !��N��
�� .sysoexecTEXT���     TEXTN b    OPO b    QRQ b    STS b    UVU o    ���� 0 _script  V 1    ��
�� 
lnfdT o    ���� 0 _command  R 1    ��
�� 
lnfdP m    WW �XX  E O F��  ��  2 YZY l     ��������  ��  ��  Z [\[ h   1 8��]�� 0 _application _Application] k      ^^ _`_ l     ��������  ��  ��  ` aba l     ��cd��  c   lib -> _Application   d �ee (   l i b   - >   _ A p p l i c a t i o nb fgf l     ��hi��  h . ( Functions for working with applications   i �jj P   F u n c t i o n s   f o r   w o r k i n g   w i t h   a p p l i c a t i o n sg klk l     ��������  ��  ��  l mnm l     ��op��  o 6 0 Bundle identifier of the system default browser   p �qq `   B u n d l e   i d e n t i f i e r   o f   t h e   s y s t e m   d e f a u l t   b r o w s e rn rsr l     ��tu��  t \ V Determined by the default application for the 'http://' URL scheme. If none is found,   u �vv �   D e t e r m i n e d   b y   t h e   d e f a u l t   a p p l i c a t i o n   f o r   t h e   ' h t t p : / / '   U R L   s c h e m e .   I f   n o n e   i s   f o u n d ,s wxw l     ��yz��  y "  returns "com.apple.Safari".   z �{{ 8   r e t u r n s   " c o m . a p p l e . S a f a r i " .x |}| l     ��������  ��  ��  } ~~ l     ������  �   @return text   � ���    @ r e t u r n   t e x t ��� l     ��������  ��  ��  � ��� i     ��� I      ��������  0 defaultbrowser defaultBrowser��  ��  � k     V�� ��� O    Q��� O    P��� X    O����� Q   + J����� Z  . A������� =  . 3��� n   . 1��� o   / 1���� (0 lshandlerurlscheme LSHandlerURLScheme� o   . /���� 	0 _item  � m   1 2�� ���  h t t p� L   6 =�� n   6 <��� o   7 ;���� $0 lshandlerroleall LSHandlerRoleAll� o   6 7���� 	0 _item  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 	0 _item  � l   ������ n    ��� o    �� 0 
lshandlers 
LSHandlers� l   ��~�}� c    ��� n    ��� 1    �|
�| 
valL� n    ��� 1    �{
�{ 
pcnt�  g    � m    �z
�z 
reco�~  �}  ��  ��  � 4    �y�
�y 
plif� l   ��x�w� b    ��� l   ��v�u� I   �t��
�t .earsffdralis        afdr� m    �s
�s afdrpref� �r��q
�r 
rtyp� m    	�p
�p 
utxt�q  �v  �u  � m    �� ��� < c o m . a p p l e . L a u n c h S e r v i c e s . p l i s t�x  �w  � m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��o� L   R V�� m   R U�� ���   c o m . a p p l e . S a f a r i�o  � ��� l     �n�m�l�n  �m  �l  � ��� l     �k���k  � + % Get the POSIX path to an application   � ��� J   G e t   t h e   P O S I X   p a t h   t o   a n   a p p l i c a t i o n� ��� l     �j���j  � R L Attempts to use "find_app" if it can find the binary in the PATH, otherwise   � ��� �   A t t e m p t s   t o   u s e   " f i n d _ a p p "   i f   i t   c a n   f i n d   t h e   b i n a r y   i n   t h e   P A T H ,   o t h e r w i s e� ��� l     �i���i  � !  it uses basic applescript.   � ��� 6   i t   u s e s   b a s i c   a p p l e s c r i p t .� ��� l     �h�g�f�h  �g  �f  � ��� l     �e���e  � O I @param text _name The application name, "AppleScript Editor" for example   � ��� �   @ p a r a m   t e x t   _ n a m e   T h e   a p p l i c a t i o n   n a m e ,   " A p p l e S c r i p t   E d i t o r "   f o r   e x a m p l e� ��� l     �d���d  �   @return text   � ���    @ r e t u r n   t e x t� ��� l     �c�b�a�c  �b  �a  � ��� i    ��� I      �`��_�` 0 pathto pathTo� ��^� o      �]�] 	0 _name  �^  �_  � k     /�� ��� r     ��� m     �\
�\ 
msng� o      �[�[ 	0 _path  � ��� Q    ,���� r    ��� n   ��� I    �Z��Y�Z 0 
bashscript 
bashScript� ��� b    ��� m    	�� ���  f i n d _ a p p  � n   	 ��� 1    �X
�X 
strq� l  	 ��W�V� b   	 ��� o   	 
�U�U 	0 _name  � m   
 �� ���  . a p p�W  �V  � ��T� m    �S
�S boovfals�T  �Y  �  f    � o      �R�R 	0 _path  � R      �Q�P�O
�Q .ascrerr ****      � ****�P  �O  � r    ,��� c    *��� n    (��� 1   & (�N
�N 
psxp� l   & �M�L  I   &�K�J
�K .earsffdralis        afdr 4    "�I
�I 
capp o     !�H�H 	0 _name  �J  �M  �L  � m   ( )�G
�G 
ctxt� o      �F�F 	0 _path  � �E L   - / o   - .�D�D 	0 _path  �E  �  l     �C�B�A�C  �B  �A    l     �@	
�@  	 = 7 Get the POSIX path to an application by application ID   
 � n   G e t   t h e   P O S I X   p a t h   t o   a n   a p p l i c a t i o n   b y   a p p l i c a t i o n   I D  l     �?�?         �     l     �>�>   "  @see pathTo of _Application    � 8   @ s e e   p a t h T o   o f   _ A p p l i c a t i o n  l     �=�=   _ Y @param text _id The application bundle identifier, "com.apple.ScriptEditor2" for example    � �   @ p a r a m   t e x t   _ i d   T h e   a p p l i c a t i o n   b u n d l e   i d e n t i f i e r ,   " c o m . a p p l e . S c r i p t E d i t o r 2 "   f o r   e x a m p l e  l     �<�<     @return text    �    @ r e t u r n   t e x t  !  l     �;�:�9�;  �:  �9  ! "#" i    $%$ I      �8&�7�8 0 pathtoid pathToID& '�6' o      �5�5 0 _id  �6  �7  % k     .(( )*) r     +,+ m     �4
�4 
msng, o      �3�3 	0 _path  * -.- Q    +/01/ r    232 n   454 I    �26�1�2 0 
bashscript 
bashScript6 787 b    9:9 m    	;; �<<  f i n d _ a p p  : n   	 =>= 1   
 �0
�0 
strq> o   	 
�/�/ 0 _id  8 ?�.? m    �-
�- boovfals�.  �1  5  f    3 o      �,�, 	0 _path  0 R      �+�*�)
�+ .ascrerr ****      � ****�*  �)  1 r    +@A@ c    )BCB n    'DED 1   % '�(
�( 
psxpE l   %F�'�&F I   %�%G�$
�% .earsffdralis        afdrG 5    !�#H�"
�# 
cappH o    �!�! 0 _id  
�" kfrmID  �$  �'  �&  C m   ' (� 
�  
ctxtA o      �� 	0 _path  . I�I L   , .JJ o   , -�� 	0 _path  �  # KLK l     ����  �  �  L MNM l     �OP�  O ' ! Return the frontmost application   P �QQ B   R e t u r n   t h e   f r o n t m o s t   a p p l i c a t i o nN RSR l     ����  �  �  S TUT l     �VW�  V   @return application   W �XX (   @ r e t u r n   a p p l i c a t i o nU YZY l     ����  �  �  Z [\[ i    ]^] I      ���� 0 
_frontmost  �  �  ^ L     __ 4     �`
� 
capp` l   	a��a I   	�bc
� .earsffdralis        afdrb m    �

�
 appfegfpc �	d�
�	 
rtypd m    �
� 
ctxt�  �  �  \ efe l     ����  �  �  f ghg l     �ij�  i / ) Return the frontmost application process   j �kk R   R e t u r n   t h e   f r o n t m o s t   a p p l i c a t i o n   p r o c e s sh lml l     ��� �  �  �   m non l     ��pq��  p "  @return application process   q �rr 8   @ r e t u r n   a p p l i c a t i o n   p r o c e s so sts l     ��������  ��  ��  t uvu i    wxw I      �������� $0 frontmostprocess frontmostProcess��  ��  x O    yzy L    {{ 6   |}| 4   ��~
�� 
pcap~ m    ���� } =  	 � 1   
 ��
�� 
pisf� m    ��
�� boovtruez m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  v ��� l     ��������  ��  ��  � ��� l     ������  � e _ Front most document of the front most window (assuming there is one) of an Application Process   � ��� �   F r o n t   m o s t   d o c u m e n t   o f   t h e   f r o n t   m o s t   w i n d o w   ( a s s u m i n g   t h e r e   i s   o n e )   o f   a n   A p p l i c a t i o n   P r o c e s s� ��� l     ��������  ��  ��  � ��� l     ������  � , & @param |application process| _process   � ��� L   @ p a r a m   | a p p l i c a t i o n   p r o c e s s |   _ p r o c e s s� ��� l     ������  � u o @return alias|(missing value) Alias of the file or missing value if the frontmost file couldn't be determined.   � ��� �   @ r e t u r n   a l i a s | ( m i s s i n g   v a l u e )   A l i a s   o f   t h e   f i l e   o r   m i s s i n g   v a l u e   i f   t h e   f r o n t m o s t   f i l e   c o u l d n ' t   b e   d e t e r m i n e d .� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 00 frontmostfileofprocess frontmostFileOfProcess� ���� o      ���� 0 _process  ��  ��  � k     b�� ��� h     ����� 0 ff  � k      �� ��� j     ����� 0 p P� o     ���� 0 _process  � ��� l     ������  � S M This method for finding frontmostFileOf() attempts to include an application   � ��� �   T h i s   m e t h o d   f o r   f i n d i n g   f r o n t m o s t F i l e O f ( )   a t t e m p t s   t o   i n c l u d e   a n   a p p l i c a t i o n� ��� l     ������  � R L library for _app, and run the resulting library's `frontmostFile()` handler   � ��� �   l i b r a r y   f o r   _ a p p ,   a n d   r u n   t h e   r e s u l t i n g   l i b r a r y ' s   ` f r o n t m o s t F i l e ( ) `   h a n d l e r� ��� i    
��� I      �������� 0 ff1  ��  ��  � k     N�� ��� Q     8���� r    ��� n   ��� I    ������� 0 include  � ���� b    ��� m    �� ���  A p p l i c a t i o n /� l   ������ n    ��� 1   
 ��
�� 
bnid� o    
���� 0 p P��  ��  ��  ��  �  f    � o      ���� 0 _applib  � R      ������
�� .ascrerr ****      � ****��  ��  � Q    8���� r    .��� n   ,��� I    ,������� 0 include  � ���� b    (��� m     �� ���  A p p l i c a t i o n /� l    '������ n     '��� 1   % '��
�� 
pnam� o     %���� 0 p P��  ��  ��  ��  �  f    � o      ���� 0 _applib  � R      ������
�� .ascrerr ****      � ****��  ��  � L   6 8�� m   6 7��
�� boovfals� ��� Q   9 K����� L   < B�� n   < A��� I   = A�������� 0 frontmostfile frontmostFile��  ��  � o   < =���� 0 _applib  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� L   L N�� m   L M��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 ff2  ��  ��  � k     *�� ��� Q     '����� O   ��� L    �� c    ��� l   ������ c    ��� l   ������ n    ��� 1    ��
�� 
ppth� 4   ���
�� 
docu� m    ���� ��  ��  � m    ��
�� 
psxf��  ��  � m    ��
�� 
alis� 5    �����
�� 
capp� l   ������ n    ��� 1   
 ��
�� 
bnid� o    
���� 0 p P��  ��  
�� kfrmID  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� L   ( *�� m   ( )��
�� boovfals��  � ��� l     ��������  ��  ��  � ���� i       I      �������� 0 ff3  ��  ��   k     q  O    n Q    m�� X    d	��
	 k    _  r    $ n    " 1     "��
�� 
pALL n      2     ��
�� 
attr o    ���� 0 w W o      ���� 0 attribs   �� X   % _�� Z  5 Z���� F   5 D =  5 : l  5 8���� n   5 8 1   6 8��
�� 
pnam o   5 6���� 0 i I��  ��   m   8 9   �!!  A X D o c u m e n t >  = B"#" l  = @$����$ n   = @%&% 1   > @��
�� 
valL& o   = >���� 0 i I��  ��  # m   @ A��
�� 
msng L   G V'' c   G U()( l  G S*����* c   G S+,+ l  G Q-����- n   G Q./. I   J Q��0���� 0 	urldecode 	URLDecode0 1��1 n   J M232 1   K M�
� 
valL3 o   J K�~�~ 0 i I��  ��  / n  G J454 o   H J�}�} 0 _text _Text5  f   G H��  ��  , m   Q R�|
�| 
psxf��  ��  ) m   S T�{
�{ 
alis��  ��  �� 0 i I o   ( )�z�z 0 attribs  ��  �� 0 w W
 n   
 676 2    �y
�y 
cwin7 o   
 �x�x 0 p P R      �w�v�u
�w .ascrerr ****      � ****�v  �u  ��   m     88�                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   9�t9 L   o q:: m   o p�s
�s boovfals�t  ��  � ;<; l   �r�q�p�r  �q  �p  < =>= l   �o?@�o  ? G A Run through the various detection methods until we score a match   @ �AA �   R u n   t h r o u g h   t h e   v a r i o u s   d e t e c t i o n   m e t h o d s   u n t i l   w e   s c o r e   a   m a t c h> BCB r    DED n    FGF I   	 �n�m�l�n 0 ff1  �m  �l  G o    	�k�k 0 ff  E o      �j�j 0 _res  C HIH Z   +JK�i�hJ F    LML =   NON n    PQP m    �g
�g 
pclsQ o    �f�f 0 _res  O m    �e
�e 
boolM =   RSR o    �d�d 0 _res  S m    �c
�c boovfalsK r     'TUT n     %VWV I   ! %�b�a�`�b 0 ff2  �a  �`  W o     !�_�_ 0 ff  U o      �^�^ 0 _res  �i  �h  I XYX Z  , GZ[�]�\Z F   , 9\]\ =  , 1^_^ n   , /`a` m   - /�[
�[ 
pclsa o   , -�Z�Z 0 _res  _ m   / 0�Y
�Y 
bool] =  4 7bcb o   4 5�X�X 0 _res  c m   5 6�W
�W boovfals[ r   < Cded n   < Afgf I   = A�V�U�T�V 0 ff3  �U  �T  g o   < =�S�S 0 ff  e o      �R�R 0 _res  �]  �\  Y hih l  H H�Q�P�O�Q  �P  �O  i jkj l  H H�Nlm�N  l ) # Couldn't determine front most file   m �nn F   C o u l d n ' t   d e t e r m i n e   f r o n t   m o s t   f i l ek opo Z  H _qr�M�Lq F   H Usts =  H Muvu n   H Kwxw m   I K�K
�K 
pclsx o   H I�J�J 0 _res  v m   K L�I
�I 
boolt =  P Syzy o   P Q�H�H 0 _res  z m   Q R�G
�G boovfalsr r   X [{|{ m   X Y�F
�F 
msng| o      �E�E 0 _res  �M  �L  p }~} l  ` `�D�C�B�D  �C  �B  ~ �A L   ` b�� o   ` a�@�@ 0 _res  �A  � ��� l     �?�>�=�?  �>  �=  � ��� l     �<���<  � V P Calls frontmostFileOfProcess() using the current front most Application Process   � ��� �   C a l l s   f r o n t m o s t F i l e O f P r o c e s s ( )   u s i n g   t h e   c u r r e n t   f r o n t   m o s t   A p p l i c a t i o n   P r o c e s s� ��� l     �;�:�9�;  �:  �9  � ��� l     �8���8  � $  @return alias|(missing value)   � ��� <   @ r e t u r n   a l i a s | ( m i s s i n g   v a l u e )� ��� l     �7�6�5�7  �6  �5  � ��� i    ��� I      �4�3�2�4 0 frontmostfile frontmostFile�3  �2  � k     �� ��� O    ��� r    ��� 6   ��� 4   �1�
�1 
pcap� m    �0�0 � =  	 ��� 1   
 �/
�/ 
pisf� m    �.
�. boovtrue� o      �-�- 0 p P� m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��,� L    �� n   ��� I    �+��*�+ 00 frontmostfileofprocess frontmostFileOfProcess� ��)� o    �(�( 0 p P�)  �*  �  f    �,  � ��� l     �'�&�%�'  �&  �%  � ��� l     �$���$  � s m Directory of the front most file of the front most Application Process (if it isn't not already a directory)   � ��� �   D i r e c t o r y   o f   t h e   f r o n t   m o s t   f i l e   o f   t h e   f r o n t   m o s t   A p p l i c a t i o n   P r o c e s s   ( i f   i t   i s n ' t   n o t   a l r e a d y   a   d i r e c t o r y )� ��� l     �#�"�!�#  �"  �!  � ��� l     � ���   � $  @return alias|(missing value)   � ��� <   @ r e t u r n   a l i a s | ( m i s s i n g   v a l u e )� ��� l     ����  �  �  � ��� i    ��� I      ���� (0 frontmostdirectory frontmostDirectory�  �  � k     7�� ��� r     ��� n    ��� I    ���� 0 frontmostfile frontmostFile�  �  �  f     � o      �� 0 f  � ��� Z    4����� >   ��� o    	�� 0 f  � m   	 
�
� 
msng� Z    0����� n    ��� 1    �
� 
asdr� l   ���� I   ���
� .sysonfo4asfe        file� o    �� 0 f  �  �  �  � L    �� c    ��� o    �
�
 0 f  � m    �	
�	 
alis�  � L     0�� c     /��� l    -���� c     -��� l    +���� I    +���
� .sysoexecTEXT���     TEXT� b     '��� m     !�� ���  d i r n a m e  � l  ! &���� n   ! &��� 1   $ &� 
�  
strq� n   ! $��� 1   " $��
�� 
psxp� o   ! "���� 0 f  �  �  �  �  �  � m   + ,��
�� 
psxf�  �  � m   - .��
�� 
alis�  �  � ���� L   5 7�� m   5 6��
�� 
msng��  � ���� l     ��������  ��  ��  ��  \ ��� l     ��������  ��  ��  � ��� h   9 B����� 0 _file _File� k      �� ��� l     ��������  ��  ��  � ��� l     ������  �   lib -> _File   � ���    l i b   - >   _ F i l e� ��� l     ������  �   File system functions   � ��� ,   F i l e   s y s t e m   f u n c t i o n s� ��� l     ��������  ��  ��  � ��� l     ������  � 0 * Return the filename portion of a pathname   � ��� T   R e t u r n   t h e   f i l e n a m e   p o r t i o n   o f   a   p a t h n a m e�    l     ��������  ��  ��    l     ����     @return text    �    @ r e t u r n   t e x t  l     ��������  ��  ��   	
	 i      I      ������ 0 basename   �� o      ���� 	0 _path  ��  ��   k       Z    ���� =     n      m    ��
�� 
pcls o     ���� 	0 _path   m    ��
�� 
alis r     l   ���� n     1   	 ��
�� 
psxp o    	���� 	0 _path  ��  ��   o      ���� 	0 _path  ��  ��   �� L     I   ����
�� .sysoexecTEXT���     TEXT b     !  m    "" �##  b a s e n a m e  ! l   $����$ n    %&% 1    ��
�� 
strq& o    ���� 	0 _path  ��  ��  ��  ��  
 '(' l     ��������  ��  ��  ( )*) l     ��+,��  + 1 + Return the directory portion of a pathname   , �-- V   R e t u r n   t h e   d i r e c t o r y   p o r t i o n   o f   a   p a t h n a m e* ./. l     ��������  ��  ��  / 010 l     ��23��  2   @return text   3 �44    @ r e t u r n   t e x t1 565 l     ��������  ��  ��  6 787 i    9:9 I      ��;���� 0 dirname  ; <��< o      ���� 	0 _path  ��  ��  : k     == >?> Z    @A����@ =    BCB n     DED m    ��
�� 
pclsE o     ���� 	0 _path  C m    ��
�� 
alisA r    FGF l   H����H n    IJI 1   	 ��
�� 
psxpJ o    	���� 	0 _path  ��  ��  G o      ���� 	0 _path  ��  ��  ? K��K L    LL I   ��M��
�� .sysoexecTEXT���     TEXTM b    NON m    PP �QQ  d i r n a m e  O l   R����R n    STS 1    ��
�� 
strqT o    ���� 	0 _path  ��  ��  ��  ��  8 UVU l     ��������  ��  ��  V WXW l     ��YZ��  Y 8 2 Same as basename() but also removes the extension   Z �[[ d   S a m e   a s   b a s e n a m e ( )   b u t   a l s o   r e m o v e s   t h e   e x t e n s i o nX \]\ l     ��������  ��  ��  ] ^_^ l     ��`a��  `   @return text   a �bb    @ r e t u r n   t e x t_ cdc l     ��������  ��  ��  d efe i    ghg I      ��i���� 0 filename  i j��j o      ���� 	0 _path  ��  ��  h k     kk lml Z    no����n =    pqp n     rsr m    ��
�� 
pclss o     ���� 	0 _path  q m    ��
�� 
aliso r    tut l   v����v n    wxw 1   	 ��
�� 
psxpx o    	���� 	0 _path  ��  ��  u o      ���� 	0 _path  ��  ��  m y��y L    zz I   ��{��
�� .sysoexecTEXT���     TEXT{ b    |}| b    ~~ m    �� ���  f = ` b a s e n a m e   l   ������ n    ��� 1    ��
�� 
strq� o    ���� 	0 _path  ��  ��  } m    �� ��� " `   & &   e c h o   $ { f % . * }��  ��  f ��� l     ��������  ��  ��  � ��� l     ������  � , & Find an executable in the system PATH   � ��� L   F i n d   a n   e x e c u t a b l e   i n   t h e   s y s t e m   P A T H� ��� l     ������  �      � ���   � ��� l     ������  � 0 * @param text _name The program to look for   � ��� T   @ p a r a m   t e x t   _ n a m e   T h e   p r o g r a m   t o   l o o k   f o r� ��� l     ������  � = 7 @return text|missing value The location of the program   � ��� n   @ r e t u r n   t e x t | m i s s i n g   v a l u e   T h e   l o c a t i o n   o f   t h e   p r o g r a m� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 findbin findBin� ���� o      �� 	0 _name  ��  ��  � k     /�� ��� r     ��� m     �~
�~ 
msng� o      �}�} 0 _bin  � ��� Q    ���|� r    ��� n   ��� I    �{��z�{ 0 
bashscript 
bashScript� ��� b    ��� b    ��� m    	�� ���  w h i c h  � l  	 ��y�x� n   	 ��� 1   
 �w
�w 
strq� o   	 
�v�v 	0 _name  �y  �x  � m    �� ���    2 > / d e v / n u l l� ��u� m    �t
�t boovfals�u  �z  �  f    � o      �s�s 0 _bin  � R      �r�q�p
�r .ascrerr ****      � ****�q  �p  �|  � ��� Z    ,���o�n� =    #��� o     !�m�m 0 _bin  � m   ! "�� ���  � L   & (�� m   & '�l
�l 
msng�o  �n  � ��k� L   - /�� o   - .�j�j 0 _bin  �k  � ��� l     �i�h�g�i  �h  �g  � ��� l     �f���f  � U O Filters a list of files to only contain files with one of the given extensions   � ��� �   F i l t e r s   a   l i s t   o f   f i l e s   t o   o n l y   c o n t a i n   f i l e s   w i t h   o n e   o f   t h e   g i v e n   e x t e n s i o n s� ��� l     �e�d�c�e  �d  �c  � ��� l     �b���b  � 4 . @param alias[] _f The list of files to filter   � ��� \   @ p a r a m   a l i a s [ ]   _ f   T h e   l i s t   o f   f i l e s   t o   f i l t e r� ��� l     �a���a  � H B @param text|text[] _extensions A list of file extensions to match   � ��� �   @ p a r a m   t e x t | t e x t [ ]   _ e x t e n s i o n s   A   l i s t   o f   f i l e   e x t e n s i o n s   t o   m a t c h� ��� l     �`���`  �   @return list   � ���    @ r e t u r n   l i s t� ��� l     �_�^�]�_  �^  �]  � ��� i    ��� I      �\��[�\ 0 onlyext onlyExt� ��� o      �Z�Z 0 _f  � ��Y� o      �X�X 0 _extensions  �Y  �[  � k     <�� ��� r     ��� c     ��� o     �W�W 0 _extensions  � m    �V
�V 
list� o      �U�U 0 _extensions  � ��T� O    <��� k   
 ;�� ��� r   
 ��� J   
 �S�S  � o      �R�R 0 	_filtered  � ��� X    6��Q � Z   1�P�O E   $ o     �N�N 0 _extensions   n     # 1   ! #�M
�M 
nmxt o     !�L�L 0 f   s   ' - n   ' *	
	 1   ( *�K
�K 
pcnt
 o   ' (�J�J 0 f   l     �I�H n        ;   + , o   * +�G�G 0 	_filtered  �I  �H  �P  �O  �Q 0 f    o    �F�F 0 _f  � �E L   7 ; c   7 : o   7 8�D�D 0 	_filtered   m   8 9�C
�C 
list�E  � m    �                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �T  �  l     �B�A�@�B  �A  �@    l     �?�?   B < Turns a list of files into a text of quoted shell arguments    � x   T u r n s   a   l i s t   o f   f i l e s   i n t o   a   t e x t   o f   q u o t e d   s h e l l   a r g u m e n t s  l     �>�=�<�>  �=  �<    l     �;�;   4 . @param alias[] _f The list of files to filter    �   \   @ p a r a m   a l i a s [ ]   _ f   T h e   l i s t   o f   f i l e s   t o   f i l t e r !"! l     �:#$�:  #   @return text   $ �%%    @ r e t u r n   t e x t" &'& l     �9�8�7�9  �8  �7  ' ()( i    *+* I      �6,�5�6 0 
toshellarg 
toShellArg, -�4- o      �3�3 0 _f  �4  �5  + O     ;./. k    :00 121 r    343 m    55 �66  4 o      �2�2 
0 _paths  2 787 X    *9�1:9 r    %;<; b    #=>= b    ?@? o    �0�0 
0 _paths  @ m    AA �BB   > n    "CDC 1     "�/
�/ 
strqD n     EFE 1     �.
�. 
psxpF l   G�-�,G c    HIH o    �+�+ 0 f  I m    �*
�* 
ctxt�-  �,  < o      �)�) 
0 _paths  �1 0 f  : o    �(�( 0 _f  8 JKJ Z  + 7LM�'�&L =  + .NON o   + ,�%�% 
0 _paths  O m   , -PP �QQ  M L   1 3RR m   1 2�$
�$ boovfals�'  �&  K S�#S L   8 :TT o   8 9�"�" 
0 _paths  �#  / m     UU�                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ) VWV l     �!� ��!  �   �  W XYX l     �Z[�  Z M G Same as filename() but uses the current script/application as the path   [ �\\ �   S a m e   a s   f i l e n a m e ( )   b u t   u s e s   t h e   c u r r e n t   s c r i p t / a p p l i c a t i o n   a s   t h e   p a t hY ]^] l     ����  �  �  ^ _`_ l     �ab�  a   @return text   b �cc    @ r e t u r n   t e x t` ded l     ����  �  �  e fgf i    hih I      ���� 0 
scriptname 
scriptName�  �  i L     jj n    
klk I    
�m�� 0 filename  m n�n I   �o�
� .earsffdralis        afdro  f    �  �  �  l  f     g pqp l     ����  �  �  q rsr l     �tu�  t > 8 Makes sure file doesn't already exist in specified path   u �vv p   M a k e s   s u r e   f i l e   d o e s n ' t   a l r e a d y   e x i s t   i n   s p e c i f i e d   p a t hs wxw l     �
yz�
  y B < If it does this will append a number to the end of the file   z �{{ x   I f   i t   d o e s   t h i s   w i l l   a p p e n d   a   n u m b e r   t o   t h e   e n d   o f   t h e   f i l ex |}| l     �	���	  �  �  } ~~ l     ����  � ` Z @param config record {path: alias|text, prefix: text (optional), suffix: text (optional)}   � ��� �   @ p a r a m   c o n f i g   r e c o r d   { p a t h :   a l i a s | t e x t ,   p r e f i x :   t e x t   ( o p t i o n a l ) ,   s u f f i x :   t e x t   ( o p t i o n a l ) } ��� l     ����  � ? 9 @return text A unique file name (not including the path)   � ��� r   @ r e t u r n   t e x t   A   u n i q u e   f i l e   n a m e   ( n o t   i n c l u d i n g   t h e   p a t h )� ��� l     ����  �  �  � ��� i    ��� I      ��� � 0 
uniquefile 
uniqueFile� ���� o      ���� 
0 config  ��  �   � k     Q�� ��� r     
��� b     ��� o     ���� 
0 config  � K    �� ������ 
0 prefix  � m    �� ���  u n t i t l e d� ������� 
0 suffix  � m    �� ���  ��  � o      ���� 
0 config  � ��� r    ��� m    ���� � o      ���� 0 i I� ���� O    Q��� k    P�� ��� r    ��� n    ��� 1    ��
�� 
psxp� l   ������ c    ��� l   ������ n    ��� 1    ��
�� 
FTPc� o    ���� 
0 config  ��  ��  � m    ��
�� 
ctxt��  ��  � o      ���� 0 _parent  � ��� r    &��� b    $��� l    ������ n     ��� o     ���� 
0 prefix  � o    ���� 
0 config  ��  ��  � l    #������ n     #��� o   ! #���� 
0 suffix  � o     !���� 
0 config  ��  ��  � o      ���� 	0 _name  � ��� V   ' M��� k   5 H�� ��� r   5 B��� b   5 @��� b   5 <��� b   5 :��� l  5 8������ n   5 8��� o   6 8���� 
0 prefix  � o   5 6���� 
0 config  ��  ��  � m   8 9�� ���   � o   : ;���� 0 i I� l  < ?������ n   < ?��� o   = ?���� 
0 suffix  � o   < =���� 
0 config  ��  ��  � o      ���� 	0 _name  � ���� r   C H��� [   C F��� o   C D���� 0 i I� m   D E���� � o      ���� 0 i I��  � I  + 4�����
�� .coredoexbool        obj � l  + 0������ c   + 0��� b   + .��� o   + ,���� 0 _parent  � o   , -���� 	0 _name  � m   . /��
�� 
psxf��  ��  ��  � ���� L   N P�� o   N O���� 	0 _name  ��  � m    ���                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  � ���� l     ��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� h   C N����� 0 _list _List� k      �� ��� l     ��������  ��  ��  � ��� l     ������  �   lib -> _List   � ���    l i b   - >   _ L i s t� ��� l     ������  �   List functions   � ���    L i s t   f u n c t i o n s� ��� l     ��������  ��  ��  � ��� l     ������  � , & Join every item of a list into a text   � ��� L   J o i n   e v e r y   i t e m   o f   a   l i s t   i n t o   a   t e x t� ��� l     ��������  ��  ��  �    l     ����   &   @param text _l The list to join    � @   @ p a r a m   t e x t   _ l   T h e   l i s t   t o   j o i n  l     ����   : 4 @param text _delim Character to join the items with    �		 h   @ p a r a m   t e x t   _ d e l i m   C h a r a c t e r   t o   j o i n   t h e   i t e m s   w i t h 

 l     ����     @return list    �    @ r e t u r n   l i s t  l     ��������  ��  ��    i      I      ������ 0 join    o      ���� 0 _l   �� o      ���� 
0 _delim  ��  ��   k     3  r      n     1    ��
�� 
txdl 1     ��
�� 
ascr o      ���� 0 _d    !  Q    *"#$" k   	 %% &'& r   	 ()( l  	 *����* c   	 +,+ o   	 
���� 
0 _delim  , m   
 ��
�� 
ctxt��  ��  ) n     -.- 1    ��
�� 
txdl. 1    ��
�� 
ascr' /��/ r    010 c    232 o    ���� 0 _l  3 m    ��
�� 
ctxt1 o      ���� 0 _result  ��  # R      ��45
�� .ascrerr ****      � ****4 o      ���� 0 err_msg  5 ��6��
�� 
errn6 o      ���� 0 err_num  ��  $ k    *77 898 r    #:;: o    ���� 0 _d  ; n     <=< 1     "��
�� 
txdl= 1     ��
�� 
ascr9 >��> R   $ *��?@
�� .ascrerr ****      � ****? o   ( )���� 0 err_msg  @ ��A��
�� 
errnA o   & '���� 0 err_num  ��  ��  ! BCB r   + 0DED o   + ,���� 0 _d  E n     FGF 1   - /��
�� 
txdlG 1   , -��
�� 
ascrC H��H L   1 3II o   1 2���� 0 _result  ��   JKJ l     ��������  ��  ��  K LML l     ��NO��  N ` Z Returns the index of the first occurrence of _e within _l, or -1 if _l doesn't contain _e   O �PP �   R e t u r n s   t h e   i n d e x   o f   t h e   f i r s t   o c c u r r e n c e   o f   _ e   w i t h i n   _ l ,   o r   - 1   i f   _ l   d o e s n ' t   c o n t a i n   _ eM QRQ l     ��ST��  S      T �UU   R VWV l     ��XY��  X   @param list _list   Y �ZZ $   @ p a r a m   l i s t   _ l i s tW [\[ l     ��]^��  ]   @param mixed _element   ^ �__ ,   @ p a r a m   m i x e d   _ e l e m e n t\ `a` l     ��bc��  b   @return integer   c �dd     @ r e t u r n   i n t e g e ra efe l     ��������  ��  ��  f ghg i    iji I      ��k���� 0 indexof indexOfk lml o      ���� 0 _l  m n�n o      �~�~ 0 _e  �  ��  j k     $oo pqp Y     !r�}st�|r Z   uv�{�zu =    wxw n    yzy 4    �y{
�y 
cobj{ o    �x�x 0 i Iz o    �w�w 0 _l  x o    �v�v 0 _e  v L    || o    �u�u 0 i I�{  �z  �} 0 i Is m    �t�t t n    }~} 1    �s
�s 
leng~ o    �r�r 0 _l  �|  q �q L   " $�� m   " #�p�p���q  h ��� l     �o�n�m�o  �n  �m  � ��� l     �l���l  � $  Sort a list using bubble sort   � ��� <   S o r t   a   l i s t   u s i n g   b u b b l e   s o r t� ��� l     �k�j�i�k  �j  �i  � ��� l     �h���h  �   @param list theList   � ��� (   @ p a r a m   l i s t   t h e L i s t� ��� l     �g���g  �   @return list   � ���    @ r e t u r n   l i s t� ��� l     �f���f  � : 4 @link http://macscripter.net/viewtopic.php?id=24766   � ��� h   @ l i n k   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 2 4 7 6 6� ��� l     �e�d�c�e  �d  �c  � ��� i    ��� I      �b��a�b 0 
bubblesort 
bubbleSort� ��`� o      �_�_ 0 thelist theList�`  �a  � k     �� ��� l     �^���^  � > 8 defining an internal script makes for faster run times!   � ��� p   d e f i n i n g   a n   i n t e r n a l   s c r i p t   m a k e s   f o r   f a s t e r   r u n   t i m e s !� ��� h     �]��] 0 bs  � j     �\��\ 	0 alist  � o     �[�[ 0 thelist theList� ��� r    ��� n    ��� 1    �Z
�Z 
leng� n   ��� o   	 �Y�Y 	0 alist  � o    	�X�X 0 bs  � o      �W�W 0 thecount theCount� ��� Z   ���V�U� A    ��� o    �T�T 0 thecount theCount� m    �S�S � L    �� n   ��� o    �R�R 	0 alist  � o    �Q�Q 0 bs  �V  �U  � ��� Y     y��P���� Y   * t��O���N� Z   6 o���M�L� ?   6 E��� n   6 <��� 4   9 <�K�
�K 
cobj� o   : ;�J�J 0 indexb indexB� n  6 9��� o   7 9�I�I 	0 alist  � o   6 7�H�H 0 bs  � n   < D��� 4   ? D�G�
�G 
cobj� l  @ C��F�E� [   @ C��� o   @ A�D�D 0 indexb indexB� m   A B�C�C �F  �E  � n  < ?��� o   = ?�B�B 	0 alist  � o   < =�A�A 0 bs  � k   H k�� ��� r   H P��� n   H N��� 4   K N�@�
�@ 
cobj� o   L M�?�? 0 indexb indexB� n  H K��� o   I K�>�> 	0 alist  � o   H I�=�= 0 bs  � o      �<�< 0 temp  � ��� r   Q `��� n   Q Y��� 4   T Y�;�
�; 
cobj� l  U X��:�9� [   U X��� o   U V�8�8 0 indexb indexB� m   V W�7�7 �:  �9  � n  Q T��� o   R T�6�6 	0 alist  � o   Q R�5�5 0 bs  � n      ��� 4   \ _�4�
�4 
cobj� o   ] ^�3�3 0 indexb indexB� n  Y \��� o   Z \�2�2 	0 alist  � o   Y Z�1�1 0 bs  � ��0� r   a k��� o   a b�/�/ 0 temp  � n      ��� 4   e j�.�
�. 
cobj� l  f i��-�,� [   f i��� o   f g�+�+ 0 indexb indexB� m   g h�*�* �-  �,  � n  b e��� o   c e�)�) 	0 alist  � o   b c�(�( 0 bs  �0  �M  �L  �O 0 indexb indexB� m   - .�'�' � \   . 1��� o   . /�&�& 0 indexa indexA� m   / 0�%�% �N  �P 0 indexa indexA� o   # $�$�$ 0 thecount theCount� m   $ %�#�# � m   % &�"�"��� ��!� L   z �� n  z ~   o   { }� �  	0 alist   o   z {�� 0 bs  �!  �  l     ����  �  �    l     ��     Sort a list    �    S o r t   a   l i s t 	
	 l     ����  �  �  
  l     ��     @param list theList    � (   @ p a r a m   l i s t   t h e L i s t  l     ��     @return list    �    @ r e t u r n   l i s t  l     ��   : 4 @link http://macscripter.net/viewtopic.php?id=24766    � h   @ l i n k   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 2 4 7 6 6  l     ����  �  �    i     I      � �� 0 	quicksort 	quickSort  !�! o      �� 0 thelist theList�  �   k     '"" #$# l     �%&�  % - 'public routine, called from your script   & �'' N p u b l i c   r o u t i n e ,   c a l l e d   f r o m   y o u r   s c r i p t$ ()( h     �*� 0 bs  * k      ++ ,-, j     �.� 	0 alist  . o     �
�
 0 thelist theList- /0/ l     �	���	  �  �  0 121 i    
343 I      �5�� 0 qsort Qsort5 676 o      �� 0 	leftindex 	leftIndex7 8�8 o      �� 0 
rightindex 
rightIndex�  �  4 k     @99 :;: l     �<=�  < + %private routine called by quickSort.    = �>> J p r i v a t e   r o u t i n e   c a l l e d   b y   q u i c k S o r t .  ; ?@? l     � AB�   A # do not call from your script!   B �CC : d o   n o t   c a l l   f r o m   y o u r   s c r i p t !@ DED Z     >FG����F ?     HIH o     ���� 0 
rightindex 
rightIndexI o    ���� 0 	leftindex 	leftIndexG k    :JJ KLK r    MNM [    OPO l   Q����Q _    RSR l   	T����T \    	UVU o    ���� 0 
rightindex 
rightIndexV o    ���� 0 	leftindex 	leftIndex��  ��  S m   	 
���� ��  ��  P o    ���� 0 	leftindex 	leftIndexN o      ���� 	0 pivot  L WXW r    YZY I    ��[���� 0 
qpartition 
Qpartition[ \]\ o    ���� 0 	leftindex 	leftIndex] ^_^ o    ���� 0 
rightindex 
rightIndex_ `��` o    ���� 	0 pivot  ��  ��  Z o      ���� 0 newpivot newPivotX aba r    *cdc I    $��e���� 0 qsort Qsorte fgf o    ���� 0 	leftindex 	leftIndexg h��h \     iji o    ���� 0 newpivot newPivotj m    ���� ��  ��  d o      ���� 0 thelist theListb k��k r   + :lml I   + 4��n���� 0 qsort Qsortn opo [   , /qrq o   , -���� 0 newpivot newPivotr m   - .���� p s��s o   / 0���� 0 
rightindex 
rightIndex��  ��  m o      ���� 0 thelist theList��  ��  ��  E t��t l  ? ?��������  ��  ��  ��  2 uvu l     ��������  ��  ��  v wxw i    yzy I      ��{���� 0 
qpartition 
Qpartition{ |}| o      ���� 0 	leftindex 	leftIndex} ~~ o      ���� 0 
rightindex 
rightIndex ���� o      ���� 	0 pivot  ��  ��  z k     ��� ��� l     ������  � + %private routine called by quickSort.    � ��� J p r i v a t e   r o u t i n e   c a l l e d   b y   q u i c k S o r t .  � ��� l     ������  � # do not call from your script!   � ��� : d o   n o t   c a l l   f r o m   y o u r   s c r i p t !� ��� r     ��� n     
��� 4    
���
�� 
cobj� o    	���� 	0 pivot  � n    ��� o    ���� 	0 alist  � o     ���� 0 bs  � o      ���� 0 
pivotvalue 
pivotValue� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 	0 pivot  � n   ��� o    ���� 	0 alist  � o    ���� 0 bs  � o      ���� 0 temp  � ��� r    /��� n    $��� 4   ! $���
�� 
cobj� o   " #���� 0 
rightindex 
rightIndex� n   !��� o    !���� 	0 alist  � o    ���� 0 bs  � n      ��� 4   + .���
�� 
cobj� o   , -���� 	0 pivot  � n  $ +��� o   ) +���� 	0 alist  � o   $ )���� 0 bs  � ��� r   0 <��� o   0 1���� 0 temp  � n      ��� 4   8 ;���
�� 
cobj� o   9 :���� 0 
rightindex 
rightIndex� n  1 8��� o   6 8���� 	0 alist  � o   1 6���� 0 bs  � ��� r   = @��� o   = >���� 0 	leftindex 	leftIndex� o      ���� 0 	tempindex 	tempIndex� ��� Y   A ��������� Z   M �������� B   M Y��� n   M W��� 4   T W���
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
cobj� o   � ����� 0 	tempindex 	tempIndex� n  � �	 		  o   � ����� 	0 alist  	 o   � ����� 0 bs  � n      			 4   � ���	
�� 
cobj	 o   � ����� 0 
rightindex 
rightIndex	 n  � �			 o   � ����� 	0 alist  	 o   � ����� 0 bs  � 			 r   � �			
		 o   � ����� 0 temp  	
 n      			 4   � ���	
�� 
cobj	 o   � ����� 0 	tempindex 	tempIndex	 n  � �			 o   � ����� 	0 alist  	 o   � ��� 0 bs  	 			 l  � ��~�}�|�~  �}  �|  	 	�{	 L   � �		 o   � ��z�z 0 	tempindex 	tempIndex�{  x 	�y	 l     �x�w�v�x  �w  �v  �y  ) 			 l   �u�t�s�u  �t  �s  	 			 Z   !		�r�q	 ?    			 n    			 1    �p
�p 
leng	 n   		 	 o   	 �o�o 	0 alist  	  o    	�n�n 0 bs  	 m    �m�m 	 n   	!	"	! I    �l	#�k�l 0 qsort Qsort	# 	$	%	$ m    �j�j 	% 	&�i	& n    	'	(	' 1    �h
�h 
leng	( n   	)	*	) o    �g�g 	0 alist  	* o    �f�f 0 bs  �i  �k  	" o    �e�e 0 bs  �r  �q  	 	+�d	+ L   " '	,	, n  " &	-	.	- o   # %�c�c 	0 alist  	. o   " #�b�b 0 bs  �d   	/	0	/ l     �a�`�_�a  �`  �_  	0 	1	2	1 l     �^	3	4�^  	3 &   Return unique values of of list   	4 �	5	5 @   R e t u r n   u n i q u e   v a l u e s   o f   o f   l i s t	2 	6	7	6 l     �]�\�[�]  �\  �[  	7 	8	9	8 l     �Z	:	;�Z  	:   @param list _l   	; �	<	<    @ p a r a m   l i s t   _ l	9 	=	>	= l     �Y�X�W�Y  �X  �W  	> 	?	@	? i    	A	B	A I      �V	C�U�V 
0 unique  	C 	D�T	D o      �S�S 0 _l  �T  �U  	B k     -	E	E 	F	G	F r     	H	I	H J     �R�R  	I o      �Q�Q 0 _result  	G 	J	K	J X    *	L�P	M	L Z   %	N	O�O�N	N H    	P	P E   	Q	R	Q o    �M�M 0 _result  	R o    �L�L 0 i I	O r    !	S	T	S b    	U	V	U o    �K�K 0 _result  	V o    �J�J 0 i I	T o      �I�I 0 _result  �O  �N  �P 0 i I	M o    	�H�H 0 _l  	K 	W�G	W L   + -	X	X o   + ,�F�F 0 _result  �G  	@ 	Y�E	Y l     �D�C�B�D  �C  �B  �E  � 	Z	[	Z l     �A�@�?�A  �@  �?  	[ 	\	]	\ l     �>�=�<�>  �=  �<  	] 	^	_	^ h   O Z�;	`�; 0 _sound _Sound	` k      	a	a 	b	c	b l     �:�9�8�:  �9  �8  	c 	d	e	d l     �7	f	g�7  	f   lib -> _Sound   	g �	h	h    l i b   - >   _ S o u n d	e 	i	j	i l     �6	k	l�6  	k   Play sounds   	l �	m	m    P l a y   s o u n d s	j 	n	o	n l     �5�4�3�5  �4  �3  	o 	p	q	p l     �2	r	s�2  	r   Play a sound   	s �	t	t    P l a y   a   s o u n d	q 	u	v	u l     �1�0�/�1  �0  �/  	v 	w	x	w l     �.	y	z�.  	y   <code>   	z �	{	{    < c o d e >	x 	|	}	| l     �-	~	�-  	~ Y S property lib : load script POSIX path of (path to scripts folder) & "lib/lib.scpt"   	 �	�	� �   p r o p e r t y   l i b   :   l o a d   s c r i p t   P O S I X   p a t h   o f   ( p a t h   t o   s c r i p t s   f o l d e r )   &   " l i b / l i b . s c p t "	} 	�	�	� l     �,	�	��,  	� K E playFile("/System/Library/Sounds/Basso.aiff", true) of _Sound of lib   	� �	�	� �   p l a y F i l e ( " / S y s t e m / L i b r a r y / S o u n d s / B a s s o . a i f f " ,   t r u e )   o f   _ S o u n d   o f   l i b	� 	�	�	� l     �+	�	��+  	�   </code>   	� �	�	�    < / c o d e >	� 	�	�	� l     �*�)�(�*  �)  �(  	� 	�	�	� l     �'	�	��'  	� 5 / @param _path alias|text The sound file to play   	� �	�	� ^   @ p a r a m   _ p a t h   a l i a s | t e x t   T h e   s o u n d   f i l e   t o   p l a y	� 	�	�	� l     �&	�	��&  	� @ : @param _background boolean Don't wait for sound to finish   	� �	�	� t   @ p a r a m   _ b a c k g r o u n d   b o o l e a n   D o n ' t   w a i t   f o r   s o u n d   t o   f i n i s h	� 	�	�	� l     �%	�	��%  	�   @return void   	� �	�	�    @ r e t u r n   v o i d	� 	�	�	� l     �$�#�"�$  �#  �"  	� 	�	�	� i     	�	�	� I      �!	�� �! 0 playfile playFile	� 	�	�	� o      �� 	0 _path  	� 	��	� o      �� 0 _background  �  �   	� k     "	�	� 	�	�	� Z    	�	���	� =    	�	�	� n     	�	�	� m    �
� 
pcls	� o     �� 	0 _path  	� m    �
� 
alis	� r    	�	�	� l   	���	� n    	�	�	� 1   	 �
� 
psxp	� o    	�� 	0 _path  �  �  	� o      �� 	0 _path  �  �  	� 	�	�	� r    	�	�	� b    	�	�	� m    	�	� �	�	�  a f p l a y  	� n    	�	�	� 1    �
� 
strq	� o    �� 	0 _path  	� o      �� 0 _script  	� 	��	� L    "	�	� n   !	�	�	� I    !�	��� 0 
bashscript 
bashScript	� 	�	�	� o    �� 0 _script  	� 	��	� o    �
�
 0 _background  �  �  	�  f    �  	� 	�	�	� l     �	���	  �  �  	� 	�	�	� l     �	�	��  	� %  Alias to playFile(_path, true)   	� �	�	� >   A l i a s   t o   p l a y F i l e ( _ p a t h ,   t r u e )	� 	�	�	� l     ����  �  �  	� 	�	�	� l     �	�	��  	�   @see playFile   	� �	�	�    @ s e e   p l a y F i l e	� 	�	�	� l     �� ���  �   ��  	� 	�	�	� i    	�	�	� I      ��	����� 0 play  	� 	���	� o      ���� 	0 _path  ��  ��  	� L     	�	� n    	�	�	� I    ��	����� 0 playfile playFile	� 	�	�	� o    ���� 	0 _path  	� 	���	� m    ��
�� boovtrue��  ��  	�  f     	� 	���	� l     ��������  ��  ��  ��  	_ 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� h   [ f��	��� 0 _text _Text	� k      	�	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	�   lib -> _Text   	� �	�	�    l i b   - >   _ T e x t	� 	�	�	� l     ��	�	���  	�   Text & text functions   	� �	�	� ,   T e x t   &   t e x t   f u n c t i o n s	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	� 3 - Pad the left side of a text with a character   	� �	�	� Z   P a d   t h e   l e f t   s i d e   o f   a   t e x t   w i t h   a   c h a r a c t e r	� 	�
 	� l     ��������  ��  ��  
  


 l     ��

��  
 0 * @param text _txt The text you want to pad   
 �

 T   @ p a r a m   t e x t   _ t x t   T h e   t e x t   y o u   w a n t   t o   p a d
 


 l     ��

	��  
 > 8 @param text _character The text you want to pad it with   
	 �



 p   @ p a r a m   t e x t   _ c h a r a c t e r   T h e   t e x t   y o u   w a n t   t o   p a d   i t   w i t h
 


 l     ��

��  
 F @ @param integer _length The desired length of the resulting text   
 �

 �   @ p a r a m   i n t e g e r   _ l e n g t h   T h e   d e s i r e d   l e n g t h   o f   t h e   r e s u l t i n g   t e x t
 


 l     ��

��  
   @return text   
 �

    @ r e t u r n   t e x t
 


 l     ��������  ��  ��  
 


 i     


 I      ��
���� 0 padleft padLeft
 


 o      ���� 0 _txt  
 


 o      ���� 0 
_character  
 
 ��
  o      ���� 0 _length  ��  ��  
 k     (
!
! 
"
#
" r     
$
%
$ l    
&����
& c     
'
(
' o     ���� 0 _txt  
( m    ��
�� 
ctxt��  ��  
% o      ���� 0 _txt  
# 
)
*
) r    
+
,
+ l   	
-����
- c    	
.
/
. o    ���� 0 
_character  
/ m    ��
�� 
ctxt��  ��  
, o      ���� 0 
_character  
* 
0
1
0 r    
2
3
2 l   
4����
4 \    
5
6
5 o    ���� 0 _length  
6 l   
7����
7 n    
8
9
8 1    ��
�� 
leng
9 o    ���� 0 _txt  ��  ��  ��  ��  
3 o      ���� 0 i I
1 
:
;
: U    %
<
=
< r     
>
?
> b    
@
A
@ o    ���� 0 
_character  
A o    ���� 0 _txt  
? o      ���� 0 _txt  
= o    ���� 0 i I
; 
B��
B L   & (
C
C o   & '���� 0 _txt  ��  
 
D
E
D l     ��������  ��  ��  
E 
F
G
F l     ��
H
I��  
H 4 . Pad the right side of a text with a character   
I �
J
J \   P a d   t h e   r i g h t   s i d e   o f   a   t e x t   w i t h   a   c h a r a c t e r
G 
K
L
K l     ��������  ��  ��  
L 
M
N
M l     ��
O
P��  
O 0 * @param text _txt The text you want to pad   
P �
Q
Q T   @ p a r a m   t e x t   _ t x t   T h e   t e x t   y o u   w a n t   t o   p a d
N 
R
S
R l     ��
T
U��  
T > 8 @param text _character The text you want to pad it with   
U �
V
V p   @ p a r a m   t e x t   _ c h a r a c t e r   T h e   t e x t   y o u   w a n t   t o   p a d   i t   w i t h
S 
W
X
W l     ��
Y
Z��  
Y F @ @param integer _length The desired length of the resulting text   
Z �
[
[ �   @ p a r a m   i n t e g e r   _ l e n g t h   T h e   d e s i r e d   l e n g t h   o f   t h e   r e s u l t i n g   t e x t
X 
\
]
\ l     ��
^
_��  
^   @return text   
_ �
`
`    @ r e t u r n   t e x t
] 
a
b
a l     ��������  ��  ��  
b 
c
d
c i    
e
f
e I      ��
g���� 0 padright padRight
g 
h
i
h o      ���� 0 _txt  
i 
j
k
j o      ���� 0 
_character  
k 
l��
l o      ���� 0 _length  ��  ��  
f k     (
m
m 
n
o
n r     
p
q
p l    
r����
r c     
s
t
s o     ���� 0 _txt  
t m    ��
�� 
ctxt��  ��  
q o      ���� 0 _txt  
o 
u
v
u r    
w
x
w l   	
y����
y c    	
z
{
z o    ���� 0 
_character  
{ m    ��
�� 
ctxt��  ��  
x o      ���� 0 
_character  
v 
|
}
| r    
~

~ l   
�����
� \    
�
�
� o    ���� 0 _length  
� l   
�����
� n    
�
�
� 1    ��
�� 
leng
� o    ���� 0 _txt  ��  ��  ��  ��  
 o      ���� 0 i I
} 
�
�
� U    %
�
�
� r     
�
�
� b    
�
�
� o    ���� 0 _txt  
� o    ���� 0 
_character  
� o      ���� 0 _txt  
� o    ���� 0 i I
� 
���
� L   & (
�
� o   & '���� 0 _txt  ��  
d 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� : 4 Generate a random string of alphanumeric characters   
� �
�
� h   G e n e r a t e   a   r a n d o m   s t r i n g   o f   a l p h a n u m e r i c   c h a r a c t e r s
� 
�
�
� l     ��
�
���  
�      
� �
�
�   
� 
�
�
� l     ��
�
���  
� 2 , @param integer _length Length of the string   
� �
�
� X   @ p a r a m   i n t e g e r   _ l e n g t h   L e n g t h   o f   t h e   s t r i n g
� 
�
�
� l     ��
�
���  
�   @return text   
� �
�
�    @ r e t u r n   t e x t
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� i    
�
�
� I      ��
����� 0 rand  
� 
���
� o      ���� 0 _length  ��  ��  
� k     2
�
� 
�
�
� h     �
�� 0 _s  
� k      
�
� 
�
�
� j     ��~
��~ 0 _l  
� J     �
�
� 
�
�
� m     
�
� �
�
�  0
� 
�
�
� m    
�
� �
�
�  1
� 
�
�
� m    
�
� �
�
�  2
� 
�
�
� m    
�
� �
�
�  3
� 
�
�
� m    
�
� �
�
�  4
� 
�
�
� m    
�
� �
�
�  5
� 
�
�
� m    
�
� �
�
�  6
� 
�
�
� m    
�
� �
�
�  7
� 
�
�
� m    	
�
� �
�
�  8
� 
�
�
� m   	 

�
� �
�
�  9
� 
�
�
� m   
 
�
� �
�
�  a
� 
�
�
� m    
�
� �
�
�  b
� 
�
�
� m    
�
� �
�
�  c
� 
�
�
� m    
�
� �
�
�  d
� 
�
�
� m    
�
� �
�
�  e
� 
�
�
� m    
�
� �
�
�  f
� 
�
�
� m    
�
� �
�
�  g
� 
�
�
� m    
�
� �
�
�  h
� 
� 
� m     �  i   m     �  j  m    		 �

  k  m    " �  l  m   " % �  m  m   % ( �  n  m   ( + �  o  m   + . �  p   m   . 1!! �""  q  #$# m   1 4%% �&&  r$ '(' m   4 7)) �**  s( +,+ m   7 :-- �..  t, /0/ m   : =11 �22  u0 343 m   = @55 �66  v4 787 m   @ C99 �::  w8 ;<; m   C F== �>>  x< ?@? m   F IAA �BB  y@ CDC m   I LEE �FF  zD GHG m   L OII �JJ  AH KLK m   O RMM �NN  BL OPO m   R UQQ �RR  CP STS m   U XUU �VV  DT WXW m   X [YY �ZZ  EX [\[ m   [ ^]] �^^  F\ _`_ m   ^ aaa �bb  G` cdc m   a dee �ff  Hd ghg m   d gii �jj  Ih klk m   g jmm �nn  Jl opo m   j mqq �rr  Kp sts m   m puu �vv  Lt wxw m   p syy �zz  Mx {|{ m   s v}} �~~  N| � m   v y�� ���  O� ��� m   y |�� ���  p� ��� m   | �� ���  Q� ��� m    ��� ���  R� ��� m   � ��� ���  S� ��� m   � ��� ���  T� ��� m   � ��� ���  U� ��� m   � ��� ���  V� ��� m   � ��� ���  W� ��� m   � ��� ���  X� ��� m   � ��� ���  Y� ��}� m   � ��� ���  Z�}  
� ��|� j   � ��{��{ 0 _c  � I  � ��z��y
�z .corecnte****       ****� o   � ��x�x 0 _l  �y  �|  
� ��� r    ��� m    	�� ���  � o      �w�w 0 _txt  � ��� Y    /��v���u� r    *��� b    (��� o    �t�t 0 _txt  � n    '��� 4    '�s�
�s 
cobj� l   &��r�q� I   &�p�o�
�p .sysorandnmbr    ��� nmbr�o  � �n��
�n 
from� m    �m�m � �l��k
�l 
to  � l   "��j�i� n    "��� o     "�h�h 0 _c  � o     �g�g 0 _s  �j  �i  �k  �r  �q  � n    ��� o    �f�f 0 _l  � o    �e�e 0 _s  � o      �d�d 0 _txt  �v 0 i I� m    �c�c � o    �b�b 0 _length  �u  � ��a� L   0 2�� o   0 1�`�` 0 _txt  �a  
� ��� l     �_�^�]�_  �^  �]  � ��� l     �\���\  � H B Replace all occurances of _search found within _txt with _replace   � ��� �   R e p l a c e   a l l   o c c u r a n c e s   o f   _ s e a r c h   f o u n d   w i t h i n   _ t x t   w i t h   _ r e p l a c e� ��� l     �[�Z�Y�[  �Z  �Y  � ��� l     �X���X  � $  @param text _txt Subject text   � ��� <   @ p a r a m   t e x t   _ t x t   S u b j e c t   t e x t� ��� l     �W���W  � * $ @param text _search text to replace   � ��� H   @ p a r a m   t e x t   _ s e a r c h   t e x t   t o   r e p l a c e� ��� l     �V���V  � , & @param text _replace Replacement text   � ��� L   @ p a r a m   t e x t   _ r e p l a c e   R e p l a c e m e n t   t e x t� ��� l     �U���U  � 1 + @return text text with the replaced values   � ��� V   @ r e t u r n   t e x t   t e x t   w i t h   t h e   r e p l a c e d   v a l u e s� ��� l     �T�S�R�T  �S  �R  � ��� i    ��� I      �Q��P�Q 0 replace  � ��� o      �O�O 0 _txt  � ��� o      �N�N 0 _search  � ��M� o      �L�L 0 _replace  �M  �P  � k     &�� ��� r     ��� n    ��� 1    �K
�K 
txdl� 1     �J
�J 
ascr� o      �I�I 0 _d  � � � r     o    �H�H 0 _search   n      1    
�G
�G 
txdl 1    �F
�F 
ascr   r     n    	
	 2    �E
�E 
citm
 o    �D�D 0 _txt   o      �C�C 0 _l    r     o    �B�B 0 _replace   n      1    �A
�A 
txdl 1    �@
�@ 
ascr  r     c     o    �?�? 0 _l   m    �>
�> 
ctxt o      �=�= 0 _txt    r    # o    �<�< 0 _d   n      1     "�;
�; 
txdl 1     �:
�: 
ascr �9 L   $ & o   $ %�8�8 0 _txt  �9  �   l     �7�6�5�7  �6  �5    !"! l     �4#$�4  #   Split a text into a list   $ �%% 2   S p l i t   a   t e x t   i n t o   a   l i s t" &'& l     �3�2�1�3  �2  �1  ' ()( l     �0*+�0  * , & @param text _txt The text to split up   + �,, L   @ p a r a m   t e x t   _ t x t   T h e   t e x t   t o   s p l i t   u p) -.- l     �//0�/  / = 7 @param text|list _delim Boundry to split the text with   0 �11 n   @ p a r a m   t e x t | l i s t   _ d e l i m   B o u n d r y   t o   s p l i t   t h e   t e x t   w i t h. 232 l     �.45�.  4   @return list   5 �66    @ r e t u r n   l i s t3 787 l     �-�,�+�-  �,  �+  8 9:9 i    ;<; I      �*=�)�* 	0 split  = >?> o      �(�( 0 _txt  ? @�'@ o      �&�& 
0 _delim  �'  �)  < k     AA BCB r     DED n    FGF 1    �%
�% 
txdlG 1     �$
�$ 
ascrE o      �#�# 0 _d  C HIH r    JKJ o    �"�" 
0 _delim  K n     LML 1    
�!
�! 
txdlM 1    � 
�  
ascrI NON r    PQP n    RSR 2    �
� 
citmS o    �� 0 _txt  Q o      �� 0 _result  O TUT r    VWV o    �� 0 _d  W n     XYX 1    �
� 
txdlY 1    �
� 
ascrU Z�Z L    [[ o    �� 0 _result  �  : \]\ l     ����  �  �  ] ^_^ l     �`a�  ` D > `template()` works like a more complex version of `replace()`   a �bb |   ` t e m p l a t e ( ) `   w o r k s   l i k e   a   m o r e   c o m p l e x   v e r s i o n   o f   ` r e p l a c e ( ) `_ cdc l     ����  �  �  d efe l     �gh�  g  	 Example:   h �ii    E x a m p l e :f jkj l     �lm�  l   <code>   m �nn    < c o d e >k opo l     �qr�  q l f set _data to {{"name", "John Smith"}, {"age", 30}, {"address", "555 Some Avenue, City, STATE 55555"}}   r �ss �   s e t   _ d a t a   t o   { { " n a m e " ,   " J o h n   S m i t h " } ,   { " a g e " ,   3 0 } ,   { " a d d r e s s " ,   " 5 5 5   S o m e   A v e n u e ,   C i t y ,   S T A T E   5 5 5 5 5 " } }p tut l     �vw�  v s m set _tpl to linefeed & "NAME: %name%" & linefeed & "AGE: %age%" & linefeed & "ADDRESS: %address%" & linefeed   w �xx �   s e t   _ t p l   t o   l i n e f e e d   &   " N A M E :   % n a m e % "   &   l i n e f e e d   &   " A G E :   % a g e % "   &   l i n e f e e d   &   " A D D R E S S :   % a d d r e s s % "   &   l i n e f e e du yzy l     �{|�  { , & template(_tpl, _data) of _Text of lib   | �}} L   t e m p l a t e ( _ t p l ,   _ d a t a )   o f   _ T e x t   o f   l i bz ~~ l     ����  �   </code>   � ���    < / c o d e > ��� l     �
�	��
  �	  �  � ��� l     ����  � 7 1 @param text _tpl The template with `%variables%`   � ��� b   @ p a r a m   t e x t   _ t p l   T h e   t e m p l a t e   w i t h   ` % v a r i a b l e s % `� ��� l     ����  � 4 . @param list _data List of 2 item list objects   � ��� \   @ p a r a m   l i s t   _ d a t a   L i s t   o f   2   i t e m   l i s t   o b j e c t s� ��� l     ����  �   @return list   � ���    @ r e t u r n   l i s t� ��� l     ����  �  �  � ��� i    ��� I      ��� � 0 template  � ��� o      ���� 0 _tpl  � ���� o      ���� 	0 _data  ��  �   � k     M�� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 _d  � ��� r    	��� o    ���� 0 _tpl  � o      ���� 0 _result  � ��� X   
 D����� k    ?�� ��� r    (��� b    $��� b    "��� m    �� ���  %� l   !������ c    !��� n    ��� 4    ���
�� 
cobj� m    ���� � o    ���� 0 _var  � m     ��
�� 
ctxt��  ��  � m   " #�� ���  %� n     ��� 1   % '��
�� 
txdl� 1   $ %��
�� 
ascr� ��� r   ) .��� n   ) ,��� 2   * ,��
�� 
citm� o   ) *���� 0 _result  � o      ���� 0 _matches  � ��� r   / 9��� l  / 5������ c   / 5��� n   / 3��� 4   0 3���
�� 
cobj� m   1 2���� � o   / 0���� 0 _var  � m   3 4��
�� 
ctxt��  ��  � n     ��� 1   6 8��
�� 
txdl� 1   5 6��
�� 
ascr� ���� r   : ?��� c   : =��� o   : ;���� 0 _matches  � m   ; <��
�� 
ctxt� o      ���� 0 _result  ��  �� 0 _var  � o    ���� 	0 _data  � ��� r   E J��� o   E F���� 0 _d  � n     ��� 1   G I��
�� 
txdl� 1   F G��
�� 
ascr� ���� L   K M�� o   K L���� 0 _result  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � R L Strip whitespace (or other characters) from the beginning and end of a text   � ��� �   S t r i p   w h i t e s p a c e   ( o r   o t h e r   c h a r a c t e r s )   f r o m   t h e   b e g i n n i n g   a n d   e n d   o f   a   t e x t� ��� l     ��������  ��  ��  � ��� l     ������  � ( " @param text _txt The text to trim   � ��� D   @ p a r a m   t e x t   _ t x t   T h e   t e x t   t o   t r i m� ��� l     ������  � 6 0 @param list _chars List of characters to remove   � ��� `   @ p a r a m   l i s t   _ c h a r s   L i s t   o f   c h a r a c t e r s   t o   r e m o v e� ��� l     ������  �   @return text   � ���    @ r e t u r n   t e x t� ��� l     ������  � B < @link http://macscripter.net/viewtopic.php?pid=66143#p66143   � ��� x   @ l i n k   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? p i d = 6 6 1 4 3 # p 6 6 1 4 3� ��� l     ��������  ��  ��  �    i     I      ������ 0 trim    o      ���� 0 _txt   �� o      ���� 
0 _chars  ��  ��   L      n    	
	 I    ������ 0 trimleft trimLeft  n    I    ������ 0 	trimright 	trimRight  o    ���� 0 _txt   �� o    ���� 
0 _chars  ��  ��    f     �� o    	���� 
0 _chars  ��  ��  
  f       l     ��������  ��  ��    l     ����   4 . Like `trim()`, but just the start of the text    � \   L i k e   ` t r i m ( ) ` ,   b u t   j u s t   t h e   s t a r t   o f   t h e   t e x t  l     ��������  ��  ��    l     �� !��      @see trim of _Text   ! �"" &   @ s e e   t r i m   o f   _ T e x t #$# l     ��������  ��  ��  $ %&% i    '(' I      ��)���� 0 trimleft trimLeft) *+* o      ���� 0 _txt  + ,��, o      ���� 
0 _chars  ��  ��  ( k     D-- ./. Z    "01����0 l    2����2 G     343 >    565 n     787 m    ��
�� 
pcls8 o     ���� 
0 _chars  6 m    ��
�� 
list4 =   9:9 o    	���� 
0 _chars  : J   	 ����  ��  ��  1 r    ;<; J    == >?> m    @@ �AA   ? BCB 1    ��
�� 
tab C DED 1    ��
�� 
lnfdE FGF o    ��
�� 
ret G H��H I   ��I��
�� .sysontocTEXT       shorI m    ����  ��  ��  < o      ���� 
0 _chars  ��  ��  / JKJ W   # ALML r   / <NON n   / :PQP 7  0 :��RS
�� 
ctxtR m   4 6���� S m   7 9������Q o   / 0���� 0 _txt  O o      ���� 0 _txt  M H   ' .TT E  ' -UVU o   ' (���� 
0 _chars  V n   ( ,WXW 4  ) ,��Y
�� 
cha Y m   * +���� X o   ( )���� 0 _txt  K Z��Z L   B D[[ o   B C���� 0 _txt  ��  & \]\ l     ��������  ��  ��  ] ^_^ l     ��`a��  ` 2 , Like `trim()`, but just the end of the text   a �bb X   L i k e   ` t r i m ( ) ` ,   b u t   j u s t   t h e   e n d   o f   t h e   t e x t_ cdc l     ��������  ��  ��  d efe l     ��gh��  g   @see trim of _Text   h �ii &   @ s e e   t r i m   o f   _ T e x tf jkj l     ��������  ��  ��  k lml i     #non I      ��p���� 0 	trimright 	trimRightp qrq o      ���� 0 _txt  r s��s o      ���� 
0 _chars  ��  ��  o k     Dtt uvu Z    "wx����w l    y��~y G     z{z >    |}| n     ~~ m    �}
�} 
pcls o     �|�| 
0 _chars  } m    �{
�{ 
list{ =   ��� o    	�z�z 
0 _chars  � J   	 �y�y  �  �~  x r    ��� J    �� ��� m    �� ���   � ��� 1    �x
�x 
tab � ��� 1    �w
�w 
lnfd� ��� o    �v
�v 
ret � ��u� I   �t��s
�t .sysontocTEXT       shor� m    �r�r  �s  �u  � o      �q�q 
0 _chars  ��  ��  v ��� W   # A��� r   / <��� n   / :��� 7  0 :�p��
�p 
ctxt� m   4 6�o�o � m   7 9�n�n��� o   / 0�m�m 0 _txt  � o      �l�l 0 _txt  � H   ' .�� E  ' -��� o   ' (�k�k 
0 _chars  � n   ( ,��� 4  ) ,�j�
�j 
cha � m   * +�i�i��� o   ( )�h�h 0 _txt  � ��g� L   B D�� o   B C�f�f 0 _txt  �g  m ��� l     �e�d�c�e  �d  �c  � ��� l     �b�a�`�b  �a  �`  � ��� l     �_���_  �   Decode URL entities   � ��� (   D e c o d e   U R L   e n t i t i e s� ��� l     �^�]�\�^  �]  �\  � ��� l     �[���[  � + % @param text _txt  The text to decode   � ��� J   @ p a r a m   t e x t   _ t x t     T h e   t e x t   t o   d e c o d e� ��� l     �Z���Z  � S M @return text|boolean The decoded text or false on failure (text was invalid)   � ��� �   @ r e t u r n   t e x t | b o o l e a n   T h e   d e c o d e d   t e x t   o r   f a l s e   o n   f a i l u r e   ( t e x t   w a s   i n v a l i d )� ��� l     �Y���Y  � A ; @link http://harvey.nu/applescript_url_decode_routine.html   � ��� v   @ l i n k   h t t p : / / h a r v e y . n u / a p p l e s c r i p t _ u r l _ d e c o d e _ r o u t i n e . h t m l� ��� l     �X�W�V�X  �W  �V  � ��� i   $ '��� I      �U��T�U 0 	urldecode 	URLDecode� ��S� o      �R�R 0 _txt  �S  �T  � k     ��� ��� r     ��� m     �� ���  � o      �Q�Q 0 sdst sDst� ��� r    ��� m    �� ���   0 1 2 3 4 5 6 7 8 9 A B C D E F� o      �P�P 0 shex sHex� ��� r    ��� m    	�O�O � o      �N�N 0 i I� ��� V    ���� k    ��� ��� r    ��� n    ��� 4    �M�
�M 
cha � o    �L�L 0 i I� o    �K�K 0 _txt  � o      �J�J 0 c C� ��� Z    ������ =     ��� o    �I�I 0 c C� m    �� ���  +� r   # (��� b   # &��� o   # $�H�H 0 sdst sDst� m   $ %�� ���   � o      �G�G 0 sdst sDst� ��� =   + .��� o   + ,�F�F 0 c C� m   , -�� ���  %� ��E� k   1 ��� ��� l  1 1�D�C�B�D  �C  �B  � ��� l  1 1�A���A  � !  invalid : missing hex char   � �   6   i n v a l i d   :   m i s s i n g   h e x   c h a r�  Z  1 A�@�? ?   1 8 o   1 2�>�> 0 i I l  2 7�=�< \   2 7	 l  2 5
�;�:
 n   2 5 1   3 5�9
�9 
leng o   2 3�8�8 0 _txt  �;  �:  	 m   5 6�7�7 �=  �<   L   ; = m   ; <�6
�6 boovfals�@  �?    l  B B�5�4�3�5  �4  �3    r   B T \   B R l  B P�2�1 I  B P�0�/
�0 .sysooffslong    ��� null�/   �.
�. 
psof l  D J�-�, n   D J 4   E J�+
�+ 
cha  l  F I�*�) [   F I  o   F G�(�( 0 i I  m   G H�'�' �*  �)   o   D E�&�& 0 _txt  �-  �,   �%!�$
�% 
psin! o   K L�#�# 0 shex sHex�$  �2  �1   m   P Q�"�"  o      �!�! 0 icval1 iCVal1 "#" r   U g$%$ \   U e&'& l  U c(� �( I  U c��)
� .sysooffslong    ��� null�  ) �*+
� 
psof* l  W ],��, n   W ]-.- 4   X ]�/
� 
cha / l  Y \0��0 [   Y \121 o   Y Z�� 0 i I2 m   Z [�� �  �  . o   W X�� 0 _txt  �  �  + �3�
� 
psin3 o   ^ _�� 0 shex sHex�  �   �  ' m   c d�� % o      �� 0 icval2 iCVal2# 454 l  h h����  �  �  5 676 l  h h�89�  8 - ' invalid : not 2 hex chars after % sign   9 �:: N   i n v a l i d   :   n o t   2   h e x   c h a r s   a f t e r   %   s i g n7 ;<; Z  h |=>�
�	= G   h s?@? =   h kABA o   h i�� 0 icval1 iCVal1B m   i j����@ =   n qCDC o   n o�� 0 icval2 iCVal2D m   o p����> L   v xEE m   v w�
� boovfals�
  �	  < FGF l  } }����  �  �  G HIH r   } �JKJ b   } �LML o   } ~� �  0 sdst sDstM l  ~ �N����N I  ~ ���O��
�� .sysontocTEXT       shorO l  ~ �P����P [   ~ �QRQ ]   ~ �STS o   ~ ���� 0 icval1 iCVal1T m    ����� R o   � ����� 0 icval2 iCVal2��  ��  ��  ��  ��  K o      ���� 0 sdst sDstI U��U r   � �VWV [   � �XYX o   � ����� 0 i IY m   � ����� W o      ���� 0 i I��  �E  � r   � �Z[Z b   � �\]\ o   � ����� 0 sdst sDst] o   � ����� 0 c C[ o      ���� 0 sdst sDst� ^��^ r   � �_`_ [   � �aba o   � ����� 0 i Ib m   � ����� ` o      ���� 0 i I��  � B    cdc o    ���� 0 i Id n    efe 1    ��
�� 
lengf o    ���� 0 _txt  � g��g L   � �hh o   � ����� 0 sdst sDst��  � iji l     ��������  ��  ��  j klk l     ��mn��  m $  Encode URL entities in a text   n �oo <   E n c o d e   U R L   e n t i t i e s   i n   a   t e x tl pqp l     ��������  ��  ��  q rsr l     ��tu��  t + % @param text _txt  The text to encode   u �vv J   @ p a r a m   t e x t   _ t x t     T h e   t e x t   t o   e n c o d es wxw l     ��yz��  y $  @return text The encoded text   z �{{ <   @ r e t u r n   t e x t   T h e   e n c o d e d   t e x tx |}| l     ��~��  ~ A ; @link http://harvey.nu/applescript_url_encode_routine.html    ��� v   @ l i n k   h t t p : / / h a r v e y . n u / a p p l e s c r i p t _ u r l _ e n c o d e _ r o u t i n e . h t m l} ��� l     ��������  ��  ��  � ��� i   ( +��� I      ������� 0 	urlencode 	URLEncode� ���� o      ���� 0 _txt  ��  ��  � k    �� ��� r     ��� m     �� ���  � o      ���� 0 _result  � ��� X    ����� k    ��� ��� r    ��� o    ���� 0 eachchar eachChar� o      ���� 0 usechar useChar� ��� r    !��� I   �����
�� .sysoctonshor       TEXT� o    ���� 0 eachchar eachChar��  � o      ���� 0 eachcharnum eachCharNum� ��� Z   " ������� =   " %��� o   " #���� 0 eachcharnum eachCharNum� m   # $����  � r   ( +��� m   ( )�� ���  +� o      ���� 0 usechar useChar� ��� F   . ��� F   . k��� F   . Y��� F   . I��� F   . 9��� l  . 1������ >   . 1��� o   . /���� 0 eachcharnum eachCharNum� m   / 0���� *��  ��  � l  4 7������ >   4 7��� o   4 5���� 0 eachcharnum eachCharNum� m   5 6���� _��  ��  � l  < G������ G   < G��� A   < ?��� o   < =���� 0 eachcharnum eachCharNum� m   = >���� -� ?   B E��� o   B C���� 0 eachcharnum eachCharNum� m   C D���� .��  ��  � l  L W������ G   L W��� A   L O��� o   L M���� 0 eachcharnum eachCharNum� m   M N���� 0� ?   R U��� o   R S���� 0 eachcharnum eachCharNum� m   S T���� 9��  ��  � l  \ i������ G   \ i��� A   \ _��� o   \ ]���� 0 eachcharnum eachCharNum� m   ] ^���� A� ?   b g��� o   b c���� 0 eachcharnum eachCharNum� m   c f���� Z��  ��  � l  n }������ G   n }��� A   n s��� o   n o���� 0 eachcharnum eachCharNum� m   o r���� a� ?   v {��� o   v w���� 0 eachcharnum eachCharNum� m   w z���� z��  ��  � ���� k   � ��� ��� r   � ���� I  � �����
�� .sysorondlong        doub� l  � ������� ^   � ���� o   � ����� 0 eachcharnum eachCharNum� m   � ����� ��  ��  � �����
�� 
dire� m   � ���
�� olierndD��  � o      ���� 0 firstdig firstDig� ��� r   � ���� `   � ���� o   � ����� 0 eachcharnum eachCharNum� m   � ����� � o      ���� 0 	seconddig 	secondDig� ��� Z   � �������� ?   � ���� o   � ����� 0 firstdig firstDig� m   � ����� 	� k   � ��� ��� r   � ���� [   � ���� o   � ����� 0 firstdig firstDig� m   � ����� 7� o      ���� 0 anum aNum� ���� r   � ���� I  � ������
�� .sysontocTEXT       shor� o   � ����� 0 anum aNum��  � o      ���� 0 firstdig firstDig��  ��  ��  � ��� Z   � �������� ?   � ���� o   � ����� 0 	seconddig 	secondDig� m   � ����� 	� k   � �    r   � � [   � � o   � ����� 0 	seconddig 	secondDig m   � ����� 7 o      ���� 0 anum aNum �� r   � �	 I  � ���
��
�� .sysontocTEXT       shor
 o   � ����� 0 anum aNum��  	 o      ���� 0 	seconddig 	secondDig��  ��  ��  �  r   � � c   � � l  � ����� b   � � b   � � m   � � �  % l  � ����� c   � � o   � ��� 0 firstdig firstDig m   � ��~
�~ 
ctxt��  ��   l  � ��}�| c   � � o   � ��{�{ 0 	seconddig 	secondDig m   � ��z
�z 
ctxt�}  �|  ��  ��   m   � ��y
�y 
ctxt o      �x�x 0 numhex numHex �w r   � �  o   � ��v�v 0 numhex numHex  o      �u�u 0 usechar useChar�w  ��  ��  � !�t! r   � �"#" c   � �$%$ b   � �&'& o   � ��s�s 0 _result  ' o   � ��r�r 0 usechar useChar% m   � ��q
�q 
ctxt# o      �p�p 0 _result  �t  �� 0 eachchar eachChar� n    
()( 2   
�o
�o 
cha ) o    �n�n 0 _txt  � *�m* L  ++ o  �l�l 0 _result  �m  � ,�k, l     �j�i�h�j  �i  �h  �k  	� -.- l     �g�f�e�g  �f  �e  . /0/ l     �d�c�b�d  �c  �b  0 1�a1 h   g r�`2�` 
0 _ui _UI2 k      33 454 l     �_�^�]�_  �^  �]  5 676 l     �\89�\  8   lib -> _UI   9 �::    l i b   - >   _ U I7 ;<; l     �[=>�[  =   User interface functions   > �?? 2   U s e r   i n t e r f a c e   f u n c t i o n s< @A@ l     �Z�Y�X�Z  �Y  �X  A BCB l     �WDE�W  D K E Execute the specified menu item.  In this case, assuming the Finder    E �FF �   E x e c u t e   t h e   s p e c i f i e d   m e n u   i t e m .     I n   t h i s   c a s e ,   a s s u m i n g   t h e   F i n d e r  C GHG l     �VIJ�V  I I C is the active application, arranging the frontmost folder by date.   J �KK �   i s   t h e   a c t i v e   a p p l i c a t i o n ,   a r r a n g i n g   t h e   f r o n t m o s t   f o l d e r   b y   d a t e .H LML l     �U�T�S�U  �T  �S  M NON l     �RPQ�R  P W Q @param list mList A list in the form og {"Finder", "View", "Arrange By", "Date"}   Q �RR �   @ p a r a m   l i s t   m L i s t   A   l i s t   i n   t h e   f o r m   o g   { " F i n d e r " ,   " V i e w " ,   " A r r a n g e   B y " ,   " D a t e " }O STS l     �QUV�Q  U   @return void   V �WW    @ r e t u r n   v o i dT XYX l     �PZ[�P  Z ( " @author Jacob Rus, September 2006   [ �\\ D   @ a u t h o r   J a c o b   R u s ,   S e p t e m b e r   2 0 0 6Y ]^] l     �O_`�O  _ J D @link http://hints.macworld.com/article.php?story=20060921045743404   ` �aa �   @ l i n k   h t t p : / / h i n t s . m a c w o r l d . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 6 0 9 2 1 0 4 5 7 4 3 4 0 4^ bcb l     �N�M�L�N  �M  �L  c ded i     fgf I      �Kh�J�K 0 	menuclick 	menuClickh i�Ii o      �H�H 0 
_menu_list  �I  �J  g k     Xjj klk h     �Gm�G 0 	menuclick 	menuClickm i     non I      �Fp�E�F 0 recurse  p qrq o      �D�D 0 
_menu_list  r s�Cs o      �B�B 0 _parent  �C  �E  o k     8tt uvu q      ww �A�@�A 	0 _item  �@  v xyx r     z{z n     |}| 4    �?~
�? 
cobj~ m    �>�> } o     �=�= 0 
_menu_list  { o      �<�< 	0 _item  y �; O    8��� Z    7���:�� ?    ��� n   ��� 1    �9
�9 
leng� o    �8�8 0 
_menu_list  � m    �7�7 � n   ,��� I    ,�6��5�6 0 recurse  � ��� n    !��� 7  !�4��
�4 
cobj� m    �3�3 � l    ��2�1� n    ��� 1     �0
�0 
leng� o    �/�/ 0 
_menu_list  �2  �1  � o    �.�. 0 
_menu_list  � ��-� l  ! (��,�+� n  ! (��� l  % (��*�)� 4   % (�(�
�( 
menE� o   & '�'�' 	0 _item  �*  �)  � n  ! %��� l  " %��&�%� 4   " %�$�
�$ 
menI� o   # $�#�# 	0 _item  �&  �%  � o   ! "�"�" 0 _parent  �,  �+  �-  �5  �  f    �:  � I  / 7�!�� 
�! .prcsclicuiel    ��� uiel� n  / 3��� 4   0 3��
� 
menI� o   1 2�� 	0 _item  � o   / 0�� 0 _parent  �   � m    ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �;  l ��� l   ����  �  �  � ��� Z   ����� A    ��� n   ��� 1   	 �
� 
leng� o    	�� 0 
_menu_list  � m    �� � R    ���
� .ascrerr ****      � ****� m    �� ��� 8 m e n u   l i s t   i s   n o t   l o n g   e n o u g h�  �  �  � ��� l   ����  �  �  � ��� q    �� ��� 0 _app  � ��� 0 _top  �  � ��� r    3��� l   $���� n    $��� 7  $�
��
�
 
cobj� m     �	�	 � m   ! #�� � o    �� 0 
_menu_list  �  �  � J      �� ��� o      �� 0 _app  � ��� o      �� 0 _top  �  � ��� l  4 4����  �  �  � �� � O  4 X��� n   8 W��� l 	 9 W������ I   9 W������� 0 recurse  � ��� l  9 F������ n   9 F��� 7 : F����
�� 
cobj� m   > @���� � l  A E������ n  A E��� 1   C E��
�� 
leng� o   A C���� 0 
_menu_list  ��  ��  � o   9 :���� 0 
_menu_list  ��  ��  � ���� n  F S��� l 
 P S������ l  P S������ 4   P S���
�� 
menE� o   Q R���� 0 _top  ��  ��  ��  ��  � n  F P��� l  M P������ 4   M P���
�� 
mbri� o   N O���� 0 _top  ��  ��  � n  F M��� l  J M������ 4   J M���
�� 
mbar� m   K L���� ��  ��  � l 	 F J������ l  F J������ 4   F J���
�� 
prcs� o   H I���� 0 _app  ��  ��  ��  ��  ��  ��  ��  ��  � o   8 9���� 0 	menuclick 	menuClick� m   4 5���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �   e ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Resize a window   � ���     R e s i z e   a   w i n d o w� ��� l     ��������  ��  ��  � ��� l     ������  � . ( @return rectangle New bounds of _window   � ��� P   @ r e t u r n   r e c t a n g l e   N e w   b o u n d s   o f   _ w i n d o w� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 resizewindow resizeWindow�    o      ���� 0 _window    o      ���� 
0 _width   �� o      ���� 0 _height  ��  ��  � k     `  r     	 n    

 I    ������ 0 elementbounds elementBounds �� o    ���� 0 _window  ��  ��    f     	 o      ���� 0 _w    r   	  J   	   n   	  o   
 ���� 0 x1   o   	 
���� 0 _w    n     o    ���� 0 y1   o    ���� 0 _w    n     o    ���� 0 x2   o    ���� 0 _w   �� n     !  o    ���� 0 y2  ! o    ���� 0 _w  ��   o      ���� 0 _new   "#" Z   8$%����$ F    '&'& >   ()( o    ���� 
0 _width  ) m    ��
�� 
msng' ?     %*+* c     #,-, o     !���� 
0 _width  - m   ! "��
�� 
long+ m   # $����  % r   * 4./. [   * /010 l  * -2����2 n   * -343 o   + -���� 0 x1  4 o   * +���� 0 _w  ��  ��  1 o   - .���� 
0 _width  / n      565 4   0 3��7
�� 
cobj7 m   1 2���� 6 o   / 0���� 0 _new  ��  ��  # 898 Z  9 W:;����: F   9 F<=< >  9 <>?> o   9 :���� 0 _height  ? m   : ;��
�� 
msng= ?   ? D@A@ c   ? BBCB o   ? @���� 0 _height  C m   @ A��
�� 
longA m   B C����  ; r   I SDED [   I NFGF l  I LH����H n   I LIJI o   J L���� 0 y1  J o   I J���� 0 _w  ��  ��  G o   L M���� 0 _height  E n      KLK 4   O R��M
�� 
cobjM m   P Q���� L o   N O���� 0 _new  ��  ��  9 NON r   X ]PQP o   X Y���� 0 _new  Q n      RSR 1   Z \��
�� 
pbndS o   Y Z���� 0 _window  O T��T L   ^ `UU o   ^ _���� 0 _new  ��  � VWV l     ��������  ��  ��  W XYX l     ��Z[��  Z 9 3 Resize a window anchoring the center of the window   [ �\\ f   R e s i z e   a   w i n d o w   a n c h o r i n g   t h e   c e n t e r   o f   t h e   w i n d o wY ]^] l     ��������  ��  ��  ^ _`_ l     ��ab��  a . ( @return rectangle New bounds of _window   b �cc P   @ r e t u r n   r e c t a n g l e   N e w   b o u n d s   o f   _ w i n d o w` ded l     ��������  ��  ��  e fgf i    hih I      ��j���� (0 resizewindowcenter resizeWindowCenterj klk o      ���� 0 _window  l mnm o      ���� 
0 _width  n o��o o      ���� 0 _height  ��  ��  i k     �pp qrq r     sts n    uvu I    ��w���� 0 elementbounds elementBoundsw x��x o    ���� 0 _window  ��  ��  v  f     t o      ���� 0 _w  r yzy r   	 {|{ J   	 }} ~~ n   	 ��� o   
 ���� 0 x1  � o   	 
�� 0 _w   ��� n    ��� o    �~�~ 0 y1  � o    �}�} 0 _w  � ��� n    ��� o    �|�| 0 x2  � o    �{�{ 0 _w  � ��z� n    ��� o    �y�y 0 y2  � o    �x�x 0 _w  �z  | o      �w�w 0 _new  z ��� Z    I���v�u� ?    ��� c    ��� o    �t�t 
0 _width  � m    �s
�s 
long� m    �r�r  � k   " E�� ��� r   " /��� I  " -�q��p
�q .sysorondlong        doub� l  " )��o�n� ^   " )��� l  " '��m�l� \   " '��� o   " #�k�k 
0 _width  � l  # &��j�i� n   # &��� o   $ &�h�h 	0 width  � o   # $�g�g 0 _w  �j  �i  �m  �l  � m   ' (�f�f �o  �n  �p  � o      �e�e 0 d  � ��� r   0 :��� \   0 5��� l  0 3��d�c� n   0 3��� o   1 3�b�b 0 x1  � o   0 1�a�a 0 _w  �d  �c  � o   3 4�`�` 0 d  � n      ��� 4   6 9�_�
�_ 
cobj� m   7 8�^�^ � o   5 6�]�] 0 _new  � ��\� r   ; E��� [   ; @��� l  ; >��[�Z� n   ; >��� o   < >�Y�Y 0 x2  � o   ; <�X�X 0 _w  �[  �Z  � o   > ?�W�W 0 d  � n      ��� 4   A D�V�
�V 
cobj� m   B C�U�U � o   @ A�T�T 0 _new  �\  �v  �u  � ��� Z   J y���S�R� ?   J O��� c   J M��� o   J K�Q�Q 0 _height  � m   K L�P
�P 
long� m   M N�O�O  � k   R u�� ��� r   R _��� I  R ]�N��M
�N .sysorondlong        doub� l  R Y��L�K� ^   R Y��� l  R W��J�I� \   R W��� o   R S�H�H 0 _height  � l  S V��G�F� n   S V��� o   T V�E�E 
0 height  � o   S T�D�D 0 _w  �G  �F  �J  �I  � m   W X�C�C �L  �K  �M  � o      �B�B 0 d  � ��� r   ` j��� \   ` e��� l  ` c��A�@� n   ` c��� o   a c�?�? 0 y1  � o   ` a�>�> 0 _w  �A  �@  � o   c d�=�= 0 d  � n      ��� 4   f i�<�
�< 
cobj� m   g h�;�; � o   e f�:�: 0 _new  � ��9� r   k u��� [   k p��� l  k n��8�7� n   k n��� o   l n�6�6 0 y2  � o   k l�5�5 0 _w  �8  �7  � o   n o�4�4 0 d  � n      ��� 4   q t�3�
�3 
cobj� m   r s�2�2 � o   p q�1�1 0 _new  �9  �S  �R  � ��� r   z ��� o   z {�0�0 0 _new  � n      ��� 1   | ~�/
�/ 
pbnd� o   { |�.�. 0 _window  � ��-� L   � ��� o   � ��,�, 0 _new  �-  g ��� l     �+�*�)�+  �*  �)  � ��� l     �(���(  � I C Get a nice record with the dimensions and position of a UI element   � ��� �   G e t   a   n i c e   r e c o r d   w i t h   t h e   d i m e n s i o n s   a n d   p o s i t i o n   o f   a   U I   e l e m e n t� ��� l     �'�&�%�'  �&  �%  � ��� l     �$���$  � !  @param UI element _element   � ��� 6   @ p a r a m   U I   e l e m e n t   _ e l e m e n t� � � l     �#�#   p j @return record {x1 : integer, y1: integer, x2 : integer, y2 : integer, width : integer, height : integer}    � �   @ r e t u r n   r e c o r d   { x 1   :   i n t e g e r ,   y 1 :   i n t e g e r ,   x 2   :   i n t e g e r ,   y 2   :   i n t e g e r ,   w i d t h   :   i n t e g e r ,   h e i g h t   :   i n t e g e r }   l     �"�!� �"  �!  �     i    	 I      �
�� 0 elementbounds elementBounds
 � o      �� 0 _element  �  �  	 k     �  Q     m k    !  e     c     n     1    �
� 
pbnd o    �� 0 _element   m    �
� 
list � r   	 ! K   	  �� 0 x1   n   
  !  4    �"
� 
cobj" m    �� ! 1   
 �
� 
rslt �#$� 0 y1  # n    %&% 4    �'
� 
cobj' m    �� & 1    �
� 
rslt$ �()� 0 x2  ( n    *+* 4    �,
� 
cobj, m    �� + 1    �
� 
rslt) �-�
� 0 y2  - n    ./. 4    �	0
�	 
cobj0 m    �� / 1    �
� 
rslt�
   o      �� 0 _b  �   R      ���
� .ascrerr ****      � ****�  �   Q   ) m1231 O   , c454 k   0 b66 787 r   0 79:9 c   0 5;<; n   0 3=>= 1   1 3�
� 
posn> o   0 1�� 0 _element  < m   3 4� 
�  
list: o      ���� 0 p P8 ?@? r   8 ?ABA c   8 =CDC n   8 ;EFE 1   9 ;��
�� 
ptszF o   8 9���� 0 _element  D m   ; <��
�� 
listB o      ���� 0 s S@ G��G r   @ bHIH K   @ `JJ ��KL�� 0 x1  K n   A EMNM 4   B E��O
�� 
cobjO m   C D���� N o   A B���� 0 p PL ��PQ�� 0 y1  P n   F JRSR 4   G J��T
�� 
cobjT m   H I���� S o   F G���� 0 p PQ ��UV�� 0 x2  U [   K TWXW l  K OY����Y n   K OZ[Z 4   L O��\
�� 
cobj\ m   M N���� [ o   K L���� 0 p P��  ��  X l  O S]����] n   O S^_^ 4   P S��`
�� 
cobj` m   Q R���� _ o   O P���� 0 s S��  ��  V ��a���� 0 y2  a [   U ^bcb l  U Yd����d n   U Yefe 4   V Y��g
�� 
cobjg m   W X���� f o   U V���� 0 p P��  ��  c l  Y ]h����h n   Y ]iji 4   Z ]��k
�� 
cobjk m   [ \���� j o   Y Z���� 0 s S��  ��  ��  I o      ���� 0 _b  ��  5 m   , -ll�                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  2 R      ��mn
�� .ascrerr ****      � ****m o      ���� 0 error_message  n ��o��
�� 
errno o      ���� 0 error_number  ��  3 k   k mpp qrq l  k k��st��  s 2 ,my displayError(error_message, error_number)   t �uu X m y   d i s p l a y E r r o r ( e r r o r _ m e s s a g e ,   e r r o r _ n u m b e r )r v��v L   k mww m   k l��
�� boovfals��   x��x L   n �yy b   n �z{z o   n o���� 0 _b  { K   o �|| ��}~�� 	0 width  } \   r y� l  r u������ n   r u��� o   s u���� 0 x2  � o   r s���� 0 _b  ��  ��  � l  u x������ n   u x��� o   v x���� 0 x1  � o   u v���� 0 _b  ��  ��  ~ ������� 
0 height  � \   | ���� l  | ������ n   | ��� o   } ���� 0 y2  � o   | }���� 0 _b  ��  ��  � l   ������� n    ���� o   � ����� 0 y1  � o    ����� 0 _b  ��  ��  ��  ��   ��� l     ��������  ��  ��  � ��� l     ������  � g a Returns screenBounds(), while trying to account for the dock (size and orientation) and menu bar   � ��� �   R e t u r n s   s c r e e n B o u n d s ( ) ,   w h i l e   t r y i n g   t o   a c c o u n t   f o r   t h e   d o c k   ( s i z e   a n d   o r i e n t a t i o n )   a n d   m e n u   b a r� ��� l     ��������  ��  ��  � ��� l     ������  �   @return record   � ���    @ r e t u r n   r e c o r d� ��� l     ������  �   @see elementBounds   � ��� &   @ s e e   e l e m e n t B o u n d s� ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 desktopbounds desktopBounds��  ��  � k     ��� ��� l     ������  �   the full screen bounds   � ��� .   t h e   f u l l   s c r e e n   b o u n d s� ��� r     ��� n    ��� I    �������� 0 screenbounds screenBounds��  ��  �  f     � o      ���� 0 _s  � ��� l   ��������  ��  ��  � ��� l   ������  �   bounds of the menubar   � ��� ,   b o u n d s   o f   t h e   m e n u b a r� ��� O   #��� O   "��� e    !�� 6   !��� 4   ���
�� 
uiel� m    ���� � =   ��� 1    ��
�� 
pcls� m    ��
�� 
mbar� 4    ���
�� 
pcap� m    �� ���  S y s t e m   E v e n t s� m    	���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� r   $ ,��� n  $ *��� I   % *������� 0 elementbounds elementBounds� ���� 1   % &��
�� 
rslt��  ��  �  f   $ %� o      ���� 0 _m  � ��� l  - -��������  ��  ��  � ��� l  - -������  � 2 , modify _s to account for the menubar height   � ��� X   m o d i f y   _ s   t o   a c c o u n t   f o r   t h e   m e n u b a r   h e i g h t� ��� r   - E��� K   - C�� ������ 0 x1  � n   . 1��� o   / 1���� 0 x1  � o   . /���� 0 _s  � ������ 0 y1  � [   2 9��� l  2 5������ n   2 5��� o   3 5���� 0 y1  � o   2 3���� 0 _s  ��  ��  � l  5 8������ n   5 8��� o   6 8���� 
0 height  � o   5 6���� 0 _m  ��  ��  � ������ 0 x2  � n   : =��� o   ; =���� 0 x2  � o   : ;���� 0 _s  � ������� 0 y2  � n   > A��� o   ? A���� 0 y2  � o   > ?���� 0 _s  ��  � o      ���� 0 _b  � ��� l  F F��������  ��  ��  � ��� O  F U��� e   J T�� n   J T��� 1   O S�
� 
dahd� 1   J O�~
�~ 
dpas� m   F G���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � � � Z   V ��}�| >  V Y 1   V W�{
�{ 
rslt m   W X�z
�z boovtrue k   \ �  r   \ c	 n  \ a

 I   ] a�y�x�w�y 0 
dockbounds 
dockBounds�x  �w    f   \ ]	 o      �v�v 0 _d    r   d k n  d i I   e i�u�t�s�u 0 dockposition dockPosition�t  �s    f   d e o      �r�r 0 _o   �q Z   l ��p =  l q o   l m�o�o 0 _o   m   m p �  b o t t o m r   t  l  t {�n�m \   t { l  t w�l�k n   t w !  o   u w�j�j 0 y2  ! o   t u�i�i 0 _s  �l  �k   l  w z"�h�g" n   w z#$# o   x z�f�f 
0 height  $ o   w x�e�e 0 _d  �h  �g  �n  �m   n      %&% o   | ~�d�d 0 y2  & o   { |�c�c 0 _b   '(' =  � �)*) o   � ��b�b 0 _o  * m   � �++ �,,  l e f t( -.- r   � �/0/ l  � �1�a�`1 [   � �232 l  � �4�_�^4 n   � �565 o   � ��]�] 0 x1  6 o   � ��\�\ 0 _s  �_  �^  3 l  � �7�[�Z7 n   � �898 o   � ��Y�Y 	0 width  9 o   � ��X�X 0 _d  �[  �Z  �a  �`  0 n      :;: o   � ��W�W 0 x1  ; o   � ��V�V 0 _b  . <=< =  � �>?> o   � ��U�U 0 _o  ? m   � �@@ �AA 
 r i g h t= B�TB r   � �CDC l  � �E�S�RE \   � �FGF l  � �H�Q�PH n   � �IJI o   � ��O�O 0 x2  J o   � ��N�N 0 _s  �Q  �P  G l  � �K�M�LK n   � �LML o   � ��K�K 	0 width  M o   � ��J�J 0 _d  �M  �L  �S  �R  D n      NON o   � ��I�I 0 x2  O o   � ��H�H 0 _b  �T  �p  �q  �}  �|    PQP l  � ��G�F�E�G  �F  �E  Q R�DR L   � �SS b   � �TUT o   � ��C�C 0 _b  U K   � �VV �BWX�B 	0 width  W \   � �YZY l  � �[�A�@[ n   � �\]\ o   � ��?�? 0 x2  ] o   � ��>�> 0 _b  �A  �@  Z l  � �^�=�<^ n   � �_`_ o   � ��;�; 0 x1  ` o   � ��:�: 0 _b  �=  �<  X �9a�8�9 
0 height  a \   � �bcb l  � �d�7�6d n   � �efe o   � ��5�5 0 y2  f o   � ��4�4 0 _b  �7  �6  c l  � �g�3�2g n   � �hih o   � ��1�1 0 y1  i o   � ��0�0 0 _b  �3  �2  �8  �D  � jkj l     �/�.�-�/  �.  �-  k lml l     �,no�,  n * $ Returns elementBounds() of the dock   o �pp H   R e t u r n s   e l e m e n t B o u n d s ( )   o f   t h e   d o c km qrq l     �+�*�)�+  �*  �)  r sts l     �(uv�(  u   @return record   v �ww    @ r e t u r n   r e c o r dt xyx l     �'z{�'  z   @see elementBounds   { �|| &   @ s e e   e l e m e n t B o u n d sy }~} l     �&�%�$�&  �%  �$  ~ � i    ��� I      �#�"�!�# 0 
dockbounds 
dockBounds�"  �!  � k     �� ��� O    ��� O   ��� e    �� 4   � �
�  
uiel� m    �� � 4    ��
� 
pcap� m    �� ���  D o c k� m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� L    �� n   ��� I    ���� 0 elementbounds elementBounds� ��� 1    �
� 
rslt�  �  �  f    �  � ��� l     ����  �  �  � ��� l     ����  � 0 * The Dock's current position on the screen   � ��� T   T h e   D o c k ' s   c u r r e n t   p o s i t i o n   o n   t h e   s c r e e n� ��� l     ����  �  �  � ��� l     ����  � ) # @return text left | right | bottom   � ��� F   @ r e t u r n   t e x t   l e f t   |   r i g h t   |   b o t t o m� ��� l     ����  �  �  � ��� i    ��� I      ���� 0 dockposition dockPosition�  �  � O    ��� L    �� c    ��� n    	��� 1    	�

�
 
dpse� 1    �	
�	 
dpas� m   	 
�
� 
ctxt� m     ���                                                                                  sevs  alis    �  Macintosh HD               �:k�H+  ~��System Events.app                                              ����]�f        ����  	                CoreServices    �:�      �^5�    ~��~��~��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ����  �  �  � ��� l     ����  � X R Returns elementBounds() of the Finder desktop window (basically the whole screen)   � ��� �   R e t u r n s   e l e m e n t B o u n d s ( )   o f   t h e   F i n d e r   d e s k t o p   w i n d o w   ( b a s i c a l l y   t h e   w h o l e   s c r e e n )� ��� l     ����  �  �  � ��� l     � ���   �   @return record   � ���    @ r e t u r n   r e c o r d� ��� l     ������  �   @see elementBounds   � ��� &   @ s e e   e l e m e n t B o u n d s� ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 screenbounds screenBounds��  ��  � O    ��� L    �� n   ��� I    ������� 0 elementbounds elementBounds� ���� n    
��� m    
��
�� 
cwin� 1    ��
�� 
desk��  ��  �  f    � m     ���                                                                                  MACS  alis    t  Macintosh HD               �:k�H+  ~��
Finder.app                                                     ����\I        ����  	                CoreServices    �:�      �\�r    ~��~��~��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� l     ��������  ��  ��  ��  �a   A �������������������  � ������������������������������ 0 _include_path  ��  0 setincludepath setIncludePath��  0 addincludepath addIncludePath��  0 getincludepath getIncludePath�� 0 include  �� 0 displayerror displayError�� (0 uiscriptingenabled UIScriptingEnabled�� 0 
bashscript 
bashScript�� 0 _application _Application�� 0 _file _File�� 0 _list _List�� 0 _sound _Sound�� 0 _text _Text�� 
0 _ui _UI� ����� �  ��� ��� @ / U s e r s / s c o t t / L i b r a r y / S c r i p t s / l i b� ��� : / U s e r s / s c o t t / L i b r a r y / S c r i p t s /� �� u����������  0 setincludepath setIncludePath�� ����� �  ���� 	0 _path  ��  � ���� 	0 _path  � ����������
�� 
pcls
�� 
alis
�� 
psxp
�� 
ctxt�� 0 _include_path  �� .��,�  ��,�&kvE�Y hO��,�  
�kvE�Y hO�)�,F� �� �����������  0 addincludepath addIncludePath�� ����� �  ���� 	0 _path  ��  � ���� 	0 _path  � ������������
�� 
pcls
�� 
alis
�� 
psxp
�� 
ctxt
�� 
list�� 0 _include_path  �� F��,�  ��,�&kvE�Y hO��,�  
�kvE�Y hO��,� 
�kvE�Y hOb   �%)�,F� �� �����������  0 getincludepath getIncludePath��  ��  �  � ������ 0 _include_path  
�� 
list�� )�,�&� ��G���������� 0 include  �� ����� �  ���� 	0 _name  ��  � ������ 	0 _name  �� 	0 _path  � ��������[������jlz|���  0 getincludepath getIncludePath
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .sysoloadscpt        file��  ��  �� g `)j+  [��l kh  ��%�%j W X  hO ��%�%�%j W X  hO ��%�%�%j W X  h[OY��O)j�� ������������� 0 displayerror displayError�� ����� �  ������ 0 _message  �� 0 _number  ��  � �������� 0 _message  �� 0 _number  �� 
0 _title  � ����������������������
�� 
pcls
�� 
long
�� 
mesS
�� 
as A
�� EAlTwarN
�� 
btns
�� 
dflt�� 
�� .sysodisAaleR        TEXT�� *�E�O��,�  ��%�%�%E�Y hO������kv�k� � ������������ (0 uiscriptingenabled UIScriptingEnabled��  ��  �  � ��
�� 
uien�� � *�,EU� ��4���������� 0 
bashscript 
bashScript�� ����� �  ������ 0 _command  �� 0 _background  ��  � �������� 0 _command  �� 0 _background  �� 0 _script  � >J�W�
� 
lnfd
� .sysoexecTEXT���     TEXT�� #�E�O�e  
��%E�Y hO��%�%�%�%j � �] >�� 0 _application _Application� 
 A�� � ���������  0 defaultbrowser defaultBrowser� 0 pathto pathTo� 0 pathtoid pathToID� 0 
_frontmost  � $0 frontmostprocess frontmostProcess� 00 frontmostfileofprocess frontmostFileOfProcess� 0 frontmostfile frontmostFile� (0 frontmostdirectory frontmostDirectory� ������  0 defaultbrowser defaultBrowser�  �   �� 	0 _item   ���~�}�|�{��z�y�x�w�v�u�t�s��r�q�p�
� 
plif
�~ afdrpref
�} 
rtyp
�| 
utxt
�{ .earsffdralis        afdr
�z 
pcnt
�y 
valL
�x 
reco�w 0 
lshandlers 
LSHandlers
�v 
kocl
�u 
cobj
�t .corecnte****       ****�s (0 lshandlerurlscheme LSHandlerURLScheme�r $0 lshandlerroleall LSHandlerRoleAll�q  �p  � W� N*����l �%/ > ;*�,�,�&�,[��l kh   ��,�  �a ,EY hW X  h[OY��UUOa   �o��n�m	
�l�o 0 pathto pathTo�n �k�k   �j�j 	0 _name  �m  	 �i�h�i 	0 _name  �h 	0 _path  
 �g���f�e�d�c�b�a�`�_
�g 
msng
�f 
strq�e 0 
bashscript 
bashScript�d  �c  
�b 
capp
�a .earsffdralis        afdr
�` 
psxp
�_ 
ctxt�l 0�E�O )��%�,%fl+ E�W X  *�/j �,�&E�O� �^%�]�\�[�^ 0 pathtoid pathToID�] �Z�Z   �Y�Y 0 _id  �\   �X�W�X 0 _id  �W 	0 _path   �V;�U�T�S�R�Q�P�O�N�M
�V 
msng
�U 
strq�T 0 
bashscript 
bashScript�S  �R  
�Q 
capp
�P kfrmID  
�O .earsffdralis        afdr
�N 
psxp
�M 
ctxt�[ /�E�O )��,%fl+ E�W X  *��0j �,�&E�O� �L^�K�J�I�L 0 
_frontmost  �K  �J     �H�G�F�E�D
�H 
capp
�G appfegfp
�F 
rtyp
�E 
ctxt
�D .earsffdralis        afdr�I *����l /E �Cx�B�A�@�C $0 frontmostprocess frontmostProcess�B  �A     ��?�>
�? 
pcap  
�> 
pisf�@ � *�k/�[�,\Ze81EU �=��<�;�:�= 00 frontmostfileofprocess frontmostFileOfProcess�< �9�9   �8�8 0 _process  �;   �7�6�5�7 0 _process  �6 0 ff  �5 0 _res   	�4��3�2�1�0�/�.�4 0 ff   �-�,�+�*
�- .ascrinit****      � **** k      � � � ��)�)  �,  �+   �(�'�&�%�( 0 p P�' 0 ff1  �& 0 ff2  �% 0 ff3   �$ !�$ 0 p P �#��"�!"#� �# 0 ff1  �"  �!  " �� 0 _applib  # ��������
� 
bnid� 0 include  �  �  
� 
pnam� 0 frontmostfile frontmostFile�  O )�b   �,%k+ E�W $X   )�b   �,%k+ E�W 	X  fO �j+ W X  hOf  ����$%�� 0 ff2  �  �  $  % 	���������
� 
capp
� 
bnid
� kfrmID  
� 
docu
� 
ppth
� 
psxf
� 
alis�  �  � +  *�b   �,E�0 *�k/�,�&�&UW X  hOf! ��
�	&'�� 0 ff3  �
  �	  & ���� 0 w W� 0 attribs  � 0 i I' 8����� ���� ������������������
� 
cwin
� 
kocl
� 
cobj
� .corecnte****       ****
�  
attr
�� 
pALL
�� 
pnam
�� 
valL
�� 
msng
�� 
bool�� 0 _text _Text�� 0 	urldecode 	URLDecode
�� 
psxf
�� 
alis��  ��  � r� k b \b   �-[��l kh  ��-�,E�O 9�[��l kh ��,� 	 	��,��& )�,��,k+ �&�&Y h[OY��[OY��W X  hUOf�* b   �OL OL OL �3 0 ff1  
�2 
pcls
�1 
bool�0 0 ff2  �/ 0 ff3  
�. 
msng�: c��K S�O�j+ E�O��,� 	 �f �& �j+ E�Y hO��,� 	 �f �& �j+ E�Y hO��,� 	 �f �& �E�Y hO� �������()���� 0 frontmostfile frontmostFile��  ��  ( ���� 0 p P) �������
�� 
pcap
�� 
pisf�� 00 frontmostfileofprocess frontmostFileOfProcess�� � *�k/�[�,\Ze81E�UO)�k+  �������*+���� (0 frontmostdirectory frontmostDirectory��  ��  * ���� 0 f  + 
��������������������� 0 frontmostfile frontmostFile
�� 
msng
�� .sysonfo4asfe        file
�� 
asdr
�� 
alis
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
psxf�� 8)j+  E�O�� '�j �,E 	��&Y ��,�,%j �&�&Y hO�� ��� >,�� 0 _file _File, 
 A-./012345- ������������������ 0 basename  �� 0 dirname  �� 0 filename  �� 0 findbin findBin�� 0 onlyext onlyExt�� 0 
toshellarg 
toShellArg�� 0 
scriptname 
scriptName�� 0 
uniquefile 
uniqueFile. ������67���� 0 basename  �� ��8�� 8  ���� 	0 _path  ��  6 ���� 	0 _path  7 ������"����
�� 
pcls
�� 
alis
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,�  
��,E�Y hO��,%j / ��:����9:���� 0 dirname  �� ��;�� ;  ���� 	0 _path  ��  9 ���� 	0 _path  : ������P��
�� 
pcls
�� 
alis
�� 
psxp
� 
strq
� .sysoexecTEXT���     TEXT�� ��,�  
��,E�Y hO��,%j 0 �h��<=�� 0 filename  � �>� >  �� 	0 _path  �  < �� 	0 _path  = �������
� 
pcls
� 
alis
� 
psxp
� 
strq
� .sysoexecTEXT���     TEXT� ��,�  
��,E�Y hO��,%�%j 1 ����?@�� 0 findbin findBin� �A� A  �� 	0 _name  �  ? ��� 	0 _name  � 0 _bin  @ ��������
� 
msng
� 
strq� 0 
bashscript 
bashScript�  �  � 0�E�O )��,%�%fl+ E�W X  hO��  �Y hO�2 ����BC�� 0 onlyext onlyExt� �D� D  ��� 0 _f  � 0 _extensions  �  B ����� 0 _f  � 0 _extensions  � 0 	_filtered  � 0 f  C ������
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
pcnt� =��&E�O� 3jvE�O &�[��l kh ���, ��,�6GY h[OY��O��&U3 �+��EF�� 0 
toshellarg 
toShellArg� �G� G  �� 0 _f  �  E ���� 0 _f  � 
0 _paths  � 0 f  F 
U5���A���P
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ctxt
� 
psxp
� 
strq� <� 8�E�O !�[��l kh ��%��&�,�,%E�[OY��O��  fY hO�U4 �i��HI�� 0 
scriptname 
scriptName�  �  H  I ��
� .earsffdralis        afdr� 0 filename  � ))j  k+ 5 �~��}�|JK�{�~ 0 
uniquefile 
uniqueFile�} �zL�z L  �y�y 
0 config  �|  J �x�w�v�u�x 
0 config  �w 0 i I�v 0 _parent  �u 	0 _name  K �t��s��r��q�p�o�n�m��t 
0 prefix  �s 
0 suffix  �r 
�q 
FTPc
�p 
ctxt
�o 
psxp
�n 
psxf
�m .coredoexbool        obj �{ R������%E�OlE�O� ?��,�&�,E�O��,��,%E�O %h��%�&j 
��,�%�%��,%E�O�kE�[OY��O�U� �l� >M�l 0 _list _ListM  ANOPQRSN �k�j�i�h�g�k 0 join  �j 0 indexof indexOf�i 0 
bubblesort 
bubbleSort�h 0 	quicksort 	quickSort�g 
0 unique  O �f�e�dTU�c�f 0 join  �e �bV�b V  �a�`�a 0 _l  �` 
0 _delim  �d  T �_�^�]�\�[�Z�_ 0 _l  �^ 
0 _delim  �] 0 _d  �\ 0 _result  �[ 0 err_msg  �Z 0 err_num  U �Y�X�W�VW�U
�Y 
ascr
�X 
txdl
�W 
ctxt�V 0 err_msg  W �T�S�R
�T 
errn�S 0 err_num  �R  
�U 
errn�c 4��,E�O ��&��,FO��&E�W X  ���,FO)�l�O���,FO�P �Qj�P�OXY�N�Q 0 indexof indexOf�P �MZ�M Z  �L�K�L 0 _l  �K 0 _e  �O  X �J�I�H�J 0 _l  �I 0 _e  �H 0 i IY �G�F
�G 
leng
�F 
cobj�N %  k��,Ekh ��/�  �Y h[OY��OiQ �E��D�C[\�B�E 0 
bubblesort 
bubbleSort�D �A]�A ]  �@�@ 0 thelist theList�C  [ �?�>�=�<�;�:�? 0 thelist theList�> 0 bs  �= 0 thecount theCount�< 0 indexa indexA�; 0 indexb indexB�: 0 temp  \ �9�^�8�7�6�9 0 bs  ^ �5_�4�3`a�2
�5 .ascrinit****      � ****_ k     bb ��1�1  �4  �3  ` �0�0 	0 alist  a �/�/ 	0 alist  �2 b   ��8 	0 alist  
�7 
leng
�6 
cobj�B ���K S�O��,�,E�O�l 
��,EY hO X�kih  Ik�kkh ��,�/��,�k/ (��,�/E�O��,�k/��,�/FO���,�k/FY h[OY��[OY��O��,ER �.�-�,cd�+�. 0 	quicksort 	quickSort�- �*e�* e  �)�) 0 thelist theList�,  c �(�'�( 0 thelist theList�' 0 bs  d �&*f�%�$�#�& 0 bs  f �"g�!� hi�
�" .ascrinit****      � ****g k     jj ,kk 1ll w��  �!  �   h ���� 	0 alist  � 0 qsort Qsort� 0 
qpartition 
Qpartitioni �mn� 	0 alist  m �4��op�� 0 qsort Qsort� �q� q  ��� 0 	leftindex 	leftIndex� 0 
rightindex 
rightIndex�  o ����� 0 	leftindex 	leftIndex� 0 
rightindex 
rightIndex� 	0 pivot  � 0 newpivot newPivotp ��� 0 
qpartition 
Qpartition� 0 qsort Qsort� A�� 9��l"�E�O*���m+  E�O*��kl+ Ec   O*�k�l+ Ec   Y hOPn �z��
rs�	� 0 
qpartition 
Qpartition� �t� t  ���� 0 	leftindex 	leftIndex� 0 
rightindex 
rightIndex� 	0 pivot  �
  r ����� ����� 0 	leftindex 	leftIndex� 0 
rightindex 
rightIndex� 	0 pivot  � 0 
pivotvalue 
pivotValue�  0 temp  �� 0 	tempindex 	tempIndex�� 0 pointer  s ������ 	0 alist  
�� 
cobj�	 �b  �,�/E�Ob  �,�/E�Ob  �,�/b  �,�/FO�b  �,�/FO�E�O X��kkh b  �,�/� :b  �,�/E�Ob  �,�/b  �,�/FO�b  �,�/FO�kE�Y h[OY��Ob  �,�/E�Ob  �,�/b  �,�/FO�b  �,�/FO�� b   �OL OL �% 	0 alist  
�$ 
leng�# 0 qsort Qsort�+ (��K S�O��,�,k �k��,�,l+ Y hO��,ES ��	B����uv���� 
0 unique  �� ��w�� w  ���� 0 _l  ��  u �������� 0 _l  �� 0 _result  �� 0 i Iv ������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� .jvE�O $�[��l kh �� 
��%E�Y h[OY��O�� ��	` >x�� 0 _sound _Soundx  Ayz{y ������ 0 playfile playFile�� 0 play  z ��	�����|}���� 0 playfile playFile�� ��~�� ~  ������ 	0 _path  �� 0 _background  ��  | �������� 	0 _path  �� 0 _background  �� 0 _script  } ������	�����
�� 
pcls
�� 
alis
�� 
psxp
�� 
strq�� 0 
bashscript 
bashScript�� #��,�  
��,E�Y hO��,%E�O)��l+ { ��	���������� 0 play  �� ����� �  ���� 	0 _path  ��   ���� 	0 _path  � ���� 0 playfile playFile�� 	)�el+  � ��	� >��� 0 _text _Text�  A������������� ������������������������ 0 padleft padLeft�� 0 padright padRight�� 0 rand  �� 0 replace  �� 	0 split  �� 0 template  �� 0 trim  �� 0 trimleft trimLeft�� 0 	trimright 	trimRight�� 0 	urldecode 	URLDecode�� 0 	urlencode 	URLEncode� ��
���������� 0 padleft padLeft�� ����� �  �������� 0 _txt  �� 0 
_character  �� 0 _length  ��  � �������� 0 _txt  �� 0 
_character  � 0 _length  � 0 i I� ��
� 
ctxt
� 
leng�� )��&E�O��&E�O���,E�O �kh��%E�[OY��O�� �
f������ 0 padright padRight� ��� �  ���� 0 _txt  � 0 
_character  � 0 _length  �  � ����� 0 _txt  � 0 
_character  � 0 _length  � 0 i I� ��
� 
ctxt
� 
leng� )��&E�O��&E�O���,E�O �kh��%E�[OY��O�� �
������� 0 rand  � ��� �  �� 0 _length  �  � ����� 0 _length  � 0 _s  � 0 _txt  � 0 i I� �
����������� 0 _s  � �������
� .ascrinit****      � ****� k     ��� 
��� ���  �  �  � ��� 0 _l  � 0 _c  � B
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�	!%)-159=AEIMQUY]aeimquy}����������������� >� 0 _l  
� .corecnte****       ****� 0 _c  � �����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %a &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >v�O�j @�� 0 _l  
� 
cobj
� 
from
� 
to  � 0 _c  � 
� .sysorandnmbr    ��� nmbr� 3��K S�O�E�O "k�kh ���,�*�k��,� 
/%E�[OY��O�� �������� 0 replace  � ��� �  ���� 0 _txt  � 0 _search  � 0 _replace  �  � ������ 0 _txt  � 0 _search  � 0 _replace  � 0 _d  � 0 _l  � ����
� 
ascr
� 
txdl
� 
citm
� 
ctxt� '��,E�O���,FO��-E�O���,FO��&E�O���,FO�� �<�~�}���|� 	0 split  �~ �{��{ �  �z�y�z 0 _txt  �y 
0 _delim  �}  � �x�w�v�u�x 0 _txt  �w 
0 _delim  �v 0 _d  �u 0 _result  � �t�s�r
�t 
ascr
�s 
txdl
�r 
citm�| ��,E�O���,FO��-E�O���,FO�� �q��p�o���n�q 0 template  �p �m��m �  �l�k�l 0 _tpl  �k 	0 _data  �o  � �j�i�h�g�f�e�j 0 _tpl  �i 	0 _data  �h 0 _d  �g 0 _result  �f 0 _var  �e 0 _matches  � 	�d�c�b�a�`��_��^
�d 
ascr
�c 
txdl
�b 
kocl
�a 
cobj
�` .corecnte****       ****
�_ 
ctxt
�^ 
citm�n N��,E�O�E�O 9�[��l kh ��k/�&%�%��,FO��-E�O��l/�&��,FO��&E�[OY��O���,FO�� �]�\�[���Z�] 0 trim  �\ �Y��Y �  �X�W�X 0 _txt  �W 
0 _chars  �[  � �V�U�V 0 _txt  �U 
0 _chars  � �T�S�T 0 	trimright 	trimRight�S 0 trimleft trimLeft�Z ))��l+  �l+ � �R(�Q�P���O�R 0 trimleft trimLeft�Q �N��N �  �M�L�M 0 _txt  �L 
0 _chars  �P  � �K�J�K 0 _txt  �J 
0 _chars  � �I�H�G@�F�E�D�C�B�A�@
�I 
pcls
�H 
list
�G 
bool
�F 
tab 
�E 
lnfd
�D 
ret 
�C .sysontocTEXT       shor�B 
�A 
cha 
�@ 
ctxt�O E��,�
 �jv �& ����jj �vE�Y hO h���k/�[�\[Zl\Zi2E�[OY��O�� �?o�>�=���<�? 0 	trimright 	trimRight�> �;��; �  �:�9�: 0 _txt  �9 
0 _chars  �=  � �8�7�8 0 _txt  �7 
0 _chars  � �6�5�4��3�2�1�0�/�.�-�,
�6 
pcls
�5 
list
�4 
bool
�3 
tab 
�2 
lnfd
�1 
ret 
�0 .sysontocTEXT       shor�/ 
�. 
cha 
�- 
ctxt�,���< E��,�
 �jv �& ����jj �vE�Y hO h���i/�[�\[Zk\Z�2E�[OY��O�� �+��*�)���(�+ 0 	urldecode 	URLDecode�* �'��' �  �&�& 0 _txt  �)  � �%�$�#�"�!� ��% 0 _txt  �$ 0 sdst sDst�# 0 shex sHex�" 0 i I�! 0 c C�  0 icval1 iCVal1� 0 icval2 iCVal2� ��������������
� 
leng
� 
cha 
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
bool� 
� .sysontocTEXT       shor�( ��E�O�E�OkE�O �h���,��/E�O��  
��%E�Y o��  d���,l fY hO*��k/�� 
kE�O*��l/�� 
kE�O�i 
 �i �& fY hO��� �j %E�O�lE�Y ��%E�O�kE�[OY�oO�� �������� 0 	urlencode 	URLEncode� ��� �  �� 0 _txt  �  � 	������
�	��� 0 _txt  � 0 _result  � 0 eachchar eachChar� 0 usechar useChar� 0 eachcharnum eachCharNum�
 0 firstdig firstDig�	 0 	seconddig 	secondDig� 0 anum aNum� 0 numhex numHex� ��������� ������������������������������������
� 
cha 
� 
kocl
� 
cobj
� .corecnte****       ****
� .sysoctonshor       TEXT�  �  *�� _
�� 
bool�� -�� .�� 0�� 9�� A�� Z�� a�� z�� 
�� 
dire
�� olierndD
�� .sysorondlong        doub�� 	�� 7
�� .sysontocTEXT       shor
�� 
ctxt��E�O ���-[��l kh �E�O�j E�O��  �E�Y Ť�	 ���&	 ��
 ���&�&	 ��
 ���&�&	 ��
 	�a �&�&	 �a 
 	�a �&�& p�a !a a l E�O�a #E�O�a  �a E�O�j E�Y hO�a  �a E�O�j E�Y hOa �a &%�a &%a &E�O�E�Y hO��%a &E�[OY�O�� ��2 >��� 
0 _ui _UI� 
 A���������� ������������������ 0 	menuclick 	menuClick�� 0 resizewindow resizeWindow�� (0 resizewindowcenter resizeWindowCenter�� 0 elementbounds elementBounds�� 0 desktopbounds desktopBounds�� 0 
dockbounds 
dockBounds�� 0 dockposition dockPosition�� 0 screenbounds screenBounds� ��g���������� 0 	menuclick 	menuClick�� ����� �  ���� 0 
_menu_list  ��  � ���������� 0 
_menu_list  �� 0 	menuclick 	menuClick�� 0 _app  �� 0 _top  � ��m������������������� 0 	menuclick 	menuClick� �����������
�� .ascrinit****      � ****� k     �� m����  ��  ��  � ���� 0 recurse  � �� ��o���������� 0 recurse  �� ����� �  ������ 0 
_menu_list  �� 0 _parent  ��  � �������� 0 
_menu_list  �� 0 _parent  �� 	0 _item  � ����������
�� 
cobj
�� 
leng
�� 
menI
� 
menE� 0 recurse  
� .prcsclicuiel    ��� uiel�� 9��k/E�O� .��,k )�[�\[Zl\Z��,2��/�/l+ Y 
��/j U�� L  
�� 
leng
�� 
cobj
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE�� 0 recurse  �� Y��K S�O��,m 	)j�Y hO�[�\[Zk\Zl2E[�k/E�Z[�l/E�ZO� !��[�\[Zm\Z��,2*�/�k/�/�/l+ U� �������� 0 resizewindow resizeWindow� ��� �  ���� 0 _window  � 
0 _width  � 0 _height  �  � ������ 0 _window  � 
0 _width  � 0 _height  � 0 _w  � 0 _new  � ������������ 0 elementbounds elementBounds� 0 x1  � 0 y1  � 0 x2  � 0 y2  � 
� 
msng
� 
long
� 
bool
� 
cobj
� 
pbnd� a)�k+  E�O��,��,��,��,�vE�O��	 	��&j�& ��,���m/FY hO��	 	��&j�& ��,����/FY hO���,FO�� �i������ (0 resizewindowcenter resizeWindowCenter� ��� �  ���� 0 _window  � 
0 _width  � 0 _height  �  � ������� 0 _window  � 
0 _width  � 0 _height  � 0 _w  � 0 _new  � 0 d  � ������������� 0 elementbounds elementBounds� 0 x1  � 0 y1  � 0 x2  � 0 y2  � 
� 
long� 	0 width  
� .sysorondlong        doub
� 
cobj� 
0 height  
� 
pbnd� �)�k+  E�O��,��,��,��,�vE�O��&j (���,l!j E�O��,���k/FO��,���m/FY hO��&j (���,l!j E�O��,���l/FO��,����/FY hO���,FO�� �	������ 0 elementbounds elementBounds� ��� �  �� 0 _element  �  � ������� 0 _element  � 0 _b  � 0 p P� 0 s S� 0 error_message  � 0 error_number  � �~�}�|�{�z�y�x�w�v�u�t�sl�r�q�p��o�n
�~ 
pbnd
�} 
list�| 0 x1  
�{ 
rslt
�z 
cobj�y 0 y1  �x 0 x2  �w 0 y2  �v �u �t  �s  
�r 
posn
�q 
ptsz�p 0 error_message  � �m�l�k
�m 
errn�l 0 error_number  �k  �o 	0 width  �n 
0 height  � � #��,�&O���k/���l/���m/����/�E�W KX 
  <� 4��,�&E�O��,�&E�O��k/��l/��k/��k/��l/��l/�E�UW 	X  fO�a ��,��,a ��,��,�%� �j��i�h���g�j 0 desktopbounds desktopBounds�i  �h  � �f�e�d�c�b�f 0 _s  �e 0 _m  �d 0 _b  �c 0 _d  �b 0 _o  � �a��`��_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q+�P@�O�a 0 screenbounds screenBounds
�` 
pcap
�_ 
uiel
�^ 
pcls
�] 
mbar
�\ 
rslt�[ 0 elementbounds elementBounds�Z 0 x1  �Y 0 y1  �X 
0 height  �W 0 x2  �V 0 y2  �U 
�T 
dpas
�S 
dahd�R 0 
dockbounds 
dockBounds�Q 0 dockposition dockPosition�P 	0 width  �O �g �)j+  E�O� *��/ *�k/�[�,\Z�81EUUO)�k+ 	E�O��,��,��,���,��,�E�O� *a ,a ,EUO�e \)j+ E�O)j+ E�O�a   ��,��,��,FY 3�a   ��,�a ,��,FY �a   ��,�a ,��,FY hY hO�a ��,��,��,��,a %� �N��M�L���K�N 0 
dockbounds 
dockBounds�M  �L  �  � ��J��I�H�G
�J 
pcap
�I 
uiel
�H 
rslt�G 0 elementbounds elementBounds�K � *��/ *�k/EUUO)�k+ � �F��E�D���C�F 0 dockposition dockPosition�E  �D  �  � ��B�A�@
�B 
dpas
�A 
dpse
�@ 
ctxt�C � 
*�,�,�&U� �?��>�=���<�? 0 screenbounds screenBounds�>  �=  �  � ��;�:�9
�; 
desk
�: 
cwin�9 0 elementbounds elementBounds�< � )*�,�,k+ U ? �8��7�6���5
�8 .aevtoappnull  �   � ****� k     :��  ��  !�4�4  �7  �6  �  � �3�2�1 ;�0�/�. 6�-�,�+�3 0 _application _Application�2 0 frontmostfile frontmostFile�1 0 f  
�0 
pcls
�/ 
alis
�. 
kind
�- .aevtodocnull  �    alis
�, .miscslctnull���    obj 
�+ .miscactvnull��� ��� obj �5 ;b   �,j+ E�O� )��,�  ��,�  
�j Y �j 	Y hO*j 
Uascr  ��ޭ