   M S B A M L   `   `   `  ����C  ?DropZone, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:DropZone.ConvertersDropZone.Converters  5      /clr-namespace:DropZone.ViewsDropZone.Views  5      9!clr-namespace:DropZone.ViewModelsDropZone.ViewModels  5	      #    DropZone.Views.TerminalWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8
converters!clr-namespace:DropZone.Converters     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:DropZone.Views     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      8
viewModels!clr-namespace:DropZone.ViewModels     5	      $	��800��5      $	��450��5        � ShowInTaskbar  .   � WindowStartupLocation$ CenterOwner=�5       � Title 5
      �� *Title+ � 	Resources 5      3  -DropZone.Converters.BoolToVisibilityConverter   BoolToVisibilityConverter��%   &	          5   
   6/   5      .��5      �� -   5         ��Name$ scrollViewer��5      .��5   
   �� -   5         � Cursor$ IBeam��5      ���#2d0922 �� Orientation$ Vertical=�5       +� FocusedElement 5      ��  �� ElementName$ txtInput��.+�5      �� $��-3,0,0,0q�5      
������ $��0q�5      $ Arrow��5       $��16(�5!      
�������	 �� 
IsReadOnly	 . y�5$      �� *	HasOutput+
 �� 	Converter#
 [   �� ConverterParameter$ Visible,Collapsed��. �5%      /� .T�5&      J� -   5         J�Name$ 	paragraph��5&         
UbuntuMono#��[ 63   5'      5(      � 5)       � ColumnDefinitions 5*      �� 5+      $
��Auto �6'   66   �� 5,      $��* �6'   63   .+�5.      �� $��0,0,2,0q�5/      $��Center=�50      #��[ 51      $
��Bold"�52      
�������>55      �� 56      -   5         ��Name$ txtInput��59      $��1��58      
������ $��0q�5;       �� 
CaretBrush
 �����#��[ 5=      $��16(�5>      
�������$ �� HorizontalScrollBarVisibility$ Hidden=�5@       �� TextWrapping$
 Wrap=�5B      " �� VerticalScrollBarVisibility$ Hidden=�5C      5D      5E      5F      5G      