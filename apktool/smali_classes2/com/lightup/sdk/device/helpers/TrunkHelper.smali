.class public final Lcom/lightup/sdk/device/helpers/TrunkHelper;
.super Lcom/lightup/sdk/device/helpers/LightupCommonHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/TrunkHelper;",
        "Lcom/lightup/sdk/device/helpers/LightupCommonHelper;",
        "context",
        "Landroid/content/Context;",
        "apiKey",
        "",
        "bleAvailabilityListener",
        "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    new-instance p2, Lcom/lightup/sdk/device/devicemanagement/BLETrunkManager;

    iget-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->internetTimeReader:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p1, p3, v0}, Lcom/lightup/sdk/device/devicemanagement/BLETrunkManager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->setLightupManager$library(Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;)V

    return-void
.end method
