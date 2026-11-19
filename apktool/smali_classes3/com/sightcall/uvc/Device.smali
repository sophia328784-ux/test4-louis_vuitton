.class public Lcom/sightcall/uvc/Device;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private camera:Lcom/sightcall/uvc/Camera;

.field private ctrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

.field private final deviceManager:Lcom/sightcall/uvc/DeviceManager;

.field private isConnected:Z

.field private final usbDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Lcom/sightcall/uvc/DeviceManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/uvc/Device;->isConnected:Z

    invoke-static {p2}, Lcom/sightcall/uvc/Device;->isUvc(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sightcall/uvc/Device;->deviceManager:Lcom/sightcall/uvc/DeviceManager;

    iput-object p2, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    return-void

    :cond_0
    const-string p0, "Usb device is not UVC compatible"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static corresponds(Lcom/sightcall/uvc/Device;Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/uvc/Device;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUvc(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    const/16 v1, 0xef

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public connect()V
    .locals 3

    iget-boolean v0, p0, Lcom/sightcall/uvc/Device;->isConnected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sightcall/uvc/UsbControlBlock;

    iget-object v1, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/sightcall/uvc/Device;->deviceManager:Lcom/sightcall/uvc/DeviceManager;

    invoke-virtual {v2}, Lcom/sightcall/uvc/DeviceManager;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/uvc/UsbControlBlock;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;)V

    iput-object v0, p0, Lcom/sightcall/uvc/Device;->ctrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    new-instance v0, Lcom/sightcall/uvc/Camera;

    invoke-direct {v0}, Lcom/sightcall/uvc/Camera;-><init>()V

    iput-object v0, p0, Lcom/sightcall/uvc/Device;->camera:Lcom/sightcall/uvc/Camera;

    iget-object v1, p0, Lcom/sightcall/uvc/Device;->ctrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    invoke-virtual {v0, v1}, Lcom/sightcall/uvc/Camera;->open(Lcom/sightcall/uvc/UsbControlBlock;)V

    iget-object v0, p0, Lcom/sightcall/uvc/Device;->camera:Lcom/sightcall/uvc/Camera;

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->updateCameraParams()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/uvc/Device;->isConnected:Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/uvc/Device;->isConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/uvc/Device;->camera:Lcom/sightcall/uvc/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->destroy()V

    iput-object v1, p0, Lcom/sightcall/uvc/Device;->camera:Lcom/sightcall/uvc/Camera;

    :cond_1
    iget-object v0, p0, Lcom/sightcall/uvc/Device;->ctrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/uvc/UsbControlBlock;->close()V

    iput-object v1, p0, Lcom/sightcall/uvc/Device;->ctrlBlock:Lcom/sightcall/uvc/UsbControlBlock;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/uvc/Device;->isConnected:Z

    return-void
.end method

.method public getCamera()Lcom/sightcall/uvc/Camera;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/Device;->camera:Lcom/sightcall/uvc/Camera;

    return-object p0
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    return-object p0
.end method

.method public hasPermission()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/uvc/Device;->deviceManager:Lcom/sightcall/uvc/DeviceManager;

    iget-object p0, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, p0}, Lcom/sightcall/uvc/DeviceManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/uvc/Device;->isConnected:Z

    return p0
.end method

.method public requestPermission()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/uvc/Device;->deviceManager:Lcom/sightcall/uvc/DeviceManager;

    iget-object p0, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, p0}, Lcom/sightcall/uvc/DeviceManager;->requestPermission(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    iget-object v1, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    iget-object v3, p0, Lcom/sightcall/uvc/Device;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v3

    invoke-virtual {p0}, Lcom/sightcall/uvc/Device;->hasPermission()Z

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", class="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subclass="

    const-string v1, ", isGranted="

    invoke-static {v2, v3, v0, v1, v4}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
