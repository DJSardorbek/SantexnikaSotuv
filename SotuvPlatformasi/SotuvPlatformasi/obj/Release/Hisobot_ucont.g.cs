﻿#pragma checksum "..\..\Hisobot_ucont.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "11690032D4C96BFAA6A5B3E7412B60878B70B36134829BF88A0E618892F55A1D"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using SotuvPlatformasi;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SotuvPlatformasi {
    
    
    /// <summary>
    /// Hisobot_ucont
    /// </summary>
    public partial class Hisobot_ucont : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 27 "..\..\Hisobot_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtJamiSavdo_uz;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\Hisobot_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtJamiSavdo_dol;
        
        #line default
        #line hidden
        
        
        #line 51 "..\..\Hisobot_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker DatePickerDan;
        
        #line default
        #line hidden
        
        
        #line 58 "..\..\Hisobot_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker DatePickerGacha;
        
        #line default
        #line hidden
        
        
        #line 72 "..\..\Hisobot_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ScrollViewer scrollViewer;
        
        #line default
        #line hidden
        
        
        #line 82 "..\..\Hisobot_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataGridHisobot;
        
        #line default
        #line hidden
        
        
        #line 150 "..\..\Hisobot_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnAsosiy;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SotuvPlatformasi;component/hisobot_ucont.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Hisobot_ucont.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 8 "..\..\Hisobot_ucont.xaml"
            ((SotuvPlatformasi.Hisobot_ucont)(target)).Loaded += new System.Windows.RoutedEventHandler(this.UserControl_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.txtJamiSavdo_uz = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.txtJamiSavdo_dol = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 4:
            this.DatePickerDan = ((System.Windows.Controls.DatePicker)(target));
            
            #line 56 "..\..\Hisobot_ucont.xaml"
            this.DatePickerDan.SelectedDateChanged += new System.EventHandler<System.Windows.Controls.SelectionChangedEventArgs>(this.DatePickerDan_SelectedDateChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.DatePickerGacha = ((System.Windows.Controls.DatePicker)(target));
            
            #line 63 "..\..\Hisobot_ucont.xaml"
            this.DatePickerGacha.SelectedDateChanged += new System.EventHandler<System.Windows.Controls.SelectionChangedEventArgs>(this.DatePickerGacha_SelectedDateChanged);
            
            #line default
            #line hidden
            return;
            case 6:
            this.scrollViewer = ((System.Windows.Controls.ScrollViewer)(target));
            return;
            case 7:
            this.dataGridHisobot = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 8:
            this.BtnAsosiy = ((System.Windows.Controls.Button)(target));
            
            #line 150 "..\..\Hisobot_ucont.xaml"
            this.BtnAsosiy.Click += new System.Windows.RoutedEventHandler(this.BtnAsosiy_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

