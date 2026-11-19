.class synthetic Lcom/lightup/sdk/device/enums/UpdateError$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/enums/UpdateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->values()[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lightup/sdk/device/enums/UpdateError$1;->$SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError:[I

    :try_start_0
    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/lightup/sdk/device/enums/UpdateError$1;->$SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError:[I

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/lightup/sdk/device/enums/UpdateError$1;->$SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError:[I

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/lightup/sdk/device/enums/UpdateError$1;->$SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError:[I

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/lightup/sdk/device/enums/UpdateError$1;->$SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError:[I

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TRANSFER_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
