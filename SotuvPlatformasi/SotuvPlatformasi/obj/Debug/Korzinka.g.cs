#pragma checksum "..\..\Korzinka.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "FE6D99284D87799BE786780C0D8F080B008899B1472A94FFC2A98CACDF94E2A5"
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
    /// Korzinka
    /// </summary>
    public partial class Korzinka : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 53 "..\..\Korzinka.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnExit;
        
        #line default
        #line hidden
        
        
        #line 100 "..\..\Korzinka.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtProduct;
        
        #line default
        #line hidden
        
        
        #line 103 "..\..\Korzinka.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtBarcode;
        
        #line default
        #line hidden
        
        
        #line 106 "..\..\Korzinka.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtQuantityOmbor;
        
        #line default
        #line hidden
        
        
        #line 110 "..\..\Korzinka.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtPrice;
        
        #line default
        #line hidden
        
        
        #line 113 "..\..\Korzinka.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtValUl;
        
        #line default
        #line hidden
        
        
        #line 116 "..\..\Korzinka.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtKurs;
        
        #line default
        #line hidden
        
        
        #line 120 "..\..\Korzinka.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtQuantity;
        
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
            System.Uri resourceLocater = new System.Uri("/SotuvPlatformasi;component/korzinka.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Korzinka.xaml"
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
            
            #line 8 "..\..\Korzinka.xaml"
            ((SotuvPlatformasi.Korzinka)(target)).KeyDown += new System.Windows.Input.KeyEventHandler(this.Window_KeyDown);
            
            #line default
            #line hidden
            
            #line 8 "..\..\Korzinka.xaml"
            ((SotuvPlatformasi.Korzinka)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.btnExit = ((System.Windows.Controls.Button)(target));
            
            #line 53 "..\..\Korzinka.xaml"
            this.btnExit.Click += new System.Windows.RoutedEventHandler(this.btnExit_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.txtProduct = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.txtBarcode = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.txtQuantityOmbor = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.txtPrice = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.txtValUl = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.txtKurs = ((System.Windows.Controls.TextBox)(target));
            return;
            case 9:
            this.txtQuantity = ((System.Windows.Controls.TextBox)(target));
            
            #line 120 "..\..\Korzinka.xaml"
            this.txtQuantity.KeyDown += new System.Windows.Input.KeyEventHandler(this.txtQuantity_KeyDown);
            
            #line default
            #line hidden
            return;
            case 10:
            
            #line 164 "..\..\Korzinka.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

