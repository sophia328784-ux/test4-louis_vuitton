.class final enum Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

.field public static final enum BOOTLOADER:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

.field public static final enum BOOTLOADER_UPDATER:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

.field public static final enum FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    const-string v1, "FIRMWARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    const-string v2, "BOOTLOADER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->BOOTLOADER:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    new-instance v2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    const-string v3, "BOOTLOADER_UPDATER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->BOOTLOADER_UPDATER:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    return-object v0
.end method
