.class public Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;",
        ">",
        "Landroid/content/BroadcastReceiver;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BLEAvailabilityReceiver"


# instance fields
.field private final base:Landroid/content/Context;

.field private bleAvailabilityListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private devicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->bleAvailabilityListener:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->base:Landroid/content/Context;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->devicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onNewBluetoothState(I)V

    :cond_0
    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0xc

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->bleAvailabilityListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;->onAvailable()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->bleAvailabilityListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;->onUnavailable()V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized registerConnectionForBluetoothAvailabilityChange(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->devicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->base:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public declared-synchronized unRegisterConnectionFromBluetoothAvailabilityChange()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->devicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateListener(Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->bleAvailabilityListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
