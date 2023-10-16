object frmDetalheConsumoAPIGitHub: TfrmDetalheConsumoAPIGitHub
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Detalhe'
  ClientHeight = 235
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 767
    Height = 194
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 57
    ExplicitHeight = 204
    object edLogin: TcxTextEdit
      Left = 16
      Top = 37
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clSilver
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 18
      Caption = 'Login'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edUrl: TcxTextEdit
      Left = 143
      Top = 37
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clSilver
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 298
    end
    object cxLabel2: TcxLabel
      Left = 143
      Top = 18
      Caption = 'URL'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edOrganizationsUrl: TcxTextEdit
      Left = 447
      Top = 37
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 447
      Top = 18
      Caption = 'Organizations URL'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edReposUrl: TcxTextEdit
      Left = 16
      Top = 93
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 298
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 74
      Caption = 'Repos URL'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edTipo: TcxTextEdit
      Left = 320
      Top = 93
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 320
      Top = 74
      Caption = 'Tipo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edCompaninha: TcxTextEdit
      Left = 574
      Top = 93
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 169
    end
    object cxLabel7: TcxLabel
      Left = 574
      Top = 74
      Caption = 'Companinha'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edBlog: TcxTextEdit
      Left = 16
      Top = 151
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 181
    end
    object cxLabel8: TcxLabel
      Left = 16
      Top = 132
      Caption = 'Blog'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edLocalixacao: TcxTextEdit
      Left = 203
      Top = 151
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 147
    end
    object cxLabel9: TcxLabel
      Left = 203
      Top = 132
      Caption = 'Localiza'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edEmail: TcxTextEdit
      Left = 356
      Top = 151
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 227
    end
    object cxLabel10: TcxLabel
      Left = 356
      Top = 132
      Caption = 'Email'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edTwitter: TcxTextEdit
      Left = 589
      Top = 151
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 154
    end
    object cxLabel11: TcxLabel
      Left = 589
      Top = 132
      Caption = 'Twitter'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edNome: TcxTextEdit
      Left = 447
      Top = 93
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 447
      Top = 74
      Caption = 'Nome'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -36
    ExplicitWidth = 882
    DesignSize = (
      767
      41)
    object cxLabel12: TcxLabel
      Left = 8
      Top = 5
      Caption = 'DETALHE API'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object btnFechar: TcxButton
      Left = 725
      Top = 6
      Width = 34
      Height = 29
      Anchors = [akTop, akRight]
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000101010200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001010102000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000009090912686868C82828284E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002A2A2A52686868C80A0A0A130000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000090909126A6A6ACD848484FF818181F92828284E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002A2A2A52818181F9848484FF6B6B6BCE0A0A
        0A13000000000000000000000000000000000000000000000000000000000000
        00000000000001010101676767C7848484FF848484FF848484FF818181F92828
        284E000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A52818181F9848484FF848484FF848484FF6868
        68C8010101010000000000000000000000000000000000000000000000000000
        000000000000000000002828284D818181F9848484FF848484FF848484FF8181
        81F92828284E0000000000000000000000000000000000000000000000000000
        0000000000002A2A2A52818181F9848484FF848484FF848484FF818181F92626
        2649000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002828284D818181F9848484FF848484FF8484
        84FF818181F92828284E00000000000000000000000000000000000000000000
        00002A2A2A52818181F9848484FF848484FF848484FF818181F9262626490000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002828284D818181F9848484FF8484
        84FF848484FF818181F92929294F000000000000000000000000000000002A2A
        2A52818181F9848484FF848484FF848484FF818181F926262649000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002828284D818181F98484
        84FF848484FF848484FF818181F92929294F00000000000000002A2A2A528181
        81F9848484FF848484FF848484FF818181F92626264900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002828284D8181
        81F9848484FF848484FF848484FF818181F92929294F2A2A2A52818181F98484
        84FF848484FF848484FF818181F9262626490000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002828
        284D818181F9848484FF848484FF848484FF818181F9818181F9848484FF8484
        84FF848484FF818181F926262649000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002828284D818181F9848484FF848484FF848484FF848484FF848484FF8484
        84FF818181F92626264900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002828284D818181F9848484FF848484FF848484FF848484FF8181
        81F9262626490000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002A2A2A52818181F9848484FF848484FF848484FF848484FF8181
        81F92929294F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002A2A2A52818181F9848484FF848484FF848484FF848484FF848484FF8484
        84FF818181F92929294F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002A2A
        2A52818181F9848484FF848484FF848484FF818181F9818181F9848484FF8484
        84FF848484FF818181F92929294F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002A2A2A528181
        81F9848484FF848484FF848484FF818181F9262626492828284D818181F98484
        84FF848484FF848484FF818181F92929294F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002A2A2A52818181F98484
        84FF848484FF848484FF818181F92626264900000000000000002828284D8181
        81F9848484FF848484FF848484FF818181F92929294F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002A2A2A52818181F9848484FF8484
        84FF848484FF818181F926262649000000000000000000000000000000002828
        284D818181F9848484FF848484FF848484FF818181F92929294F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002A2A2A52818181F9848484FF848484FF8484
        84FF818181F92626264900000000000000000000000000000000000000000000
        00002828284D818181F9848484FF848484FF848484FF818181F92929294F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2B2B53818181F9848484FF848484FF848484FF8181
        81F9262626490000000000000000000000000000000000000000000000000000
        0000000000002828284D818181F9848484FF848484FF848484FF818181F92929
        294F000000000000000000000000000000000000000000000000000000000000
        00000000000001010102666666C5848484FF848484FF848484FF818181F92626
        2649000000000000000000000000000000000000000000000000000000000000
        000000000000000000002828284D818181F9848484FF848484FF848484FF6666
        66C5010101010000000000000000000000000000000000000000000000000000
        000000000000000000000808080F696969CA848484FF818181F9262626490000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002828284D818181F9848484FF696969CB0808
        0810000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000808080F656565C326262649000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002828284D666666C5080808100000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001010102000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      TabStop = False
      OnClick = btnFecharClick
      ExplicitLeft = 840
    end
  end
end
