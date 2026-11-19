.class public Lcom/sightcall/uvc/DeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;


# static fields
.field private static volatile singleton:Lcom/sightcall/uvc/DeviceManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private device:Lcom/sightcall/uvc/Device;

.field private handler:Landroid/os/Handler;

.field private final isInstantApp:Z

.field private isStarted:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/uvc/DeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final receiver:Lcom/sightcall/uvc/DeviceReceiver;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/uvc/DeviceManager;->isStarted:Z

    new-instance v0, Lcom/sightcall/uvc/DeviceReceiver;

    invoke-direct {v0, p0}, Lcom/sightcall/uvc/DeviceReceiver;-><init>(Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;)V

    iput-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->receiver:Lcom/sightcall/uvc/DeviceReceiver;

    iput-object p1, p0, Lcom/sightcall/uvc/DeviceManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sightcall/uvc/DeviceManager;->isInstantApp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/sightcall/uvc/DeviceManager;->usbManager:Landroid/hardware/usb/UsbManager;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sightcall/uvc/DeviceManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method private dumpUsbDevices()V
    .locals 3

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    sget-object v1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {v0}, Lcom/sightcall/uvc/DeviceManager;->usbDeviceToString(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findAlreadyAttachedDevice()V
    .locals 3

    invoke-virtual {p0}, Lcom/sightcall/uvc/DeviceManager;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-static {v1}, Lcom/sightcall/uvc/Device;->isUvc(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sightcall/uvc/DeviceManager$1;

    invoke-direct {v2, p0, v1}, Lcom/sightcall/uvc/DeviceManager$1;-><init>(Lcom/sightcall/uvc/DeviceManager;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;
    .locals 2

    sget-object v0, Lcom/sightcall/uvc/DeviceManager;->singleton:Lcom/sightcall/uvc/DeviceManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/sightcall/uvc/DeviceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/uvc/DeviceManager;->singleton:Lcom/sightcall/uvc/DeviceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sightcall/uvc/DeviceManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sightcall/uvc/DeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sightcall/uvc/DeviceManager;->singleton:Lcom/sightcall/uvc/DeviceManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/sightcall/uvc/DeviceManager;->singleton:Lcom/sightcall/uvc/DeviceManager;

    return-object p0
.end method

.method public static usbDeviceToString(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v6

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v7

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result p0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UsbDevice{id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vendor="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", product="

    const-string v3, ", class="

    invoke-static {v4, v5, v2, v3, v8}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, ", subclass="

    const-string v3, ", protocol="

    invoke-static {v6, v7, v2, v3, v8}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", manufacturer="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", productName="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-static {v1, p0, v8}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDevice()Lcom/sightcall/uvc/Device;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    return-object p0
.end method

.method public getUsbManager()Landroid/hardware/usb/UsbManager;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->usbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method public hasDevice()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/uvc/DeviceManager;->isStarted:Z

    return p0
.end method

.method public onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sightcall/uvc/DeviceManager;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sightcall/uvc/Device;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/uvc/Device;-><init>(Lcom/sightcall/uvc/DeviceManager;Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sightcall/uvc/DeviceManager;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/uvc/DeviceListener;

    iget-object v2, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    invoke-interface {v1, v2}, Lcom/sightcall/uvc/DeviceListener;->onDeviceAttached(Lcom/sightcall/uvc/Device;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sightcall/uvc/DeviceManager;->onPermissionGranted(Landroid/hardware/usb/UsbDevice;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    invoke-static {v0, p1}, Lcom/sightcall/uvc/Device;->corresponds(Lcom/sightcall/uvc/Device;Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->listeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/uvc/DeviceListener;

    invoke-interface {v0, p1}, Lcom/sightcall/uvc/DeviceListener;->onDeviceDetached(Lcom/sightcall/uvc/Device;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/uvc/Device;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/sightcall/uvc/Device;->disconnect()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPermissionDenied(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    invoke-static {v0, p1}, Lcom/sightcall/uvc/Device;->corresponds(Lcom/sightcall/uvc/Device;Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->listeners:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/uvc/DeviceListener;

    iget-object v1, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    invoke-interface {v0, v1}, Lcom/sightcall/uvc/DeviceListener;->onDevicePermissionDenied(Lcom/sightcall/uvc/Device;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPermissionGranted(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    invoke-static {v0, p1}, Lcom/sightcall/uvc/Device;->corresponds(Lcom/sightcall/uvc/Device;Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->listeners:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/uvc/DeviceListener;

    iget-object v1, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    invoke-interface {v0, v1}, Lcom/sightcall/uvc/DeviceListener;->onDevicePermissionGranted(Lcom/sightcall/uvc/Device;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v2, "Unable to open USB camera"

    invoke-virtual {v1, v2, v0}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sightcall/uvc/DeviceManager;->onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public removeDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sightcall.uvc.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/uvc/DeviceManager;->isInstantApp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sightcall/uvc/DeviceManager;->isStarted:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/uvc/DeviceManager;->isStarted:Z

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->receiver:Lcom/sightcall/uvc/DeviceReceiver;

    iget-object v1, p0, Lcom/sightcall/uvc/DeviceManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sightcall/uvc/DeviceReceiver;->register(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sightcall/uvc/DeviceManager;->dumpUsbDevices()V

    invoke-direct {p0}, Lcom/sightcall/uvc/DeviceManager;->findAlreadyAttachedDevice()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/uvc/DeviceManager;->isInstantApp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sightcall/uvc/DeviceManager;->isStarted:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->receiver:Lcom/sightcall/uvc/DeviceReceiver;

    iget-object v1, p0, Lcom/sightcall/uvc/DeviceManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sightcall/uvc/DeviceReceiver;->unregister(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager;->device:Lcom/sightcall/uvc/Device;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/uvc/DeviceManager;->onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/uvc/DeviceManager;->isStarted:Z

    return-void
.end method
