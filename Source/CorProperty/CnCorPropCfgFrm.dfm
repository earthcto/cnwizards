inherited CnCorPropCfgForm: TCnCorPropCfgForm
  Left = 228
  Top = 128
  BorderStyle = bsDialog
  Caption = 'Property Corrector Rules Settings'
  ClientHeight = 393
  ClientWidth = 563
  Constraints.MinHeight = 420
  Constraints.MinWidth = 571
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCount: TLabel
    Left = 16
    Top = 352
    Width = 3
    Height = 13
  end
  object btnOK: TButton
    Left = 307
    Top = 363
    Width = 75
    Height = 21
    Action = ActionConfirm
    Anchors = [akRight, akBottom]
    Default = True
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 393
    Top = 363
    Width = 75
    Height = 21
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 545
    Height = 345
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Property Corrector &Rules'
    TabOrder = 0
    object ListView: TListView
      Left = 12
      Top = 56
      Width = 521
      Height = 241
      Anchors = [akLeft, akTop, akRight, akBottom]
      Checkboxes = True
      Columns = <
        item
          Caption = 'Class'
          Width = 100
        end
        item
          Caption = 'Property'
          Width = 100
        end
        item
          Caption = 'Condition'
          Width = 38
        end
        item
          Caption = 'Value'
          Width = 100
        end
        item
          Caption = 'Action'
          Width = 60
        end
        item
          Caption = 'Modify To'
          Width = 100
        end>
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      ViewStyle = vsReport
      OnChange = ListViewChange
      OnColumnClick = ListViewColumnClick
      OnCompare = ListViewCompare
      OnDblClick = ListViewDblClick
      OnKeyDown = ListViewKeyDown
    end
    object btnAdd: TButton
      Left = 13
      Top = 24
      Width = 75
      Height = 21
      Action = ActionAdd
      TabOrder = 0
    end
    object btnDel: TButton
      Left = 235
      Top = 24
      Width = 75
      Height = 21
      Action = ActionDel
      TabOrder = 2
    end
    object btnLoad: TButton
      Left = 346
      Top = 24
      Width = 75
      Height = 21
      Action = ActionLoad
      TabOrder = 3
    end
    object btnSave: TButton
      Left = 457
      Top = 24
      Width = 75
      Height = 21
      Action = ActionSave
      TabOrder = 4
    end
    object btnEdit: TButton
      Left = 124
      Top = 24
      Width = 75
      Height = 21
      Action = ActionEdit
      TabOrder = 1
    end
    object ckbOpenFile: TCheckBox
      Left = 12
      Top = 304
      Width = 233
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Check When Open File'
      TabOrder = 6
      Visible = False
    end
    object ckbCloseFile: TCheckBox
      Left = 274
      Top = 304
      Width = 257
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Check When Close File'
      TabOrder = 7
      Visible = False
    end
    object ckbNewComp: TCheckBox
      Left = 12
      Top = 322
      Width = 233
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Check When Add Component'
      TabOrder = 8
      Visible = False
    end
  end
  object btnHelp: TButton
    Left = 478
    Top = 363
    Width = 75
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = '&Help'
    TabOrder = 3
    OnClick = btnHelpClick
  end
  object ActionList: TActionList
    OnUpdate = ActionListUpdate
    Left = 429
    Top = 4
    object ActionConfirm: TAction
      Caption = '&OK'
      OnExecute = ActionConfirmExecute
    end
    object ActionLoad: TAction
      Caption = '&Load'
      OnExecute = ActionLoadExecute
    end
    object ActionSave: TAction
      Caption = '&Save'
      OnExecute = ActionSaveExecute
    end
    object ActionAdd: TAction
      Caption = '&Add'
      OnExecute = ActionAddExecute
    end
    object ActionDel: TAction
      Caption = '&Delete'
      OnExecute = ActionDelExecute
    end
    object ActionEdit: TAction
      Caption = '&Edit'
      OnExecute = ActionEditExecute
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'rul'
    Filter = 'Property Modify Rules File (*.rul)|*.rul'
    Left = 389
    Top = 4
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'rul'
    Filter = 'Property Modify Rules File (*.rul)|*.rul'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 349
    Top = 4
  end
end
