#pragma checksum "..\..\Filiallar_bazasi_ucont.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "4E7536C4C5F434DF5D5FDFB552DF0225078195106E61014E6C38E8E89FA9AA9F"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
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
    /// Filiallar_bazasi_ucont
    /// </summary>
    public partial class Filiallar_bazasi_ucont : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 65 "..\..\Filiallar_bazasi_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox comboFilial;
        
        #line default
        #line hidden
        
        
        #line 83 "..\..\Filiallar_bazasi_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ScrollViewer scrollViewer;
        
        #line default
        #line hidden
        
        
        #line 93 "..\..\Filiallar_bazasi_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataGridFilillar;
        
        #line default
        #line hidden
        
        
        #line 151 "..\..\Filiallar_bazasi_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid GridPage;
        
        #line default
        #line hidden
        
        
        #line 156 "..\..\Filiallar_bazasi_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnPrevius;
        
        #line default
        #line hidden
        
        
        #line 192 "..\..\Filiallar_bazasi_ucont.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnNext;
        
        #line default
        #line hidden
        
        
        #line 230 "..\..\Filiallar_bazasi_ucont.xaml"
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
            System.Uri resourceLocater = new System.Uri("/SotuvPlatformasi;component/filiallar_bazasi_ucont.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Filiallar_bazasi_ucont.xaml"
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
            
            #line 31 "..\..\Filiallar_bazasi_ucont.xaml"
            ((System.Windows.Controls.TextBox)(target)).TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.TextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.comboFilial = ((System.Windows.Controls.ComboBox)(target));
            
            #line 73 "..\..\Filiallar_bazasi_ucont.xaml"
            this.comboFilial.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.comboFilial_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.scrollViewer = ((System.Windows.Controls.ScrollViewer)(target));
            return;
            case 4:
            this.dataGridFilillar = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 5:
            this.GridPage = ((System.Windows.Controls.Grid)(target));
            return;
            case 6:
            this.btnPrevius = ((System.Windows.Controls.Button)(target));
            
            #line 159 "..\..\Filiallar_bazasi_ucont.xaml"
            this.btnPrevius.Click += new System.Windows.RoutedEventHandler(this.btnPrevius_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.btnNext = ((System.Windows.Controls.Button)(target));
            
            #line 193 "..\..\Filiallar_bazasi_ucont.xaml"
            this.btnNext.Click += new System.Windows.RoutedEventHandler(this.btnNext_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.BtnAsosiy = ((System.Windows.Controls.Button)(target));
            
            #line 230 "..\..\Filiallar_bazasi_ucont.xaml"
            this.BtnAsosiy.Click += new System.Windows.RoutedEventHandler(this.BtnAsosiy_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

