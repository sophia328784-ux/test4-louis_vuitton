.class public final enum Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

.field public static final enum CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

.field public static final enum INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

.field public static final enum NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

.field public static final enum TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

.field public static final enum TRANSFER_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

.field public static final enum UNEXPECTED_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;
    .locals 6

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    sget-object v2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    sget-object v3, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    sget-object v4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TRANSFER_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    sget-object v5, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    filled-new-array/range {v0 .. v5}, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    const-string v1, "NO_UPDATE_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    const-string v1, "CONNECTION_LOST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    const-string v1, "UNEXPECTED_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    const-string v1, "TRANSFER_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TRANSFER_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    const-string v1, "INTERRUPTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-static {}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->$values()[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    return-object v0
.end method
