.class public final enum Lcom/lightup/sdk/device/enums/UpdateError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/UpdateError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/UpdateError;

.field public static final enum INTERRUPTED:Lcom/lightup/sdk/device/enums/UpdateError;

.field public static final enum NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/enums/UpdateError;

.field public static final enum TIMEOUT:Lcom/lightup/sdk/device/enums/UpdateError;

.field public static final enum TRANSFER_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;

.field public static final enum UNEXPECTED_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/UpdateError;
    .locals 5

    sget-object v0, Lcom/lightup/sdk/device/enums/UpdateError;->NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/enums/UpdateError;

    sget-object v1, Lcom/lightup/sdk/device/enums/UpdateError;->TIMEOUT:Lcom/lightup/sdk/device/enums/UpdateError;

    sget-object v2, Lcom/lightup/sdk/device/enums/UpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;

    sget-object v3, Lcom/lightup/sdk/device/enums/UpdateError;->TRANSFER_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;

    sget-object v4, Lcom/lightup/sdk/device/enums/UpdateError;->INTERRUPTED:Lcom/lightup/sdk/device/enums/UpdateError;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/lightup/sdk/device/enums/UpdateError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/enums/UpdateError;

    const-string v1, "NO_UPDATE_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/UpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/UpdateError;->NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/enums/UpdateError;

    new-instance v0, Lcom/lightup/sdk/device/enums/UpdateError;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/UpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/UpdateError;->TIMEOUT:Lcom/lightup/sdk/device/enums/UpdateError;

    new-instance v0, Lcom/lightup/sdk/device/enums/UpdateError;

    const-string v1, "UNEXPECTED_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/UpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/UpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;

    new-instance v0, Lcom/lightup/sdk/device/enums/UpdateError;

    const-string v1, "TRANSFER_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/UpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/UpdateError;->TRANSFER_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;

    new-instance v0, Lcom/lightup/sdk/device/enums/UpdateError;

    const-string v1, "INTERRUPTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/UpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/UpdateError;->INTERRUPTED:Lcom/lightup/sdk/device/enums/UpdateError;

    invoke-static {}, Lcom/lightup/sdk/device/enums/UpdateError;->$values()[Lcom/lightup/sdk/device/enums/UpdateError;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/UpdateError;->$VALUES:[Lcom/lightup/sdk/device/enums/UpdateError;

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

.method public static fromFirmwareUpdateError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)Lcom/lightup/sdk/device/enums/UpdateError;
    .locals 2

    sget-object v0, Lcom/lightup/sdk/device/enums/UpdateError$1;->$SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/UpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;

    return-object p0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/UpdateError;->TRANSFER_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;

    return-object p0

    :cond_1
    sget-object p0, Lcom/lightup/sdk/device/enums/UpdateError;->TIMEOUT:Lcom/lightup/sdk/device/enums/UpdateError;

    return-object p0

    :cond_2
    sget-object p0, Lcom/lightup/sdk/device/enums/UpdateError;->NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/enums/UpdateError;

    return-object p0

    :cond_3
    sget-object p0, Lcom/lightup/sdk/device/enums/UpdateError;->INTERRUPTED:Lcom/lightup/sdk/device/enums/UpdateError;

    return-object p0

    :cond_4
    const-string v0, "No match for "

    invoke-static {p0, v0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/UpdateError;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/enums/UpdateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/UpdateError;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/UpdateError;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/UpdateError;->$VALUES:[Lcom/lightup/sdk/device/enums/UpdateError;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/UpdateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/UpdateError;

    return-object v0
.end method
