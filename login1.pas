{******************************************************}
{                                                      }
{           ϵͳ���봰��,���û���ݽ�����֤            }
{          writed by rgx,xdp 2001/11-2002/08           }
{                      ������桻                      }
{                                                      }
{******************************************************}

unit login1;
//ϵͳ�����          

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, ExtCtrls, ADODB, ExtDlgs,
  IdBaseComponent, IdComponent, IdIPWatch, IniFiles, activeX, elitee;

type
  Tfrm_login = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edit_loginname: TEdit;
    edit_psw: TEdit;
    Panel2: TPanel;
    btn_ok: TBitBtn;
    btn_cancel: TBitBtn;
    AdoConUser: TADOConnection;
    AdoQryUser: TADOQuery;
    DSUser: TDataSource;
    procedure btn_okClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.DFM}

uses u_main,u_public,u_lang;

procedure Tfrm_login.btn_okClick(Sender: TObject);
var
  user_password,user_permission:string;
  ulShareMode,ulRet,ulRealLen:Cardinal;
  Context:ELE_DEVICE_CONTEXT;
  bResult:boolean;
  InputBufferLen,OutputBufferLen:Cardinal;
  NameBuffer,InputBuffer:PChar;
  OutputBuffer:array[0..50] of char;
begin
  Application.Initialize;

  if edit_loginname.Text='' then
  begin
    ShowMessage(lang_msg_EnterUser);
    edit_loginname.SetFocus;
  end
  else if edit_psw.Text='' then
  begin
    ShowMessage(lang_msg_EnterPsw);
    edit_psw.SetFocus;
  end
  else begin
    RefreshRec(AdoQryUser,'select UserPermission,UserPassword from t_user where UserName='+QuotedStr(edit_loginname.Text));
    if AdoQryUser.RecordCount<1 then
    begin
      ShowMessage(lang_msg_UserNotExist);
      edit_psw.Text:='';
      edit_loginname.SetFocus;
    end
    else begin
      sys_user:=edit_loginname.Text;

      //���ܹ�����
      ulShareMode:=ELE_SHARE_MODE;
      Context.ulSize:=sizeof(ELE_DEVICE_CONTEXT);
      bResult:=EleOpenFirstDevice(nil,nil,nil,ulShareMode,@Context);
      if not bResult then
      begin
        ulRet:=EleGetLastError();
        ShowMessage(lang_msg_NoSenseLock+IntToStr(ulRet));
        Exit;
      end;
      user_password:=AdoQryUser.FieldByName('UserPassword').AsString;
      NameBuffer:=PChar('LeeLenL8');
      InputBuffer:=PChar(user_password);
      InputBufferLen :=Length(InputBuffer);
      OutputBufferLen:=50;
      bResult:=EleExecute(@Context,NameBuffer,InputBuffer,InputBufferLen,OutputBuffer,OutputBufferLen,ulRealLen);
      if not bResult then
      begin
        ulRet:=EleGetLastError();
        ShowMessage(lang_msg_ExecuteFail+IntToStr(ulRet));
        Exit;
      end
      else begin
        user_password:=OutputBuffer;
        //user_password:='1';
        user_permission:=AdoQryUser.FieldByName('UserPermission').AsString;
        if (user_permission='����Ա') or (user_permission='administrator') then
          user_permission:=lang_userType0;
        if user_password<>edit_psw.Text then
        begin
          ShowMessage(lang_UserErr);
          edit_psw.Text:='';
          edit_psw.SetFocus;
        end
        else begin
          sys_permit:=user_permission;

          //==========��ʼ������ʱ�������ݿ��д���δ�·�ָ�ѡ��ֱ���·�����ɾ��==========
          if Get_RecCount('select * from t_cmd where sent =0',AdoConUser)>0 then
          begin
            if MessageDlg('���ݿ��д���δ�·�ָ��Ƿ��ط�?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
            begin
              isSend:=true;
            end
            else begin
              isSend:=false;
            end;
          end;

          ModalResult:=mrOK;
        end;
      end;
      EleClose(@Context);
    end;
  end;
end;

procedure Tfrm_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  AdoConUser.Close;
end;


procedure Tfrm_login.FormCreate(Sender: TObject);
var
  f:TIniFile;
  path_file_name:string;
  fileStr,connStr:string;
begin
  {if not ExistODBCDSN('LeeLenL8') then
  begin
    ShowMessage('��������ϵͳ���ó���,����ϵͳ���в����������г���!');

    f_configure:=Tf_configure.Create(nil);
    f_configure.ShowModal;

    Close;
  end
  else begin
    Get_CurServerInfo('LeeLenL8',svr_name,svr_user,svr_psw);
    AdoConUser.ConnectionString:='Provider=MSDASQL.1;Password='+svr_psw+';Persist Security Info=True;User ID='+svr_user+';Data Source=LeeLenL8;Initial Catalog=LeeLenL8';
  end;}

  if AdoConUser.Connected then AdoConUser.Close;

  //-----�������ݿ�-----
  {=1=���������ӷ�ʽ}
  {fileStr:=Get_CurDir()+'\L8.rgx';
  connStr:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+QuotedStr(fileStr)+';Persist Security Info=True;Mode=Share Deny Read|Share Deny Write;Jet OLEDB:Database Password='+QuotedStr('');
  AdoConUser.ConnectionString := connStr;
  AdoConUser.Open;}
  {=2=�����������ӷ�ʽ}
  AdoConUser.LoginPrompt:=false;
  AdoConUser.KeepConnection:=true;
  AdoConUser.ConnectionString:='FILE NAME='+Get_CurDir+'\LeeLenL8.udl';
  AdoConUser.Connected:=true;
  //---�������ݿ����----

  path_file_name := Get_CurDir+'\lang_cn.ini';
  if not FileExists(path_file_name) then
  begin
    ShowMessage('No language file!');
    exit;
  end
  else begin
    f := TIniFile.Create(path_file_name);
    //��������
    lang_app_title     := f.ReadString('L8','sysTitle','����L8С���������-C');
    lang_UserErr       := f.ReadString('L8','msgUserErr','��������ȷ���û���������!');

    //---message---
    lang_msg_NoConfig  := f.ReadString('L8','msgNoConfig','û�������ļ�!');
    lang_msg_NoLang    := f.ReadString('L8','msgNoLang','û�������ļ�!');
    lang_msg_Comm      := f.ReadString('L8','msgComm','ͨ��:������');
    lang_msg_NoComm    := f.ReadString('L8','msgNoComm','ͨ��:δ����');

    lang_msg_GetAdminAuthor   := f.ReadString('L8','msgGetAdminAuthor','��ȡ�ù���Ա��Ȩ��');
    lang_msg_UnexpectedError  := f.ReadString('L8','msgUnexpectedError','�����������!���˳�����ִ�г���!');

    lang_msg_RoomDataClear      := f.ReadString('L8','msgRoomDataClear','ȷ��Ҫ��շ���������');
    lang_msg_ClearFinish        := f.ReadString('L8','msgClearFinish','������!');
    lang_msg_ClearFail          := f.ReadString('L8','msgClearFail','���ʧ��!');
    lang_msg_Initialize         := f.ReadString('L8','msgInitialize','����Ŭ����ʼ��...');
    lang_msg_InitializeFinish   := f.ReadString('L8','msgInitializeFinish','��ʼ�����!');
    lang_msg_DelHaveChild       := f.ReadString('L8','msgDelHaveChild','������Ŀ,ȷ��Ҫȫ��ɾ����');

    lang_UnitON        := f.ReadString('L8','msgUnitON','�����ϵ�');
    lang_UserON        := f.ReadString('L8','msgUserON','�ֻ��ϵ�');

    lang_msg_ready     := f.ReadString('L8','msgReady','���������У����Ժ�...');
    lang_msg_StartReg  := f.ReadString('L8','msgStartReg','��ʼע��...');
    lang_msg_RegOver   := f.ReadString('L8','msgRegOver','ע�����!');

    lang_msg_SelectCmd      := f.ReadString('L8','msgSelectCmd','��ѡ��ע���ע������!');
    lang_msg_CardHaveCmd    := f.ReadString('L8','msgCardHaveCmd','�ÿ���δ��ɵĲ���!');
    lang_msg_InputUnit      := f.ReadString('L8','msgInputUnit','��������ȷ����������!');
    lang_msg_InputUser      := f.ReadString('L8','msgInputUser','��������ȷ�ķֻ�����!');
    lang_msg_InputDevice    := f.ReadString('L8','msgInputDevice','�������豸���!');
    lang_msg_InputDevRepeat := f.ReadString('L8','msgInputDevRepeat','�豸����ظ�!');
    lang_msg_Clearing       := f.ReadString('L8','msgClearing','��������У����Ժ�...');
    lang_msg_ClearOver      := f.ReadString('L8','msgClearOver','����������!');

    lang_msg_SysPrompts    := f.ReadString('L8','msgSysPrompts','ϵͳ��ʾ');
    lang_msg_ImportSuccess := f.ReadString('L8','msgImportSuccess','���ݵ���ɹ���');
    lang_msg_ImportFail    := f.ReadString('L8','msgImportFail','���ݵ���ʧ�ܣ�');
    lang_msg_ExportSuccess := f.ReadString('L8','msgExportSuccess','���ݵ����ɹ���');
    lang_msg_ExportFail    := f.ReadString('L8','msgExportFail','��������ʧ�ܣ������ļ��ĸ�ʽ�Ƿ���ȷ��');
    lang_msg_NoCmd         := f.ReadString('L8','msgNoCmd','û��ָ����Ҫִ��!');
    lang_msg_CmdSending    := f.ReadString('L8','msgCmdSending','ָ�ʼִ��...');
    lang_msg_SentOK        := f.ReadString('L8','msgSentOK','ָ��ͳɹ�!');
    lang_msg_NeverSent     := f.ReadString('L8','msgNeverSent','ָ��δ����!');
    lang_msg_NoSent        := f.ReadString('L8','msgNoSent','ָ���ʧ��!');
    lang_msg_CmdSentOver   := f.ReadString('L8','msgCmdSentOver','ָ��ִ�����!');

    lang_msg_LinkTimeout   := f.ReadString('L8','msgLinkTimeout','���ӳ�ʱ��');
    lang_msg_LinkFail      := f.ReadString('L8','msgLinkFail','ͨ��δ���ӣ�');

    lang_msg_Times     := f.ReadString('L8','msgTimes','��ʱ:');
    lang_msg_Reading   := f.ReadString('L8','msgReading','��ȡ��...');
    lang_msg_ReadOver  := f.ReadString('L8','msgReadOver','��ȡ���');

    lang_do0           := f.ReadString('L8','msgDo0','δ��');
    lang_do1           := f.ReadString('L8','msgDo1','�Ѷ�');
    lang_do2           := f.ReadString('L8','msgDo2','�Ѵ���');

    lang_msg_Del          := f.ReadString('L8','msgDel','ȷʵҪɾ���ü�¼��');
    lang_msg_DelAll       := f.ReadString('L8','msgDelAll','ȷʵҪɾ��ȫ����¼��');
    lang_msg_Clear        := f.ReadString('L8','msgClear','ȷ��Ҫ����ѡ�豸ִ��������Ĳ�����');
    lang_msg_DelConfirm   := f.ReadString('L8','msgDelConfirm','ȷʵҪɾ��');
    lang_msg_DelEnd       := f.ReadString('L8','msgDelEnd','��');

    lang_msg_QueryWrong   := f.ReadString('L8','msgQueryWrong','��ѯ��ֹ���ڲ���С����ʼ���ڣ�');
    lang_msg_AlertRecord  := f.ReadString('L8','msgAlertRecord','Ԥ����¼');
    lang_msg_Data         := f.ReadString('L8','msgData','����');

    lang_msg_ConfigSuccess  := f.ReadString('L8','msgConfigSuccess','���������Ѿ���Ч��');
    lang_msg_UpdatingConfig := f.ReadString('L8','msgUpdatingConfig','���ڸ������ã����Ժ�...');
    lang_msg_InstallSQL     := f.ReadString('L8','msgInstallSQL','���Ȱ�װSQL Server��');
    lang_msg_ConfigError    := f.ReadString('L8','msgConfigError','����Դ���ó����������,�������ֹ�����!');
    lang_msg_ConfigException:= f.ReadString('L8','msgConfigException','����������Դ�Ĺ����г�����δ֪�Ĵ��������ԣ�');

    lang_msg_SysCannotSet   := f.ReadString('L8','msgSysCannotSet','ϵͳû����ȷ��װODBC,�޷���������!');
    lang_msg_DBPathError    := f.ReadString('L8','msgDBPathError','ȡ���ݿ�·��ʱ���ִ���,�������Ӧ����ϵ!');

    lang_msg_CloseTables     := f.ReadString('L8','msgCloseTables','��ر���������ʹ�õı���');
    lang_msg_NoDSN           := f.ReadString('L8','msgNoDSN','��������ϵͳ���ó���,����ϵͳ���в����������г���!');
    lang_msg_SelBupDB        := f.ReadString('L8','msgSelBupDB','��ѡ����Ҫ���ݵ����ݿ⣡');
    lang_msg_SelResDB        := f.ReadString('L8','msgSelResDB','��ѡ����Ҫ�ָ������ݿ⣡');
    lang_msg_FileName        := f.ReadString('L8','msgFileName','�ļ����ظ���');
    lang_msg_Backuping       := f.ReadString('L8','msgBackuping','���ڱ������ݿ⣬���Ժ�');
    lang_msg_Restoring       := f.ReadString('L8','msgRestoring','���ڻ�ԭ���ݿ⣬���Ժ�');
    lang_msg_CreateFinish    := f.ReadString('L8','msgCreateFinish','�����ɹ���');
    lang_msg_CreateFail      := f.ReadString('L8','msgCreateFail','����ʧ�ܣ�');
    lang_msg_BackupFinish    := f.ReadString('L8','msgBackupFinish','���ݳɹ���');
    lang_msg_BackupFail      := f.ReadString('L8','msgBackupFail','����ʧ�ܣ�');
    lang_msg_RestoreFinish   := f.ReadString('L8','msgRestoreFinish','��ԭ�ɹ���');
    lang_msg_RestoreFail     := f.ReadString('L8','msgRestoreFail','��ԭʧ�ܣ�');
    lang_msg_RestoreConfirm  := f.ReadString('L8','msgRestoreConfirm','��Ҫ���ļ�');
    lang_msg_RestoreInto     := f.ReadString('L8','msgRestoreInto','��ԭ�����ݿ�');

    lang_msg_UserNull        := f.ReadString('L8','msgUserNull','�û�������Ϊ�գ�');
    lang_msg_UserExist       := f.ReadString('L8','msgUserExist','�û����Ѵ��ڣ����������룡');
    lang_msg_PswNull         := f.ReadString('L8','msgPswNull','���벻��Ϊ�գ�');
    lang_msg_PswDismatch     := f.ReadString('L8','msgPswDismatch','���벻һ�£����������룡');

    lang_msg_EnterUser       := f.ReadString('L8','msgEnterUser','�������˺�����');
    lang_msg_EnterPsw        := f.ReadString('L8','msgEnterPsw','�������¼���룡');
    lang_msg_ChoosePermit    := f.ReadString('L8','msgChoosePermission','��ѡ���˺�Ȩ�ޣ�');
    lang_msg_UserNotExist    := f.ReadString('L8','msgUserNotExist','��������û��������ڣ�');

    lang_msg_NoSenseLock     := f.ReadString('L8','msgNoSenseLock','�򿪼��ܹ��豸ʧ�ܣ��������Ϊ:');
    lang_msg_ExecuteFail     := f.ReadString('L8','msgExecuteFail','ִ��ģ��ʧ�ܣ��������Ϊ:');

    lang_msg_OpenFail        := f.ReadString('L8','msgOpenFail','�޷��򿪣�');
    lang_msg_MaxScreen       := f.ReadString('L8','msgMaxScreen','�ֻ����ֻ�ܴ洢32����Ϣ��');
    lang_msg_InfoEmpty       := f.ReadString('L8','msgInfoEmpty','��ϢΪ�գ�');
    lang_msg_OpenPort        := f.ReadString('L8','msgOpenPort','���ͨ�Ŷ˿ڣ�');
    lang_msg_ReleaseComplete := f.ReadString('L8','msgReleaseComplete','��Ϣ������ϣ�');
    lang_msg_SaveChanges     := f.ReadString('L8','msgSaveChanges','�Ƿ񱣴��޸�?');

    lang_msg_PortOpened      := f.ReadString('L8','msgPortOpened','ͨ�Ŷ˿��Ѵ򿪣�');
    lang_msg_PortNotOpened   := f.ReadString('L8','msgPortNotOpened','ͨ�Ŷ˿�δ�򿪣�');
    lang_msg_PortDisconnect  := f.ReadString('L8','msgPortDisConnect','ͨ�Ŷ˿��ѶϿ���');
    lang_msg_ProvideCard     := f.ReadString('L8','msgProvideCard','���ṩ���ţ�');
    lang_msg_ProvideDevice   := f.ReadString('L8','msgProvideDevice','���ṩ�豸�ţ�');

    lang_msg_DownloadOK      := f.ReadString('L8','msgDownloadOK','���سɹ���');
    lang_msg_ReadCardOK      := f.ReadString('L8','msgReadCardOK','���Ŷ�ȡ�ɹ���');
    lang_msg_CommunicateFail := f.ReadString('L8','msgCommunicateFail','ͨ��ʧ�ܣ�');
    lang_msg_NoCard          := f.ReadString('L8','msgNoCard','�޿���');
    lang_msg_OperateOK       := f.ReadString('L8','msgOperateOK','�����ɹ���');
    lang_msg_OperateFail     := f.ReadString('L8','msgOperateFail','����ʧ�ܣ�');
    lang_msg_NoAvailable     := f.ReadString('L8','msgNoAvailable','���������ã�');
    lang_msg_NotCorrespond   := f.ReadString('L8','msgNotCorrespond','���Ų���Ӧ��');

    lang_msg_AddrExist   := f.ReadString('L8','msgAddrExist','¥����Ϣ�Ѵ��ڣ��޷��ظ���ӣ�');
    lang_msg_DevExist    := f.ReadString('L8','msgDevExist','���豸�Ѵ��ڣ��޷��ظ���ӣ�');
    lang_msg_UserMacAmount  := f.ReadString('L8','msgUserMacAmount','�÷ֻ���ע��15�ſ���������ѡ��ֻ�����ע�ᣡ');
    lang_msg_ChooseWall     := f.ReadString('L8','msgChooseWall','��ѡ����Ҫע���Χǽ����');
    lang_msg_SelUnitWall    := f.ReadString('L8','msgSelUnitWall','��ѡ����Ҫע���������Χǽ����');
    lang_msg_None           := f.ReadString('L8','msgNone','��');
    lang_msg_Extracting     := f.ReadString('L8','msgExtracting','��ȡ�У���ȴ���');
    lang_msg_ExcelInstall   := f.ReadString('L8','msgExcelInstall','δ��װEXCEL��');

    //---note---
    lang_note_Receive     := f.ReadString('L8','noteReceive','����:');
    lang_note_Error       := f.ReadString('L8','noteError','����:');
    lang_note_Send        := f.ReadString('L8','noteSend','����:');

    lang_note_Call        := f.ReadString('L8','noteCall','���зֻ�');
    lang_note_Total       := f.ReadString('L8','noteTotal','����');
    lang_note_Records     := f.ReadString('L8','noteRecords','�ʼ�¼');
    lang_note_Current     := f.ReadString('L8','noteCurrent','��ǰ�ǵ�');
    lang_note_Record      := f.ReadString('L8','noteRecord','�ʼ�¼');

    //---caption---
    lang_menu1        := f.ReadString('L8','menu1','��������');
    lang_menu2        := f.ReadString('L8','menu2','�豸��Ϣ');
    lang_menu3        := f.ReadString('L8','menu3','�Ž�����');
    lang_menu31       := f.ReadString('L8','menu31','���ؿ�');
    lang_menu32       := f.ReadString('L8','menu32','ע����');
    lang_menu33       := f.ReadString('L8','menu33','��ȡ��');
    lang_menu34       := f.ReadString('L8','menu34','�����');
    lang_menu35       := f.ReadString('L8','menu35','������');
    lang_menu36       := f.ReadString('L8','menu36','������');
    lang_menu37       := f.ReadString('L8','menu37','д����');
    lang_menu4        := f.ReadString('L8','menu4','��������');
    lang_menu5        := f.ReadString('L8','menu5','ˢ����¼');
    lang_menu6        := f.ReadString('L8','menu6','����');

    lang_pMenuAddrAdd     := f.ReadString('L8','pMenuAddrAdd','����¥��');
    lang_pMenuAddrEdit    := f.ReadString('L8','pMenuAddrEdit','�༭¥��');
    lang_pMenuAddrDel     := f.ReadString('L8','pMenuAddrDel','ɾ��¥��');
    lang_pMenuAddrRefresh := f.ReadString('L8','pMenuAddrRefresh','ˢ��¥��');
    lang_pMenuAddrParam   := f.ReadString('L8','pMenuAddrParam','¥������');

    lang_pMenuDevAdd   := f.ReadString('L8','pMenuDevAdd','�����豸');
    lang_pMenuDevEdit  := f.ReadString('L8','pMenuDevEdit','�༭�豸');
    lang_pMenuDevDel   := f.ReadString('L8','pMenuDevDel','ɾ���豸');
    lang_pMenuRefresh  := f.ReadString('L8','pMenuRefresh','ˢ���豸');

    lang_pMenuUserAdd   := f.ReadString('L8','pMenuUserAdd','����˺�');
    lang_pMenuUserEdit  := f.ReadString('L8','pMenuUserEdit','�༭Ȩ��');
    lang_pMenuUserDel   := f.ReadString('L8','pMenuUserDel','ɾ���˺�');

    lang_gbDev       := f.ReadString('L8','gbDev','��ѡ���豸');
    lang_gbCardType  := f.ReadString('L8','gbCardType','��ѡ��ע�Ῠ����');
    lang_ckbBatch    := f.ReadString('L8','ckbBatch','����ע��');

    lang_gbServiceDoor := f.ReadString('L8','gbServiceDoor','��ҵ������');

    lang_gbCommandSending  := f.ReadString('L8','gbCommandSending','������ָ���');
    lang_gbCommandReceived := f.ReadString('L8','gbCommandReceived','����ָ���');
    lang_gbCommand         := f.ReadString('L8','gbCommand','ָ���');
    lang_gbCommandState    := f.ReadString('L8','gbCommandState','ָ��״̬��');

    lang_gbComLink    := f.ReadString('L8','gbComLink','ͨ������');
    lang_gbOptions    := f.ReadString('L8','gbOptions','ѡ��');
    lang_gbCardList   := f.ReadString('L8','gbCardList','���б�');
    lang_gbDevNO      := f.ReadString('L8','gbDevNO','�豸����');
    lang_gbOperateCmd := f.ReadString('L8','gbOperateCmd','��������');

    lang_gbUserAdmin := f.ReadString('L8','gbUserAdmin','�û�����');
    lang_gbPersonal  := f.ReadString('L8','gbPersonal','��������');

    lang_cpCommunity := f.ReadString('L8','cpCommunity','С��');

    //---DBGrid---
    lang_dgAddrColum1 := f.ReadString('L8','dgAddrColum1','�豸��ַ');
    lang_dgAddrColum2 := f.ReadString('L8','dgAddrColum2','����¥��');
    lang_dgAddrColum3 := f.ReadString('L8','dgAddrColum3','�豸����');
    lang_dgAddrColum4 := f.ReadString('L8','dgAddrColum4','��ע');

    lang_dgDevColum1  := f.ReadString('L8','dgDevColum1','�豸����');
    lang_dgDevColum2  := f.ReadString('L8','dgDevColum2','�豸����');
    lang_dgDevColum3  := f.ReadString('L8','dgDevColum3','�豸��ַ');
    lang_dgDevColum4  := f.ReadString('L8','dgDevColum4','��ע');

    lang_dgAlarmColum1  := f.ReadString('L8','dgAlarmColum1','��������');
    lang_dgAlarmColum2  := f.ReadString('L8','dgAlarmColum2','�豸��ַ');
    lang_dgAlarmColum3  := f.ReadString('L8','dgAlarmColum3','״̬');
    lang_dgAlarmColum4  := f.ReadString('L8','dgAlarmColum4','����ʱ��');
    lang_dgAlarmColum5  := f.ReadString('L8','dgAlarmColum5','��������');
    lang_dgAlarmColum6  := f.ReadString('L8','dgAlarmColum6','�������');

    lang_dgCardRecColum1 := f.ReadString('L8','dgCardRecColum1','������');
    lang_dgCardRecColum2 := f.ReadString('L8','dgCardRecColum2','����');
    lang_dgCardRecColum3 := f.ReadString('L8','dgCardRecColum3','ˢ����');
    lang_dgCardRecColum4 := f.ReadString('L8','dgCardRecColum4','ˢ��ʱ��');

    lang_dgUserColum1  := f.ReadString('L8','dgUserColum1','�˺���');
    lang_dgUserColum2  := f.ReadString('L8','dgUserColum2','�˺�Ȩ��');
    lang_dgUserColum3  := f.ReadString('L8','dgUserColum3','�˺�����');

    lang_dgCardColum1  := f.ReadString('L8','dgCardColum1','������');
    lang_dgCardColum2  := f.ReadString('L8','dgCardColum2','����');
    lang_dgCardColum3  := f.ReadString('L8','dgCardColum3','����');
    lang_dgCardColum4  := f.ReadString('L8','dgCardColum4','�ֻ�');
    lang_dgCardColum5  := f.ReadString('L8','dgCardColum5','��״̬');
    lang_dgCardColum6  := f.ReadString('L8','dgCardColum6','Χǽ��');
    lang_dgCardColum7  := f.ReadString('L8','dgCardColum7','����');
    lang_dgCardColum8  := f.ReadString('L8','dgCardColum8','����');

    //---Label---
    lang_labType          := f.ReadString('L8','labType','����');
    lang_labAddr          := f.ReadString('L8','labAddr','��ַ');
    lang_labDevNON         := f.ReadString('L8','labDevNo','�豸����');
    lang_labUnitMac       := f.ReadString('L8','labUnitMac','����');
    lang_labUserMac       := f.ReadString('L8','labUserMac','�ֻ�');
    lang_labAmount        := f.ReadString('L8','labAmount','����');
    lang_labCardNO        := f.ReadString('L8','labCardNo','����');
    lang_labCOM           := f.ReadString('L8','labCOM','ͨ�Ŷ˿�');
    lang_labWall          := f.ReadString('L8','labWall','Χǽ��');
    lang_labDeadLine      := f.ReadString('L8','labDeadLine','����');
    lang_labMemo          := f.ReadString('L8','labMemo','��ע');
    lang_labTo            := f.ReadString('L8','labTo','��');
    lang_labName          := f.ReadString('L8','labName','����');
    lang_labUserName      := f.ReadString('L8','labUserName','�û���:');
    lang_labPassword      := f.ReadString('L8','labPassword','��¼����:');
    lang_labPermission    := f.ReadString('L8','labPermission','�û�Ȩ��:');

    lang_labCardNOHex     := f.ReadString('L8','labCardNOHex','����(ʮ������)');
    lang_labIndoorPhone   := f.ReadString('L8','labIndoorPhone','�ֻ���(6λ)');

    lang_labDefaultName   := f.ReadString('L8','labDefaultName','ĳĳ');

    lang_labCOMProperty   := f.ReadString('L8','labCOMProperty','ͨѶ����');
    lang_typeSerialPort   := f.ReadString('L8','typeSerialPort','���ô��п�(RS-232)ͨѶ');
    lang_typeProtocol     := f.ReadString('L8','typeProtocol','��������(TCP/IPЭ��)ͨѶ');
    lang_labCenterNumber  := f.ReadString('L8','labCenterNumber','�������ĺ���');
    lang_labReceivePort   := f.ReadString('L8','labReceivePort','���ն˿�');
    lang_labSendPort      := f.ReadString('L8','labSendPort','���Ͷ˿�');

    lang_labUser          := f.ReadString('L8','labUser','�û���:');
    lang_labPsw           := f.ReadString('L8','labPsw','�û�����:');
    lang_labNewUser       := f.ReadString('L8','labNewUser','���û���:');
    lang_labNewPsw        := f.ReadString('L8','labNewPsw','������������:');
    lang_labNewPswConfirm := f.ReadString('L8','labNewPswConfirm','��ȷ��������:');

    //---UserParam---
    lang_gbUserP1   := f.ReadString('L8','gbUserP1','����');
    lang_gbUserP2   := f.ReadString('L8','gbUserP2','��Ԫ');
    lang_gbUserP3   := f.ReadString('L8','gbUserP3','���');
    lang_gbUserP4   := f.ReadString('L8','gbUserP4','����');

    lang_labNoLen     := f.ReadString('L8','labNoLen','����λ��');
    lang_labFromTo    := f.ReadString('L8','labFromTo','��                       ��');
    lang_DateFromTo   := f.ReadString('L8','labDateFromTo','���ڴ�...��...');
    lang_labNoName    := f.ReadString('L8','labNoName','��������');
    lang_labNoOrd     := f.ReadString('L8','labNoOrd','����˳��');

    lang_bName := f.ReadString('L8','bName','��'); //��,��,��¥,#¥
    lang_uName := f.ReadString('L8','uName','��Ԫ'); //��Ԫ,��,��
    lang_fName := f.ReadString('L8','fName','��'); //¥,��,F
    lang_hName := f.ReadString('L8','hName','��'); //��

    lang_ckbDev    := f.ReadString('L8','ckbDev','ͬʱ��ʼ���豸');
    lang_labID     := f.ReadString('L8','labID','��ʶ');
    lang_labDevNO  := f.ReadString('L8','labDevNO','�豸��');
    lang_labDevName:= f.ReadString('L8','labDevName','����');
    
    lang_btnEG     := f.ReadString('L8','btnEG','ʾ��');
    lang_btnUser   := f.ReadString('L8','btnUser','��ʼ��');

    //---Types---
    lang_devType0      := f.ReadString('L8','devType0','�����');
    lang_devType1      := f.ReadString('L8','devType1','����');
    lang_devType2      := f.ReadString('L8','devType2','������');
    lang_devType3      := f.ReadString('L8','devType3','�ֻ�');
    lang_devType4      := f.ReadString('L8','devType4','Χǽ��');
    lang_devTypeA      := f.ReadString('L8','devTypeA','ȫ���豸');
    lang_devTypeN      := f.ReadString('L8','devTypeN','���豸');

    lang_cardType0     := f.ReadString('L8','cardType0','ס����');
    lang_cardType1     := f.ReadString('L8','cardType1','��ҵ��');
    lang_cardType2     := f.ReadString('L8','cardType2','ϵͳ��');
    lang_cardType3     := f.ReadString('L8','cardType3','Ѳ����');

    lang_cardTypeX     := f.ReadString('L8','cardTypeX','��Ч��');
    lang_cardTypeV     := f.ReadString('L8','cardTypeV','��Ч��');
    lang_cardTypeC     := f.ReadString('L8','cardTypeC','��ͨ��');
    lang_cardTypeU     := f.ReadString('L8','cardTypeU','δ֪');
    lang_cardTypeA     := f.ReadString('L8','cardTypeA','ȫ��');

    lang_alarmType0     := f.ReadString('L8','alarmType0','��������');
    lang_alarmType1     := f.ReadString('L8','alarmType1','���ű���');
    lang_alarmType2     := f.ReadString('L8','alarmType2','�����ϵ�');
    lang_alarmType3     := f.ReadString('L8','alarmType3','�ֻ��ϵ�');
    lang_alarmType4     := f.ReadString('L8','alarmType4','������������');

    lang_alarmState0    := f.ReadString('L8','alarmState0','δ��');
    lang_alarmState1    := f.ReadString('L8','alarmState1','�Ѷ�');
    lang_alarmState2    := f.ReadString('L8','alarmState2','δ����');
    lang_alarmState3    := f.ReadString('L8','alarmState3','�Ѵ���');
    lang_alarmState4    := f.ReadString('L8','alarmState4','ȫ��');

    lang_userType0    := f.ReadString('L8','userType0','����Ա');
    lang_userType1    := f.ReadString('L8','userType1','�ÿ�');

    lang_chosenYes    := f.ReadString('L8','chosenYes','��');
    lang_chosenNo     := f.ReadString('L8','chosenNo','��');

    lang_stateInvalid  := f.ReadString('L8','stateInvalid','��Ч');
    lang_stateValid    := f.ReadString('L8','stateValid','��Ч');
    lang_stateUnknown  := f.ReadString('L8','stateUnknown','δ֪');

    //---Button---
    lang_btnQry   := f.ReadString('L8','btnQry','��ѯ');
    lang_btnOK    := f.ReadString('L8','btnOK','ȷ��');
    lang_btnCancel:= f.ReadString('L8','btnCancel','ȡ��');
    lang_btnSel   := f.ReadString('L8','btnSel','ѡȡ');
    lang_btnImport:= f.ReadString('L8','btnImport','����Excel�������');
    lang_btnExport:= f.ReadString('L8','btnExport','����Excel���');
    lang_btnDel   := f.ReadString('L8','btnDel','ɾ��');
    lang_btnClear := f.ReadString('L8','btnClear','���');
    lang_btnDownLoad := f.ReadString('L8','btnDownLoad','���ؿ�');
    lang_btnExtract  := f.ReadString('L8','btnExtract','��ȡ');
    lang_btnConnect  := f.ReadString('L8','btnConnect','����');
    lang_btnDisCon   := f.ReadString('L8','btnDisCon','�Ͽ�');
    lang_btnRead     := f.ReadString('L8','btnRead','��ȡ����');
    lang_btnCancelCard := f.ReadString('L8','btnCancelCard','ע����');
    lang_btnEditTime   := f.ReadString('L8','btnEditTime','�޸�ʱ��');
    lang_btnCardStatus := f.ReadString('L8','btnCardStatus','��״̬');
    lang_btnRestoreCard:= f.ReadString('L8','btnRestoreCard','��ԭ��');
    lang_btnRefresh    := f.ReadString('L8','btnRefresh','ˢ��');
    lang_btnSave       := f.ReadString('L8','btnSave','����');
    lang_btnNew        := f.ReadString('L8','btnNew','�½�');
    lang_btnEdit       := f.ReadString('L8','btnEdit','�༭');
    lang_btnSubmit     := f.ReadString('L8','btnSubmit','�ύ');
    lang_btnMore       := f.ReadString('L8','btnMore','�߼�');
    lang_btnHide       := f.ReadString('L8','btnHide','����');
    lang_btnBack       := f.ReadString('L8','btnBack','����');

    lang_btnClose    := f.ReadString('L8','btnClose','�ر�');
    lang_btnDefault  := f.ReadString('L8','btnDefault','Ĭ��');
    lang_btnAdd      := f.ReadString('L8','btnAdd','����');

    lang_btnOpenFiles     := f.ReadString('L8','btnOpenFiles','���ĵ�');
    lang_btnSinglePage    := f.ReadString('L8','btnSinglePage','��ҳ����');
    lang_btnContiTransmit := f.ReadString('L8','btnContiTransmit','��������');
    lang_btnSimulative    := f.ReadString('L8','btnSimulative','ģ����ʾ');
    lang_btnSaveConti     := f.ReadString('L8','btnSaveConti','���沢����');
    lang_btnListView      := f.ReadString('L8','btnListView','�б���ͼ');

    //---sb_tips---
    lang_sb_tips0     := f.ReadString('L8','sb_tips0','ͨ��');
    lang_sb_tips1     := f.ReadString('L8','sb_tips1','δ����');
    lang_sb_tips2     := f.ReadString('L8','sb_tips2','������');
    lang_sb_tips3     := f.ReadString('L8','sb_tips3','����');
    lang_sb_tips4     := f.ReadString('L8','sb_tips4','����');
    lang_sb_tips5     := f.ReadString('L8','sb_tips5','����');
    lang_sb_tips6     := f.ReadString('L8','sb_tips6','��Ч');
    lang_sb_tips7     := f.ReadString('L8','sb_tips7','��Ч');
    lang_sb_tips8     := f.ReadString('L8','sb_tips8','�û�:����Ա');
    lang_sb_tips9     := f.ReadString('L8','sb_tips9','�û�:�ÿ�');
    lang_sb_tipsTime  := f.ReadString('L8','sb_tipsTime','��ʱ');

    //---Text---
    lang_strUserNo    := f.ReadString('L8','strUserNo','�û���');
    lang_strCardType  := f.ReadString('L8','strCardType','������');
    lang_strCardNo    := f.ReadString('L8','strCardNo','����');
    lang_strCard6     := f.ReadString('L8','strCard6','����');

    lang_strRegisterCard := f.ReadString('L8','strRegisterCard','ע�Ῠ');
    lang_strCardRecord   := f.ReadString('L8','strCardRecord','ˢ����¼');
    lang_strRecordTime   := f.ReadString('L8','strRecordTime','ˢ��ʱ��');
    lang_strDeviceInfo   := f.ReadString('L8','strDeviceInfo','�豸��Ϣ');

    //[Hint]
    lang_hintManagement  := f.ReadString('L8','hintManagement','�������Ҽ����й���');
    lang_hintAddCards    := f.ReadString('L8','hintAddCards','˫������,������ӿ���');
    lang_hintChooseCards := f.ReadString('L8','hintChooseCards','˫������,����ѡȡ����');
    lang_hintProcessState:= f.ReadString('L8','hintProcessState','˫������,���Ըı䴦�������');

    //[login1]
    lang_loginTitle  := f.ReadString('L8','loginTitle','�������˺ź�����');
    lang_loginUser   := f.ReadString('L8','loginUser','�˺�'); //Account
    lang_loginPsw    := f.ReadString('L8','loginPsw','����');
    lang_loginVerify := f.ReadString('L8','loginVerify','��֤�˺ź�����...');

    //[connect]
    lang_labConnectPort := f.ReadString('L8','labConnectPort','ͨ�Ŷ˿�');
    lang_msgConnectF    := f.ReadString('L8','msgConnectF','����ʧ��,������ѡ��˿�!');
    lang_msgSaveParam   := f.ReadString('L8','msgSaveParam','�������óɹ�!');

    f.Free;
  end;
  Caption            :=  lang_loginTitle;
  label1.Caption     :=  lang_loginUser;
  label2.Caption     :=  lang_loginPsw;
  btn_ok.Caption     :=  lang_btnOK;
  btn_cancel.Caption :=  lang_btnCancel;
end;

procedure Tfrm_login.FormShow(Sender: TObject);
begin
  if edit_LoginName.Text='' then
    edit_LoginName.SetFocus
  else
    edit_psw.SetFocus;
end;

end.
