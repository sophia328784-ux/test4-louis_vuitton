.class Lcom/sightcall/uvc/DeviceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/uvc/DeviceManager;->findAlreadyAttachedDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/uvc/DeviceManager;

.field final synthetic val$usbDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Lcom/sightcall/uvc/DeviceManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/uvc/DeviceManager$1;->this$0:Lcom/sightcall/uvc/DeviceManager;

    iput-object p2, p0, Lcom/sightcall/uvc/DeviceManager$1;->val$usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/uvc/DeviceManager$1;->this$0:Lcom/sightcall/uvc/DeviceManager;

    iget-object p0, p0, Lcom/sightcall/uvc/DeviceManager$1;->val$usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, p0}, Lcom/sightcall/uvc/DeviceManager;->onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
