.class public final enum Lcom/lightup/sdk/device/enums/DeviceState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/DeviceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum CONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum DISCONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum DISCONNECTED_BROKEN:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum DISCONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum ERROR:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum HARD_RESET_AWAITING_RECONNECTION:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum NOT_CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum READY:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

.field public static final enum REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/DeviceState;
    .locals 13

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->NOT_CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->CONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceState;->CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v4, Lcom/lightup/sdk/device/enums/DeviceState;->READY:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v5, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v6, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v7, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v8, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v9, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v10, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED_BROKEN:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v11, Lcom/lightup/sdk/device/enums/DeviceState;->HARD_RESET_AWAITING_RECONNECTION:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v12, Lcom/lightup/sdk/device/enums/DeviceState;->ERROR:Lcom/lightup/sdk/device/enums/DeviceState;

    filled-new-array/range {v0 .. v12}, [Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "NOT_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->NOT_CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "REGISTERING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->CONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "READY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->READY:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "IN_BOOTLOADER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "REGISTERED_REQUIRES_UPDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "REGISTERED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "DISCONNECTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "DISCONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "DISCONNECTED_BROKEN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED_BROKEN:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "HARD_RESET_AWAITING_RECONNECTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->HARD_RESET_AWAITING_RECONNECTION:Lcom/lightup/sdk/device/enums/DeviceState;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v1, "ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->ERROR:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-static {}, Lcom/lightup/sdk/device/enums/DeviceState;->$values()[Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->$VALUES:[Lcom/lightup/sdk/device/enums/DeviceState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/DeviceState;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/DeviceState;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/DeviceState;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->$VALUES:[Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/DeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/DeviceState;

    return-object v0
.end method
