.class public final Lcom/lightup/sdk/device/devicemanagement/BLEKeepAllManager;
.super Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B!\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0016\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/lightup/sdk/device/devicemanagement/BLEKeepAllManager;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
        "context",
        "Landroid/content/Context;",
        "permissionsManager",
        "Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;",
        "internetTimeReader",
        "Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;",
        "<init>",
        "(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "createBLEDevice",
        "Lcom/lightup/sdk/device/devicemanagement/BLEKeepAll;",
        "deviceId",
        "Lcom/lightup/sdk/device/model/device/DeviceId;",
        "name",
        "mac",
        "scanRecord",
        "",
        "defineScanFilterPattern",
        "",
        "isModeValid",
        "",
        "mode",
        "Lcom/lightup/sdk/device/enums/DeviceMode;",
        "library"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_KEEP_ALL:[B

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "_keepall"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;Ljava/lang/String;[B)V

    const-string p0, "BLEKeepAllManager"

    iput-object p0, v0, Lcom/lightup/sdk/device/devicemanagement/BLEKeepAllManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/devicemanagement/BLEKeepAllManager;->createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEKeepAll;

    move-result-object p0

    return-object p0
.end method

.method public createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEKeepAll;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/lightup/sdk/device/devicemanagement/BLEKeepAll;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getSerialNumber()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    const-string v0, "KeepAll_"

    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p4, p3, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEKeepAll;-><init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;)V

    return-object p2
.end method

.method public bridge synthetic createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLELightup;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/devicemanagement/BLEKeepAllManager;->createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEKeepAll;

    move-result-object p0

    return-object p0
.end method

.method public defineScanFilterPattern()V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_KEEP_ALL:[B

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setPatternId([B)V

    return-void
.end method

.method public isModeValid(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/lightup/sdk/device/SpecificProperties;->KEEP_ALL_AVAILABLE_MODE:[Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
