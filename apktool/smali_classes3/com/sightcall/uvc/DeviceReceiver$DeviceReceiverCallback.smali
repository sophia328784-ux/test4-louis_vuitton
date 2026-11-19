.class interface abstract Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/uvc/DeviceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceReceiverCallback"
.end annotation


# virtual methods
.method public abstract onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onPermissionDenied(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onPermissionGranted(Landroid/hardware/usb/UsbDevice;)V
.end method
