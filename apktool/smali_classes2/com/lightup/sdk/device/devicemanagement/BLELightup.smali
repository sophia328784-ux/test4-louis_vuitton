.class public Lcom/lightup/sdk/device/devicemanagement/BLELightup;
.super Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B/\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u001b\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008\u001dJ\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0010\u00a2\u0006\u0002\u0008!J\r\u0010\"\u001a\u00020#H\u0010\u00a2\u0006\u0002\u0008$J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\'H\u0016J\u000f\u0010(\u001a\u0004\u0018\u00010\u000fH\u0000\u00a2\u0006\u0002\u0008)J\u0015\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008,R\u0016\u0010\u000b\u001a\n \u000c*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006-"
    }
    d2 = {
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;",
        "deviceId",
        "Lcom/lightup/sdk/device/model/device/DeviceId;",
        "name",
        "",
        "mac",
        "manager",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;",
        "<init>",
        "(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V",
        "TAG",
        "kotlin.jvm.PlatformType",
        "loadedAnimations",
        "Ljava/util/ArrayList;",
        "Lcom/lightup/sdk/animation/CreatorProject;",
        "Lkotlin/collections/ArrayList;",
        "getLoadedAnimations$library",
        "()Ljava/util/ArrayList;",
        "setLoadedAnimations$library",
        "(Ljava/util/ArrayList;)V",
        "triggerIndex",
        "",
        "getTriggerIndex$library",
        "()I",
        "setTriggerIndex$library",
        "(I)V",
        "isLeft",
        "",
        "isLeft$library",
        "buildCypher",
        "",
        "deviceIdBytes",
        "buildCypher$library",
        "sendUnlock",
        "",
        "sendUnlock$library",
        "update",
        "firmwareUpdateListener",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;",
        "getCurrentlyPlaying",
        "getCurrentlyPlaying$library",
        "setCurrentlyPlaying",
        "triggerId",
        "setCurrentlyPlaying$library",
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


# instance fields
.field private final TAG:Ljava/lang/String;

.field private loadedAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;"
        }
    .end annotation
.end field

.field private triggerIndex:I


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/lightup/sdk/device/model/device/DeviceType;->LIGHTUP:Lcom/lightup/sdk/device/model/device/DeviceType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;-><init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/model/device/DeviceType;)V

    const-string p0, "BLELightup"

    iput-object p0, v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->TAG:Ljava/lang/String;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->loadedAnimations:Ljava/util/ArrayList;

    const/4 p0, -0x1

    iput p0, v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->triggerIndex:I

    return-void
.end method

.method public static synthetic k(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->sendUnlock$lambda$0(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method

.method private static final sendUnlock$lambda$0(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 3

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getIsAdminMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getIsModePing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPairingId()[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v2, v0, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lightup/sdk/device/model/device/DeviceId;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->buildCypher$library([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPairingId()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lightup/sdk/device/messages/MessageBuilder;->d([B[B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lightup/sdk/device/model/device/DeviceId;->getPairingId()[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v2, v0, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lightup/sdk/device/model/device/DeviceId;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->buildCypher$library([B)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getPairingId()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lightup/sdk/device/messages/MessageBuilder;->d([B[B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic buildCypher([B)[B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->buildCypher$library([B)[B

    move-result-object p0

    return-object p0
.end method

.method public buildCypher$library([B)[B
    .locals 25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x2

    aget-byte v3, p1, v2

    xor-int v4, v1, v3

    int-to-byte v4, v4

    const/4 v5, 0x1

    aget-byte v6, p1, v5

    const/4 v7, 0x4

    aget-byte v8, p1, v7

    xor-int v9, v6, v8

    int-to-byte v9, v9

    xor-int v10, v3, v1

    int-to-byte v10, v10

    const/4 v11, 0x3

    aget-byte v12, p1, v11

    const/4 v13, 0x7

    aget-byte v14, p1, v13

    xor-int v15, v12, v14

    int-to-byte v15, v15

    const/16 v16, 0x6

    aget-byte v17, p1, v16

    move/from16 p0, v2

    xor-int v2, v8, v17

    int-to-byte v2, v2

    const/16 v18, 0x5

    aget-byte v19, p1, v18

    move/from16 v20, v5

    xor-int v5, v19, v6

    int-to-byte v5, v5

    move/from16 v21, v7

    xor-int v7, v17, v12

    int-to-byte v7, v7

    xor-int/2addr v3, v14

    int-to-byte v3, v3

    move/from16 v22, v11

    xor-int v11, v1, v6

    int-to-byte v11, v11

    xor-int v6, v6, v19

    int-to-byte v6, v6

    move/from16 v23, v13

    int-to-byte v13, v0

    move/from16 v24, v0

    xor-int v0, v12, v8

    int-to-byte v0, v0

    xor-int/2addr v1, v8

    int-to-byte v1, v1

    xor-int v8, v19, v14

    int-to-byte v8, v8

    xor-int v12, v17, v12

    int-to-byte v12, v12

    xor-int v14, v14, v19

    int-to-byte v14, v14

    move/from16 v17, v0

    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v4, v0, v24

    aput-byte v9, v0, v20

    aput-byte v10, v0, p0

    aput-byte v15, v0, v22

    aput-byte v2, v0, v21

    aput-byte v5, v0, v18

    aput-byte v7, v0, v16

    aput-byte v3, v0, v23

    const/16 v2, 0x8

    aput-byte v11, v0, v2

    const/16 v2, 0x9

    aput-byte v6, v0, v2

    const/16 v2, 0xa

    aput-byte v13, v0, v2

    const/16 v2, 0xb

    aput-byte v17, v0, v2

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    const/16 v1, 0xd

    aput-byte v8, v0, v1

    const/16 v1, 0xe

    aput-byte v12, v0, v1

    const/16 v1, 0xf

    aput-byte v14, v0, v1

    return-object v0
.end method

.method public final getCurrentlyPlaying$library()Lcom/lightup/sdk/animation/CreatorProject;
    .locals 4

    iget v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->triggerIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->loadedAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/lightup/sdk/animation/CreatorProject;

    invoke-virtual {v1}, Lcom/lightup/sdk/animation/CreatorProject;->getTriggerIndex()I

    move-result v2

    iget v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->triggerIndex:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLoadedAnimations$library()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->loadedAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getTriggerIndex$library()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->triggerIndex:I

    return p0
.end method

.method public final isLeft$library()Z
    .locals 1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object p0

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic sendUnlock()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->sendUnlock$library()V

    return-void
.end method

.method public sendUnlock$library()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lz1;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final setCurrentlyPlaying$library(I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->triggerIndex:I

    return-void
.end method

.method public final setLoadedAnimations$library(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->loadedAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTriggerIndex$library(I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->triggerIndex:I

    return-void
.end method

.method public update(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "update"

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->updatePossible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v5, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    const/16 v7, 0x100

    const/16 v8, 0x2710

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)Lcom/lightup/sdk/device/features/process/ProcessFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->execute()I
    :try_end_1
    .catch Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "This should not happen"

    invoke-static {p1, p0}, Laz;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception v0

    move-object v5, p0

    move-object p0, v0

    goto :goto_1

    :goto_0
    invoke-virtual {v5, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v2

    :goto_1
    invoke-virtual {v5, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw p0
.end method
