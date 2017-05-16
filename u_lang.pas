unit u_lang;

interface

var
  lang_app_title:string; // Ӧ�ó������
  lang_UserErr:string;   // ��������ȷ���û���������!

  //[msg]
  lang_msg_NoConfig:string; // û�������ļ�!
  lang_msg_NoLang:string;   // û�������ļ�!
  lang_msg_Comm:string;     // ͨ��:������
  lang_msg_NoComm:string;   // ͨ��:δ����

  lang_msg_GetAdminAuthor:string;  // ��ȡ�ù���Ա��Ȩ��
  lang_msg_UnexpectedError:string; // �����������!���˳�����ִ�г���!

  lang_msg_RoomDataClear:string;     // ȷ��Ҫ��շ���������
  lang_msg_ClearFail:string;         // ���ʧ��!
  lang_msg_ClearFinish:string;       // ������!
  lang_msg_Initialize:string;        // ����Ŭ����ʼ��...
  lang_msg_InitializeFinish:string;  // ��ʼ�����!
  lang_msg_DelHaveChild:string;      // ������Ŀ,ȷ��Ҫȫ��ɾ����

  lang_UnitON:string; // �����ϵ�
  lang_UserON:string; // �ֻ��ϵ�

  lang_msg_Ready:string;    // ���������У����Ժ�...
  lang_msg_StartReg:string; // ��ʼע��...
  lang_msg_RegOver:string;  // ע�����!

  lang_msg_SelectCmd:string;      // ��ѡ��ע���ע�����
  lang_msg_CardHaveCmd:string;    // �ÿ���δ��ɵĲ�����
  lang_msg_InputUnit:string;      // ��������ȷ���������룡
  lang_msg_InputUser:string;      // ��������ȷ�ķֻ����룡
  lang_msg_InputDevice:string;    // �������豸��ţ�
  lang_msg_InputDevRepeat:string; // �豸����ظ���
  lang_msg_Clearing:string;       // ��������У����Ժ�...
  lang_msg_ClearOver:string;      // ���������ϣ�

  lang_msg_SysPrompts:string;    // ϵͳ��ʾ
  lang_msg_ImportSuccess:string; // ���ݵ���ɹ���
  lang_msg_ImportFail:string;    // ���ݵ���ʧ�ܣ�
  lang_msg_ExportSuccess:string; // ���ݵ����ɹ���
  lang_msg_ExportFail:string;    // ��������ʧ�ܣ������ļ��ĸ�ʽ�Ƿ���ȷ��
  lang_msg_NoCmd:string;         // û��ָ����Ҫִ��
  lang_msg_CmdSending:string;    // ָ�ʼִ��
  lang_msg_SentOK:string;        // ָ��ͳɹ�
  lang_msg_NeverSent:string;     // ָ��δ����
  lang_msg_NoSent:string;        // ָ���ʧ��
  lang_msg_CmdSentOver:string;   // ָ��ִ�����

  lang_msg_LinkTimeout:string;   // ���ӳ�ʱ��
  lang_msg_LinkFail:string;      // ͨ��δ���ӣ�

  lang_msg_Times:string;   // ��ʱ
  lang_msg_Reading:string; // ��ȡ��...
  lang_msg_ReadOver:string;// ��ȡ���

  lang_do0:string; // δ��
  lang_do1:string; // �Ѷ�
  lang_do2:string; // �Ѵ���

  lang_msg_Del:string;        // ȷʵҪɾ���ü�¼��
  lang_msg_DelAll:string;     // ȷ��Ҫɾ��ȫ����¼��
  lang_msg_Clear:string;      // ȷ��Ҫ����ѡ�豸ִ��������Ĳ�����
  lang_msg_DelConfirm:string; // ȷ��Ҫɾ��
  lang_msg_DelEnd:string;     // ��

  lang_msg_QueryWrong:string;  // ��ѯ��ֹ���ڲ���С����ʼ���ڣ�
  lang_msg_AlertRecord:string; // Ԥ����¼
  lang_msg_Data:string;        // ����

  lang_msg_ConfigSuccess:string;  // ���������Ѿ���Ч��
  lang_msg_UpdatingConfig:string; // ���ڸ������ã����Ժ�...
  lang_msg_InstallSQL:string;     // ���Ȱ�װSQL Server
  lang_msg_ConfigError:string;    // ����Դ���ó����������,�������ֹ�����!
  lang_msg_ConfigException:string;// ����������Դ�Ĺ����г�����δ֪�Ĵ��������ԣ�

  lang_msg_SysCannotSet:string; // ϵͳû����ȷ��װODBC,�޷���������!
  lang_msg_DBPathError:string;  // ȡ���ݿ�·��ʱ���ִ���,�������Ӧ����ϵ!

  lang_msg_CloseTables:string;  // ��ر���������ʹ�õı���
  lang_msg_NoDSN:string;        // ��������ϵͳ���ó���,����ϵͳ���в����������г���!
  lang_msg_SelBupDB:string;     // ��ѡ����Ҫ���ݵ����ݿ⣡
  lang_msg_SelResDB:string;     // ��ѡ����Ҫ�ָ������ݿ⣡
  lang_msg_FileName:string;     // �ļ����ظ���
  lang_msg_Backuping:string;    // ���ڱ������ݿ⣬���Ժ�
  lang_msg_Restoring:string;    // ���ڻָ����ݿ⣬���Ժ�
  lang_msg_CreateFinish:string; // �����ɹ���
  lang_msg_CreateFail:string;   // ����ʧ�ܣ�
  lang_msg_BackupFinish:string; // ���ݳɹ���
  lang_msg_BackupFail:string;   // ����ʧ�ܣ�
  lang_msg_RestoreFinish:string;// �ָ��ɹ���
  lang_msg_RestoreFail:string;  // �ָ�ʧ�ܣ�
  lang_msg_RestoreConfirm:string; // ��Ҫ���ļ�
  lang_msg_RestoreInto:string;    // �ָ������ݿ�

  lang_msg_UserNull:string;     // �û�������Ϊ�գ�
  lang_msg_UserExist:string;    // �û����Ѵ��ڣ����������룡
  lang_msg_PswNull:string;      // ���벻��Ϊ�գ�
  lang_msg_PswDismatch:string;  // ���벻һ�£����������룡

  lang_msg_EnterUser:string;    // �������û�����
  lang_msg_EnterPsw:string;     // �������¼���룡
  lang_msg_ChoosePermit:string; // ��ѡ���˺�Ȩ�ޣ�
  lang_msg_UserNotExist:string; // ��������û��������ڣ�

  lang_msg_NoSenseLock:string;  // �򿪼��ܹ��豸ʧ�ܣ��������Ϊ:
  lang_msg_ExecuteFail:string;  // ִ��ģ��ʧ�ܣ��������Ϊ:

  lang_msg_OpenFail:string;        // �޷��򿪣�
  lang_msg_MaxScreen:string;       // �ֻ����ֻ�ܴ洢32����Ϣ��
  lang_msg_InfoEmpty:string;       // ��ϢΪ�գ�
  lang_msg_OpenPort:string;        // ���ͨ�Ŷ˿ڣ�
  lang_msg_ReleaseComplete:string; // ��Ϣ������ϣ�
  lang_msg_SaveChanges:string;     // �Ƿ񱣴��޸�?

  lang_msg_PortOpened:string;      // ͨ�Ŷ˿��Ѵ򿪣�
  lang_msg_PortNotOpened:string;   // ͨ�Ŷ˿�δ�򿪣�
  lang_msg_PortDisconnect:string;  // ͨ�Ŷ˿��ѶϿ���
  lang_msg_ProvideCard:string;     // ���ṩ���ţ�
  lang_msg_ProvideDevice:string;   // ���ṩ�豸�ţ�

  lang_msg_DownloadOK:string;      // ���سɹ���
  lang_msg_ReadCardOK:string;      // ���Ŷ�ȡ�ɹ���
  lang_msg_CommunicateFail:string; // ͨ��ʧ�ܣ�
  lang_msg_NoCard:string;          // �޿���
  lang_msg_OperateOK:string;       // �����ɹ���
  lang_msg_OperateFail:string;     // ����ʧ�ܣ�
  lang_msg_NoAvailable:string;     // ���������ã�
  lang_msg_NotCorrespond:string;   // ���Ų���Ӧ��

  lang_msg_AddrExist:string; // ¥����Ϣ�Ѵ��ڣ��޷��ظ���ӣ�
  lang_msg_DevExist:string;  // ���豸�Ѵ��ڣ��޷��ظ���ӣ�
  lang_msg_UserMacAmount:string; // �÷ֻ���ע��15�ſ���������ѡ��ֻ�����ע�ᣡ
  lang_msg_ChooseWall:string;    // ��ѡ����Ҫע���Χǽ����
  lang_msg_SelUnitWall:string;   // ��ѡ����Ҫע���������Χǽ����
  lang_msg_None:string; // ��
  lang_msg_Extracting:string;    // ��ȡ�У���ȴ���
  lang_msg_ExcelInstall:string;  // δ��װEXCEL��

  //[note]
  lang_note_Receive:string;   // ����
  lang_note_Error:string;     // ����
  lang_note_Send:string;      // ����

  lang_note_Call:string;    // ���зֻ�
  lang_note_Total:string;   // ����
  lang_note_Records:string; // ��ʼ�¼
  lang_note_Current:string; // ��ǰ�ǵ�
  lang_note_Record:string;  // һ�ʼ�¼

  //[Caption]
  lang_menu1:string;  //¥����Ϣ
  lang_menu2:string;  //�豸��Ϣ
  lang_menu3:string;  //�Ž�����
  lang_menu31:string; //���ؿ�
  lang_menu32:string; //ע����
  lang_menu33:string; //��ȡ��
  lang_menu34:string; //�����
  lang_menu35:string; //������
  lang_menu36:string; //������
  lang_menu37:string; //д����
  lang_menu4:string;  //��������
  lang_menu5:string;  //ˢ����¼
  lang_menu6:string;  //����
  
  lang_pMenuAddrAdd:string;    //����¥��
  lang_pMenuAddrEdit:string;   //�༭¥��
  lang_pMenuAddrDel:string;    //ɾ��¥��
  lang_pMenuAddrRefresh:string;//ˢ��¥��
  lang_pMenuAddrParam:string;  //¥������

  lang_pMenuDevAdd:string; //�����豸
  lang_pMenuDevEdit:string;//�༭�豸
  lang_pMenuDevDel:string; //ɾ���豸
  lang_pMenuRefresh:string;//ˢ���豸

  lang_pMenuUserAdd:string; //����˺�
  lang_pMenuUserEdit:string;//�༭Ȩ��
  lang_pMenuUserDel:string; //ɾ���˺�

  lang_gbDev:string;      // ��ѡ���豸
  lang_gbCardType:string; // ��ѡ��ע�Ῠ����
  lang_ckbBatch:string;   // ����ע��

  lang_gbServiceDoor:string; // ��ҵ������

  lang_gbCommandSending:string; //������ָ���
  lang_gbCommandReceived:string;//����ָ���
  lang_gbCommand:string;        //ָ���
  lang_gbCommandState:string;   //ָ��״̬��

  lang_gbComLink:string;   //ͨ������
  lang_gbOptions:string;   //ѡ��
  lang_gbCardList:string;  //���б�
  lang_gbDevNO:string;     //�豸����
  lang_gbOperateCmd:string;//��������

  lang_gbUserAdmin:string; //�û�����
  lang_gbPersonal:string;  //��������

  lang_cpCommunity:string; //С��

  //[DBGrid]
  lang_dgAddrColum1:string; //�豸��ַ
  lang_dgAddrColum2:string; //����¥��
  lang_dgAddrColum3:string; //�豸����
  lang_dgAddrColum4:string; //��ע

  lang_dgDevColum1:string; //�豸����
  lang_dgDevColum2:string; //�豸����
  lang_dgDevColum3:string; //�豸��ַ
  lang_dgDevColum4:string; //��ע

  lang_dgAlarmColum1:string; //��������
  lang_dgAlarmColum2:string; //�豸��ַ
  lang_dgAlarmColum3:string; //״̬
  lang_dgAlarmColum4:string; //����ʱ��
  lang_dgAlarmColum5:string; //��������
  lang_dgAlarmColum6:string; //�������

  lang_dgCardRecColum1:string; //������
  lang_dgCardRecColum2:string; //����
  lang_dgCardRecColum3:string; //ˢ����
  lang_dgCardRecColum4:string; //ˢ��ʱ��

  lang_dgUserColum1:string; //�˺���
  lang_dgUserColum2:string; //�˺�Ȩ��
  lang_dgUserColum3:string; //�˺�����

  lang_dgCardColum1:string; //������
  lang_dgCardColum2:string; //����
  lang_dgCardColum3:string; //����
  lang_dgCardColum4:string; //�ֻ�
  lang_dgCardColum5:string; //��״̬
  lang_dgCardColum6:string; //Χǽ��
  lang_dgCardColum7:string; //����
  lang_dgCardColum8:string; //����

  //[Label]
  lang_labType:string;    //����
  lang_labAddr:string;    //��ַ
  lang_labDevNON:string;  //�豸����
  lang_labUnitMac:string; //����
  lang_labUserMac:string; //�ֻ�
  lang_labAmount:string;  //����
  lang_labCardNO:string;  //����
  lang_labCOM:string;     //ͨ�Ŷ˿�
  lang_labWall:string;    //Χǽ��
  lang_labDeadLine:string;//����
  lang_labMemo:string;    //��ע
  lang_labTo:string;      //��
  lang_labName:string;    //����
  lang_labUserName:string;//�û���:
  lang_labPassword:string;//��¼����:
  lang_labPermission:string;//�û�Ȩ��:

  lang_labCardNOHex:string;   //����(ʮ������)
  lang_labIndoorPhone:string; //�ֻ���(6λ)

  lang_labDefaultName:string; //ĳĳ

  lang_labCOMProperty:string; // ͨѶ����
  lang_typeSerialPort:string; // ���ô��п�ͨѶ
  lang_typeProtocol:string;   // ��������ͨѶ
  lang_labCenterNumber:string;// �������ĺ���
  lang_labReceivePort:string; // ���ն˿�
  lang_labSendPort:string;    // ���Ͷ˿�

  lang_labUser:string;         //�û���:
  lang_labPsw:string;          //�û�����:
  lang_labNewUser:string;      //���û���:
  lang_labNewPsw:string;       //������������:
  lang_labNewPswConfirm:string;//��ȷ��������:

  //[UserParam]
  lang_gbUserP1:string; // ����
  lang_gbUserP2:string; // ��Ԫ
  lang_gbUserP3:string; // ���
  lang_gbUserP4:string; // ����

  lang_labNoLen:string;  // ����λ��
  lang_labFromTo:string; // �� ... �� ...
  lang_DateFromTo:string;// ���ڴ�...��...
  lang_labNoName:string; // ��������
  lang_labNoOrd:string;  // ����˳��

  lang_bName:string; // ��,��,��¥,#¥
  lang_uName:string; // ��Ԫ,��,��
  lang_fName:string; // ¥,��,F
  lang_hName:string; // ��

  lang_ckbDev:string;    // ͬʱ��ʼ���豸
  lang_labID:string;     // ��ʶ
  lang_labDevNO:string;  // �豸��
  lang_labDevName:string;// ����

  lang_btnEG:string;   // ʾ��
  lang_btnUser:string; // ��ʼ��

  //[Types]
  lang_devType0:string ; // �����
  lang_devType1:string ; // ����
  lang_devType2:string ; // ������
  lang_devType3:string ; // �ֻ�
  lang_devType4:string ; // Χǽ��
  lang_devTypeA:string ; // ȫ���豸
  lang_devTypeN:string ; // ���豸

  lang_cardType0:string; // ס����
  lang_cardType1:string; // ��ҵ��
  lang_cardType2:string; // ϵͳ��
  lang_cardType3:string; // Ѳ����

  lang_cardTypeX:string; // ��Ч��
  lang_cardTypeV:string; // ��Ч��
  lang_cardTypeC:string; // ��ͨ��
  lang_cardTypeU:string; // δ֪
  lang_cardTypeA:string; // ȫ��

  lang_alarmType0:string;  // ��������
  lang_alarmType1:string;  // ���ű���
  lang_alarmType2:string;  // �����ϵ�
  lang_alarmType3:string;  // �ֻ��ϵ�
  lang_alarmType4:string;  // ������������

  lang_alarmState0:string; // δ��
  lang_alarmState1:string; // �Ѷ�
  lang_alarmState2:string; // δ����
  lang_alarmState3:string; // �Ѵ���
  lang_alarmState4:string; // ȫ��

  lang_userType0:string; // ����Ա
  lang_userType1:string; // �ÿ�

  lang_chosenYes:string; // ��
  lang_chosenNo:string;  // ��

  lang_stateInvalid:string; // ��Ч
  lang_stateValid:string;   // ��Ч
  lang_stateUnknown:string; // δ֪

  //[Button]
  lang_btnQry:string;        // ��ѯ
  lang_btnOK:string;         // ȷ��
  lang_btnCancel:string;     // ȡ��
  lang_btnSel:string;        // ѡȡ
  lang_btnImport:string;     // ����Excel�������
  lang_btnExport:string;     // ����Excel���
  lang_btnDel:string;        // ɾ��
  lang_btnClear:string;      // ���
  lang_btnDownLoad:string;   // ���ؿ�
  lang_btnExtract:string;    // ��ȡ
  lang_btnConnect:string;    // ����
  lang_btnDisCon:string;     // �Ͽ�
  lang_btnRead:string;       // ��ȡ����
  lang_btnCancelCard:string; // ע����
  lang_btnEditTime:string;   // �޸�ʱ��
  lang_btnCardStatus:string; // ��״̬
  lang_btnRestoreCard:string;// ��ԭ��
  lang_btnRefresh:string;    // ˢ��
  lang_btnSave:string;    // ����
  lang_btnNew:string;     // �½�
  lang_btnEdit:string;    // �༭
  lang_btnSubmit:string;  // �ύ
  lang_btnMore:string;    // �߼�
  lang_btnHide:string;    // ����
  lang_btnBack:string;    // ����

  lang_btnClose:string;   // �ر�
  lang_btnDefault:string; // Ĭ��
  lang_btnAdd:string;     // ����

  lang_btnOpenFiles:string;    // ���ĵ�
  lang_btnSinglePage:string;   // ��ҳ����
  lang_btnContiTransmit:string;// ��������
  lang_btnSimulative:string;   // ģ����ʾ
  lang_btnSaveConti:string;    // ��������
  lang_btnListView:string;     // �б���ͼ

  //[sb_tips]
  lang_sb_tips0:string; // ͨ��
  lang_sb_tips1:string; // δ����
  lang_sb_tips2:string; // ������
  lang_sb_tips3:string; // ����
  lang_sb_tips4:string; // ����
  lang_sb_tips5:string; // ����
  lang_sb_tips6:string; // ��Ч
  lang_sb_tips7:string; // ��Ч
  lang_sb_tips8:string; // �û�:����Ա
  lang_sb_tips9:string; // �û�:�ÿ�
  lang_sb_tipsTime:string; // ��ʱ

  //[Text]
  lang_strUserNo:string;   // �û���
  lang_strCardType:string; // ������
  lang_strCardNo:string;   // ����
  lang_strCard6:string;    // ����

  lang_strRegisterCard:string; // ע�Ῠ
  lang_strCardRecord:string;   // ˢ����¼
  lang_strRecordTime:string;   // ˢ��ʱ��
  lang_strDeviceInfo:string;   // �豸��Ϣ

  //[Hint]
  lang_hintManagement:string;   // �������Ҽ����й���
  lang_hintAddCards:string;     // ˫������,������ӿ���
  lang_hintChooseCards:string;  // ˫������,����ѡȡ����
  lang_hintProcessState:string; // ˫������,���Ըı䴦�������

  //[login]
  lang_loginTitle:string;   // �������˺ź�����
  lang_loginUser:string;    // �˺�
  lang_loginPsw:string;     // ����
  lang_loginVerify:string;  // ��֤�˺ź�����...

  //[connect]
  lang_labConnectPort:string; // ͨ�Ŷ˿�
  lang_msgConnectF:string;    // ����ʧ��,������ѡ��˿�!
  lang_msgSaveParam:string;   // �������óɹ�!

implementation

end.
