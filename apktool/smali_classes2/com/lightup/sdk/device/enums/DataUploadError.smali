.class public final enum Lcom/lightup/sdk/device/enums/DataUploadError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/DataUploadError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/DataUploadError;

.field public static final enum ConnectionLost:Lcom/lightup/sdk/device/enums/DataUploadError;

.field public static final enum Interrupted:Lcom/lightup/sdk/device/enums/DataUploadError;

.field public static final enum OverMemory:Lcom/lightup/sdk/device/enums/DataUploadError;

.field public static final enum TimeOut:Lcom/lightup/sdk/device/enums/DataUploadError;

.field public static final enum TransferError:Lcom/lightup/sdk/device/enums/DataUploadError;

.field public static final enum UnexpectedError:Lcom/lightup/sdk/device/enums/DataUploadError;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/DataUploadError;
    .locals 6

    sget-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->TransferError:Lcom/lightup/sdk/device/enums/DataUploadError;

    sget-object v1, Lcom/lightup/sdk/device/enums/DataUploadError;->TimeOut:Lcom/lightup/sdk/device/enums/DataUploadError;

    sget-object v2, Lcom/lightup/sdk/device/enums/DataUploadError;->ConnectionLost:Lcom/lightup/sdk/device/enums/DataUploadError;

    sget-object v3, Lcom/lightup/sdk/device/enums/DataUploadError;->UnexpectedError:Lcom/lightup/sdk/device/enums/DataUploadError;

    sget-object v4, Lcom/lightup/sdk/device/enums/DataUploadError;->Interrupted:Lcom/lightup/sdk/device/enums/DataUploadError;

    sget-object v5, Lcom/lightup/sdk/device/enums/DataUploadError;->OverMemory:Lcom/lightup/sdk/device/enums/DataUploadError;

    filled-new-array/range {v0 .. v5}, [Lcom/lightup/sdk/device/enums/DataUploadError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/lightup/sdk/device/enums/DataUploadError;

    const/4 v1, 0x0

    const-string v2, "Error during transfer"

    const-string v3, "TransferError"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DataUploadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->TransferError:Lcom/lightup/sdk/device/enums/DataUploadError;

    new-instance v0, Lcom/lightup/sdk/device/enums/DataUploadError;

    const/4 v1, 0x1

    const-string v2, "Device timeout"

    const-string v3, "TimeOut"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DataUploadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->TimeOut:Lcom/lightup/sdk/device/enums/DataUploadError;

    new-instance v0, Lcom/lightup/sdk/device/enums/DataUploadError;

    const/4 v1, 0x2

    const-string v2, "Lost connection to device"

    const-string v3, "ConnectionLost"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DataUploadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->ConnectionLost:Lcom/lightup/sdk/device/enums/DataUploadError;

    new-instance v0, Lcom/lightup/sdk/device/enums/DataUploadError;

    const/4 v1, 0x3

    const-string v2, "Unknown error"

    const-string v3, "UnexpectedError"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DataUploadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->UnexpectedError:Lcom/lightup/sdk/device/enums/DataUploadError;

    new-instance v0, Lcom/lightup/sdk/device/enums/DataUploadError;

    const/4 v1, 0x4

    const-string v2, "Action was interrupted"

    const-string v3, "Interrupted"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DataUploadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->Interrupted:Lcom/lightup/sdk/device/enums/DataUploadError;

    new-instance v0, Lcom/lightup/sdk/device/enums/DataUploadError;

    const/4 v1, 0x5

    const-string v2, "Memory is full on device"

    const-string v3, "OverMemory"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DataUploadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->OverMemory:Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-static {}, Lcom/lightup/sdk/device/enums/DataUploadError;->$values()[Lcom/lightup/sdk/device/enums/DataUploadError;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->$VALUES:[Lcom/lightup/sdk/device/enums/DataUploadError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lightup/sdk/device/enums/DataUploadError;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/DataUploadError;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/DataUploadError;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/DataUploadError;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->$VALUES:[Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/DataUploadError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/DataUploadError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/enums/DataUploadError;->value:Ljava/lang/String;

    return-object p0
.end method
