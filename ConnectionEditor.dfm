object FrmConnectionEditor: TFrmConnectionEditor
  Left = 0
  Top = 0
  Caption = 'FrmConnectionEditor'
  ClientHeight = 486
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rzGrpBx1: TRzGroupBox
    Left = 8
    Top = 64
    Width = 185
    Caption = 'Server'
    TabOrder = 0
  end
  object rzGrpBx2: TRzGroupBox
    Left = 8
    Top = 175
    Width = 382
    Height = 234
    Caption = 'Parametry po'#322#261'czenia '
    TabOrder = 1
    object rzLbl1: TRzLabel
      Left = 24
      Top = 32
      Width = 28
      Height = 13
      Caption = 'rzLbl1'
    end
    object rzLbl2: TRzLabel
      Left = 24
      Top = 64
      Width = 28
      Height = 13
      Caption = 'rzLbl2'
    end
    object rzLbl3: TRzLabel
      Left = 24
      Top = 88
      Width = 28
      Height = 13
      Caption = 'rzLbl3'
    end
    object rzLbl4: TRzLabel
      Left = 200
      Top = 32
      Width = 28
      Height = 13
      Caption = 'rzLbl4'
    end
    object rzLbl5: TRzLabel
      Left = 200
      Top = 64
      Width = 28
      Height = 13
      Caption = 'rzLbl5'
    end
    object rzLbl6: TRzLabel
      Left = 192
      Top = 96
      Width = 28
      Height = 13
      Caption = 'rzLbl6'
    end
    object mmo1: TMemo
      Left = 8
      Top = 136
      Width = 185
      Height = 89
      Lines.Strings = (
        'mmo1')
      TabOrder = 0
    end
    object edtUser: TEdit
      Left = 64
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'edtUser'
    end
    object edtPassword: TEdit
      Left = 72
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'edtPassword'
    end
    object edtRole: TEdit
      Left = 72
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'edtRole'
    end
    object cbbCharset: TComboBox
      Left = 240
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 4
      Text = 'cbbCharset'
    end
    object cbbDialect: TComboBox
      Left = 240
      Top = 64
      Width = 145
      Height = 21
      TabOrder = 5
      Text = 'cbbDialect'
    end
  end
end
