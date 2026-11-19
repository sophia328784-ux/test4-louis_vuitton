.class public Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BLEDeviceHelper"


# instance fields
.field protected internetTimeReader:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;

.field protected permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;

    invoke-direct {v0}, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->internetTimeReader:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->a:Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;

    invoke-virtual {p1, p2}, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->updateListener(Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->a()V

    return-void

    :cond_0
    new-instance v0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    invoke-direct {v0, p1, p2}, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->a:Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->stop()V

    :cond_0
    return-void
.end method
