.class public Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;
.super Lcom/lightup/sdk/device/features/process/ProcessFeature;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AckableFeature"


# instance fields
.field private ackReceived:Z

.field private final ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

.field private delegate:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

.field private messageId:B

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;Z)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    const-string v0, "n/a"

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackReceived:Z

    new-instance v1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$1;-><init>(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V

    iput-object v1, v2, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    iget-object p0, v4, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    aget-byte p0, p0, v0

    iput-byte p0, v2, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->messageId:B

    iput-object p4, v2, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->delegate:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/features/Feature;->registerForNewMessages()V

    invoke-virtual {v2}, Lcom/lightup/sdk/device/features/Feature;->registerForBLEDeviceStateChange()V

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V
    .locals 7

    .line 39
    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    .line 40
    const-string v0, "n/a"

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackReceived:Z

    .line 42
    new-instance v1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$2;-><init>(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V

    iput-object v1, v2, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    .line 43
    iget-object p0, v4, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    aget-byte p0, p0, v0

    iput-byte p0, v2, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->messageId:B

    .line 44
    invoke-virtual {v2}, Lcom/lightup/sdk/device/features/Feature;->registerForNewMessages()V

    .line 45
    invoke-virtual {v2}, Lcom/lightup/sdk/device/features/Feature;->registerForBLEDeviceStateChange()V

    return-void
.end method

.method private constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;ZI)V
    .locals 8

    .line 46
    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    .line 47
    const-string v0, "n/a"

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackReceived:Z

    .line 49
    new-instance v1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature$3;-><init>(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;ZI)V

    iput-object v1, v2, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    .line 50
    invoke-virtual {v2}, Lcom/lightup/sdk/device/features/Feature;->registerForNewMessages()V

    .line 51
    invoke-virtual {v2}, Lcom/lightup/sdk/device/features/Feature;->registerForBLEDeviceStateChange()V

    return-void
.end method

.method public static synthetic access$000(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getUniqueId()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/features/Feature;->uniqueId:I

    return p0
.end method

.method public handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V

    return-void
.end method

.method public handleNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    invoke-virtual {p0, p2, p3}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->handleNewMessage(B[B)V

    return-void
.end method

.method public onAckReceived([B)Z
    .locals 2

    iget-byte v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->messageId:B

    const/4 v1, 0x0

    aget-byte p1, p1, v1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackReceived:Z

    return v1
.end method

.method public onDone()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForBLEDeviceStateChange()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForNewMessages()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->delegate:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    return-void
.end method

.method public onError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForBLEDeviceStateChange()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForNewMessages()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->delegate:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    return-void
.end method

.method public onKilled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->delegate:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-interface {p1, v0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    :cond_0
    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForBLEDeviceStateChange()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForNewMessages()V

    return-void
.end method

.method public onRequiresUpdate()V
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->delegate:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->DEVICE_REQUIRES_UPDATE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->requiresUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->onRequiresUpdate()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackReceived:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->onDone()V

    return-void

    :cond_1
    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->UNREACHABLE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->onError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V

    return-void

    :catch_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->ackableThread:Lcom/lightup/sdk/device/features/process/ackable/AckableThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->isDeviceUnbinding()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->onKilled(Z)V

    return-void
.end method

.method public setActionListener(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->delegate:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->name:Ljava/lang/String;

    return-void
.end method
