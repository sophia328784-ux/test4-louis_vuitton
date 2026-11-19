.class public final Lcom/lightup/sdk/device/helpers/KeepAllHelper;
.super Lcom/lightup/sdk/device/helpers/LightupCommonHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/ble/exceptions/ScannerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    new-instance p2, Lcom/lightup/sdk/device/devicemanagement/BLEKeepAllManager;

    iget-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->internetTimeReader:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;

    invoke-direct {p2, p1, p3, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEKeepAllManager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V

    iput-object p2, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->lightupManager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    return-void
.end method
