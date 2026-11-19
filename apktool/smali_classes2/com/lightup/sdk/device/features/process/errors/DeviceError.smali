.class public final enum Lcom/lightup/sdk/device/features/process/errors/DeviceError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/errors/DeviceError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/errors/DeviceError;

.field public static final enum CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

.field public static final enum DEVICE_REQUIRES_UPDATE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

.field public static final enum UNKNOWN:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

.field public static final enum UNREACHABLE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/features/process/errors/DeviceError;
    .locals 4

    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->DEVICE_REQUIRES_UPDATE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    sget-object v1, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    sget-object v2, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->UNKNOWN:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    sget-object v3, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->UNREACHABLE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    filled-new-array {v0, v1, v2, v3}, [Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    const-string v1, "DEVICE_REQUIRES_UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/errors/DeviceError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->DEVICE_REQUIRES_UPDATE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    const-string v1, "CONNECTION_LOST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/errors/DeviceError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/errors/DeviceError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->UNKNOWN:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    const-string v1, "UNREACHABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/errors/DeviceError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->UNREACHABLE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-static {}, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->$values()[Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->$VALUES:[Lcom/lightup/sdk/device/features/process/errors/DeviceError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/errors/DeviceError;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/errors/DeviceError;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->$VALUES:[Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/errors/DeviceError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    return-object v0
.end method
