.class public final enum Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

.field public static final enum CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

.field public static final enum DEVICE_LOCKED:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

.field public static final enum DEVICE_NOT_FOUND:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    sget-object v1, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->DEVICE_NOT_FOUND:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    sget-object v2, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->DEVICE_LOCKED:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    const-string v1, "CONNECTION_LOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    const-string v1, "DEVICE_NOT_FOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->DEVICE_NOT_FOUND:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    new-instance v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    const-string v1, "DEVICE_LOCKED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->DEVICE_LOCKED:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-static {}, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->$values()[Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->$VALUES:[Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->$VALUES:[Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    return-object v0
.end method
