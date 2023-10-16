object frmConsumoAPIGitHub: TfrmConsumoAPIGitHub
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 10
  Caption = 'Consulmo API GitHub'
  ClientHeight = 540
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 882
    Height = 499
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pgGeral: TcxPageControl
      Left = 0
      Top = 0
      Width = 882
      Height = 499
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tbConsulta
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 8
      ClientRectBottom = 499
      ClientRectRight = 882
      ClientRectTop = 24
      object tbConsulta: TcxTabSheet
        Caption = 'Consulta'
        ImageIndex = 0
        object pnConsultaGeral: TPanel
          Left = 0
          Top = 0
          Width = 882
          Height = 475
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnConsultaPrinc: TPanel
            Left = 0
            Top = 0
            Width = 882
            Height = 439
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object lbPesquisa: TLabel
              Left = 171
              Top = 21
              Width = 78
              Height = 13
              Caption = 'Nome Usu'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI Light'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbOwner: TLabel
              Left = 490
              Top = 21
              Width = 103
              Height = 13
              Caption = 'Nome Propriet'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI Light'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label2: TLabel
              Left = 171
              Top = 93
              Width = 53
              Height = 13
              Caption = 'Resultado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI Light'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rgrPesquisa: TcxRadioGroup
              Left = 3
              Top = 21
              Caption = 'Consulta'
              Properties.Items = <
                item
                  Caption = 'Usu'#225'rio'
                end
                item
                  Caption = 'Reposit'#243'rio'
                end
                item
                  Caption = 'Organiza'#231#227'o'
                end>
              ItemIndex = 0
              TabOrder = 0
              OnClick = rgrPesquisaClick
              Height = 113
              Width = 151
            end
            object edPesquisa: TcxTextEdit
              Left = 171
              Top = 36
              ParentFont = False
              Properties.ReadOnly = False
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
              TabOrder = 1
              Width = 313
            end
            object edOwner: TcxTextEdit
              Left = 490
              Top = 36
              ParentFont = False
              Properties.ReadOnly = False
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
              Visible = False
              Width = 360
            end
            object mmResultado: TcxMemo
              Left = 171
              Top = 112
              Style.Color = clInactiveCaption
              TabOrder = 3
              Height = 318
              Width = 679
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 439
            Width = 882
            Height = 36
            Align = alBottom
            Anchors = [akLeft, akBottom]
            BevelOuter = bvNone
            TabOrder = 1
            object btConsultar: TcxButton
              Left = 5
              Top = 4
              Width = 97
              Height = 29
              Caption = 'Consultar'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000000C744558745469746C650046697465723BF2F5B2DA00000057494441
                54785EED93410A80400C03F3E4956529DEFBEF48C005598A52AA370F93DBCC2D
                205902EECE0AAF045A21D014105B563E1D489EF484DCA7A7C946C6D5D1AC8C1B
                D9243D058405F22E210EC470011F05FE40F9CE0744352D3D430B379400000000
                49454E44AE426082}
              TabOrder = 0
              OnClick = btConsultarClick
            end
            object btDetalhe: TcxButton
              Left = 102
              Top = 4
              Width = 97
              Height = 29
              Caption = 'Detalhe'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000001D744558745469746C65005461736B4C6973743B5072696E74546173
                6B4C6973743BA73690B10000003D49444154785EED93B10900200C045DD0A5E4
                87CA7667278222CA6397C041AACB352980C55824F1C256703947C17C81DA6201
                B00BB2200BBE08FC67B2E829D12C66C99A95E30000000049454E44AE426082}
              TabOrder = 1
              OnClick = btDetalheClick
            end
          end
        end
      end
      object tbManutencao: TcxTabSheet
        Caption = 'Manuten'#231#227'o'
        ImageIndex = 1
        object pnManutGeral: TPanel
          Left = 0
          Top = 0
          Width = 882
          Height = 475
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnlManutBotao: TPanel
            Left = 0
            Top = 434
            Width = 882
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object btExecutar: TcxButton
              Left = 8
              Top = 6
              Width = 97
              Height = 29
              Caption = 'Executar'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                6100000018744558745469746C65004368616E6765566965773B4368616E6765
                3B3DF5185C000000D149444154785EA5D3ADAA02411887F109226C7051111493
                6036992D56F12A8CA789C1AAE235D8BC008DE7C0394D3088168B603AC18F6411
                413489AF4F1978113FC6DDF04BFF9967B6AC1191504CB5FD6779A8E11B1B9C21
                30AFD8A1881544730D64B187040DF4D4E1252A482302E312F85781821E5D0307
                082E6AD09AEA8131FCFBC05A1DC83D893454648AB80EF4D5384119C907913AAE
                10CC91B2813C8E900F2D90B1F51276012203FD893EBEF08B2D4E6F0233246CC0
                454B054688C1B8063AEAF20F3C18D740575D1E22AAF7D0BFF30DF4C7118FD728
                64160000000049454E44AE426082}
              TabOrder = 0
              OnClick = btExecutarClick
            end
          end
          object pnManutPrinc: TPanel
            Left = 0
            Top = 0
            Width = 882
            Height = 434
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label4: TLabel
              Left = 163
              Top = 18
              Width = 62
              Height = 13
              Caption = 'Reposit'#243'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI Light'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblManutProprietario: TLabel
              Left = 529
              Top = 17
              Width = 66
              Height = 13
              Caption = 'Propriet'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI Light'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label1: TLabel
              Left = 163
              Top = 69
              Width = 53
              Height = 13
              Caption = 'Resultado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI Light'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rgrManutRepositorio: TcxRadioGroup
              Left = 3
              Top = 18
              Caption = 'Manuten'#231#227'o'
              Properties.Items = <
                item
                  Caption = 'Criar Reposit'#243'rio'
                end
                item
                  Caption = 'Excluir Reposit'#243'rio'
                end>
              ItemIndex = 0
              TabOrder = 0
              OnClick = rgrManutRepositorioClick
              Height = 113
              Width = 151
            end
            object edManutRepositorio: TcxTextEdit
              Left = 160
              Top = 33
              ParentFont = False
              Properties.ReadOnly = False
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
              TabOrder = 1
              Width = 361
            end
            object edManutProprietario: TcxTextEdit
              Left = 527
              Top = 33
              ParentFont = False
              Properties.ReadOnly = False
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
              Visible = False
              Width = 330
            end
            object mmManutResultado: TcxMemo
              Left = 160
              Top = 88
              Style.Color = clInactiveCaption
              TabOrder = 3
              Height = 329
              Width = 697
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 882
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      882
      41)
    object cxLabel1: TcxLabel
      Left = 8
      Top = 5
      Caption = 'CONSUMO API GITHUB'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Light'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object btnFechar: TcxButton
      Left = 840
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
    end
  end
end
