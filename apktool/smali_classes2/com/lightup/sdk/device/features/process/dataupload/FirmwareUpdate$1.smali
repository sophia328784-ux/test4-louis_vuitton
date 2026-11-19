.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;
.super Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    iput p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;->a:I

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 8

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$9;->a:[I

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->h(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    invoke-static {v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v0

    iget-object v0, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->h:[B

    invoke-static {v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v1

    iget v1, v1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->i:I

    goto :goto_0

    :cond_0
    const-string p0, "this should not happen"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v0

    iget-object v0, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->k:[B

    invoke-static {v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v1

    iget v1, v1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->l:I

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v0

    iget-object v0, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->b:[B

    invoke-static {v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v1

    iget v1, v1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->c:I

    :goto_0
    array-length v4, v0

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    long-to-int v0, v5

    new-instance v5, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    sget-object v6, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_START:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v6}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v7

    invoke-direct {v5, v7}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    invoke-virtual {v6}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    const/4 v3, 0x4

    invoke-virtual {v5, v4, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;->a:I

    invoke-virtual {v5, p0, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v5, v0, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v5, v1, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget-object p0, v5, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->TRANSFER_SUCCESS:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-static {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->p(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    return-void
.end method

.method public final c(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->access$000(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError()V
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->TRANSFER_FAILURE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-static {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->p(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    return-void
.end method

.method public final onProgress(D)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {p0, p1, p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->n(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;D)V

    return-void
.end method
