.class public Lcom/sightcall/uvc/DeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;
    }
.end annotation


# static fields
.field static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.sightcall.uvc.USB_PERMISSION"

.field private static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final callback:Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/uvc/DeviceReceiver$1;

    invoke-direct {v0}, Lcom/sightcall/uvc/DeviceReceiver$1;-><init>()V

    sput-object v0, Lcom/sightcall/uvc/DeviceReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sightcall/uvc/DeviceReceiver;->callback:Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sightcall/uvc/Device;->isUvc(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.sightcall.uvc.USB_PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "permission"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceReceiver;->callback:Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;

    if-eqz p2, :cond_5

    invoke-interface {p0, p1}, Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;->onPermissionGranted(Landroid/hardware/usb/UsbDevice;)V

    return-void

    :cond_5
    invoke-interface {p0, p1}, Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;->onPermissionDenied(Landroid/hardware/usb/UsbDevice;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/sightcall/uvc/DeviceReceiver;->callback:Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;

    invoke-interface {p0, p1}, Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;->onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/sightcall/uvc/DeviceReceiver;->callback:Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;

    invoke-interface {p0, p1}, Lcom/sightcall/uvc/DeviceReceiver$DeviceReceiverCallback;->onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_2
        -0x5fdc9a67 -> :sswitch_1
        0x5f5025b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/utils/Utils;->Companion:Lcom/sightcall/pratik/utils/Utils$Companion;

    sget-object v1, Lcom/sightcall/uvc/DeviceReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, p0, v1}, Lcom/sightcall/pratik/utils/Utils$Companion;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
