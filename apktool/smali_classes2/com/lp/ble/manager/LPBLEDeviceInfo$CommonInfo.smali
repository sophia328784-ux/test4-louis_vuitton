.class public Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lp/ble/manager/LPBLEDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonInfo"
.end annotation


# instance fields
.field private BT_MAC:Ljava/lang/String;

.field private audioInputModeVer:Ljava/lang/String;

.field private audioOutputModeVer:Ljava/lang/String;

.field private battery:I

.field private bleActiveStatus:Ljava/lang/String;

.field private bleVersion:Ljava/lang/String;

.field private btMode:Ljava/lang/String;

.field private bt_name:Ljava/lang/String;

.field private charge_status:I

.field private deviceSettingVer:Ljava/lang/String;

.field private firmware:Ljava/lang/String;

.field private first_oobe:I

.field private hotpotState:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private protocolVersion:Ljava/lang/String;

.field private security_version:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field final synthetic this$0:Lcom/lp/ble/manager/LPBLEDeviceInfo;

.field private userName:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private wifiMode:Ljava/lang/String;

.field private wifi_5G:Z


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEDeviceInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->this$0:Lcom/lp/ble/manager/LPBLEDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->uuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->BT_MAC:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->security_version:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->hotpotState:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->wifiMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->btMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->battery:I

    iput v0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->charge_status:I

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->protocolVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bleVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->firmware:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bleActiveStatus:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bt_name:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->sn:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->wifi_5G:Z

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->userName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->first_oobe:I

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->audioOutputModeVer:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->audioInputModeVer:Ljava/lang/String;

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->deviceSettingVer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAudioInputModeVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->audioInputModeVer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->audioInputModeVer:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioOutputModeVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->audioOutputModeVer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->audioOutputModeVer:Ljava/lang/String;

    return-object p0
.end method

.method public getBT_MAC()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->BT_MAC:Ljava/lang/String;

    return-object p0
.end method

.method public getBattery()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->battery:I

    return p0
.end method

.method public getBleActiveStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bleActiveStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getBleVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bleVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getBtMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->btMode:Ljava/lang/String;

    return-object p0
.end method

.method public getBt_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bt_name:Ljava/lang/String;

    return-object p0
.end method

.method public getCharge_status()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->charge_status:I

    return p0
.end method

.method public getDeviceSettingVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->deviceSettingVer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->deviceSettingVer:Ljava/lang/String;

    return-object p0
.end method

.method public getFirmware()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->firmware:Ljava/lang/String;

    return-object p0
.end method

.method public getFirst_oobe()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->first_oobe:I

    return p0
.end method

.method public getHotpotState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->hotpotState:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->protocolVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurity_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->security_version:Ljava/lang/String;

    return-object p0
.end method

.method public getSn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->sn:Ljava/lang/String;

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->userName:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->wifiMode:Ljava/lang/String;

    return-object p0
.end method

.method public isWifi_5G()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->wifi_5G:Z

    return p0
.end method

.method public setBT_MAC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->BT_MAC:Ljava/lang/String;

    return-void
.end method

.method public setBattery(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->battery:I

    return-void
.end method

.method public setBleActiveStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bleActiveStatus:Ljava/lang/String;

    return-void
.end method

.method public setBleVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bleVersion:Ljava/lang/String;

    return-void
.end method

.method public setBtMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->btMode:Ljava/lang/String;

    return-void
.end method

.method public setBt_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->bt_name:Ljava/lang/String;

    return-void
.end method

.method public setCharge_status(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->charge_status:I

    return-void
.end method

.method public setFirmware(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->firmware:Ljava/lang/String;

    return-void
.end method

.method public setFirst_oobe(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->first_oobe:I

    return-void
.end method

.method public setHotpotState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->hotpotState:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->protocolVersion:Ljava/lang/String;

    return-void
.end method

.method public setSecurity_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->security_version:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->sn:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setWifiMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->wifiMode:Ljava/lang/String;

    return-void
.end method

.method public setWifi_5G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->wifi_5G:Z

    return-void
.end method
