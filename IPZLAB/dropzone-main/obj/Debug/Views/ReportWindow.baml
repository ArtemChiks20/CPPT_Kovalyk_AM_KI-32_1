   M S B A M L   `   `   `  ����C  ?DropZone, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:DropZone.ViewsDropZone.Views  5      9!clr-namespace:DropZone.ViewModelsDropZone.ViewModels  5      !    DropZone.Views.ReportWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:DropZone.Views     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      8
viewModels!clr-namespace:DropZone.ViewModels     5      $	��500��5
      $	��450��5        � ShowInTaskbar  .   � WindowStartupLocation$ CenterScreen=�5       � Title 5	      �� *Title+.��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� -   5        ��5      �� *Files+��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property �@�ToolTip �� Value 5      �� 5      ��6(   �� *Path+5      5       �� View 5       �� 5!      .P�5"      ��  �� Width$
 Auto��5#      $
��Name��5%      	 �� DisplayMemberBinding	 5$      �� *Name+5%      �� 5&      $ 80��5'      $
��Size��5)      	 5(      �� *Size+5)      5*      5,      �� 5-   
   $��1��6   $��10q�6"   .+�5.      �� -   5        $��Right=�5.      .��5/      �� 
 �� Padding$
 	20,0,20,0q�6   Close67   50      51      52      53      