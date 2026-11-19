.class public Lcom/lp/ble/manager/LPBLEDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;
    }
.end annotation


# instance fields
.field private commonInfo:Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;

.field private devSetting:Lcom/lp/ble/model/BLEDevSetting;

.field private hwInfo:Lcom/lp/ble/model/BLEHWInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonInfo()Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo;->commonInfo:Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;

    return-object p0
.end method

.method public getDevSetting()Lcom/lp/ble/model/BLEDevSetting;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo;->devSetting:Lcom/lp/ble/model/BLEDevSetting;

    return-object p0
.end method

.method public getHwInfo()Lcom/lp/ble/model/BLEHWInfo;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo;->hwInfo:Lcom/lp/ble/model/BLEHWInfo;

    return-object p0
.end method

.method public setCommonInfo(Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo;->commonInfo:Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;

    return-void
.end method

.method public setDevSetting(Lcom/lp/ble/model/BLEDevSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo;->devSetting:Lcom/lp/ble/model/BLEDevSetting;

    return-void
.end method

.method public setHwInfo(Lcom/lp/ble/model/BLEHWInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEDeviceInfo;->hwInfo:Lcom/lp/ble/model/BLEHWInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
