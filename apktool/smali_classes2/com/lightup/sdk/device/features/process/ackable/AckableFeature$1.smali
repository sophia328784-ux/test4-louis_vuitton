.class Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$1;
.super Lcom/lightup/sdk/device/features/process/ackable/AckableThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$1;->this$0:Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V

    return-void
.end method


# virtual methods
.method public onAckReceived([B)Z
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$1;->this$0:Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->onAckReceived([B)Z

    move-result p0

    return p0
.end method

.method public putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$1;->this$0:Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    invoke-static {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->access$000(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method
