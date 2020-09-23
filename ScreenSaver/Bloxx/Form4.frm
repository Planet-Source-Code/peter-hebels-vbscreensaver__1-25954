VERSION 5.00
Begin VB.Form Form4 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Info"
   ClientHeight    =   1965
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4590
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1965
   ScaleWidth      =   4590
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "ok"
      Height          =   375
      Left            =   1080
      TabIndex        =   2
      Top             =   1560
      Width           =   2415
   End
   Begin VB.Label Label3 
      Caption         =   "Iam not responsible for any damages caused by this program"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   960
      Width           =   4455
   End
   Begin VB.Label Label2 
      Caption         =   "Visit ""www.grworld.com/megagsite/peterspagina.html"" for updates, also you can download Mp3CoolPlay from this site."
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Bloxx version 1.0 Made by Peter hebels"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4575
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub
