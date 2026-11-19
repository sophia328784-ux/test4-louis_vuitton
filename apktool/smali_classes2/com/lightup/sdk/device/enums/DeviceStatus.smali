.class public final enum Lcom/lightup/sdk/device/enums/DeviceStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/DeviceStatus;

.field public static final enum OFF:Lcom/lightup/sdk/device/enums/DeviceStatus;

.field public static final enum ON:Lcom/lightup/sdk/device/enums/DeviceStatus;

.field public static final enum STANDBY:Lcom/lightup/sdk/device/enums/DeviceStatus;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/DeviceStatus;
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceStatus;->OFF:Lcom/lightup/sdk/device/enums/DeviceStatus;

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceStatus;->ON:Lcom/lightup/sdk/device/enums/DeviceStatus;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceStatus;->STANDBY:Lcom/lightup/sdk/device/enums/DeviceStatus;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/enums/DeviceStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceStatus;

    const/4 v1, 0x0

    const-string v2, "Off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceStatus;->OFF:Lcom/lightup/sdk/device/enums/DeviceStatus;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceStatus;

    const/4 v1, 0x1

    const-string v2, "On"

    const-string v3, "ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceStatus;->ON:Lcom/lightup/sdk/device/enums/DeviceStatus;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceStatus;

    const/4 v1, 0x2

    const-string v2, "Standby"

    const-string v3, "STANDBY"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/DeviceStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceStatus;->STANDBY:Lcom/lightup/sdk/device/enums/DeviceStatus;

    invoke-static {}, Lcom/lightup/sdk/device/enums/DeviceStatus;->$values()[Lcom/lightup/sdk/device/enums/DeviceStatus;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceStatus;->$VALUES:[Lcom/lightup/sdk/device/enums/DeviceStatus;

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

    iput-object p3, p0, Lcom/lightup/sdk/device/enums/DeviceStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/DeviceStatus;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/enums/DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/DeviceStatus;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/DeviceStatus;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceStatus;->$VALUES:[Lcom/lightup/sdk/device/enums/DeviceStatus;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/DeviceStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/enums/DeviceStatus;->value:Ljava/lang/String;

    return-object p0
.end method
