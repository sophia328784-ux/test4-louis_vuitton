.class public final enum Lcom/lightup/sdk/device/messages/InternalPowerOfReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/messages/InternalPowerOfReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

.field public static final enum BATTERY_LOW:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

.field public static final enum BUTTON_ACTION:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

.field public static final enum CRITICAL_HEAT:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

.field private static final DEBUG:Z = false

.field public static final enum LOCK:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

.field public static final enum SMARTPHONE:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UPDATING:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;


# instance fields
.field public value:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    const-string v1, "BATTERY_LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->BATTERY_LOW:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    new-instance v1, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    const-string v2, "BUTTON_ACTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->BUTTON_ACTION:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    new-instance v2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    const-string v3, "CRITICAL_HEAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->CRITICAL_HEAT:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    new-instance v3, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    const-string v4, "LOCK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->LOCK:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    new-instance v4, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    const-string v5, "UPDATING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->UPDATING:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    new-instance v5, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    const-string v6, "SMARTPHONE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->SMARTPHONE:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    filled-new-array/range {v0 .. v5}, [Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->$VALUES:[Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    const-string v0, "PowerOffReason"

    sput-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/messages/InternalPowerOfReason;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/messages/InternalPowerOfReason;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->$VALUES:[Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/lightup/sdk/device/enums/PowerOffReason;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/PowerOffReason;->UNKNOWN:Lcom/lightup/sdk/device/enums/PowerOffReason;

    return-object p0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/PowerOffReason;->SMARTPHONE:Lcom/lightup/sdk/device/enums/PowerOffReason;

    return-object p0

    :cond_1
    sget-object p0, Lcom/lightup/sdk/device/enums/PowerOffReason;->CRITICAL_HEAT:Lcom/lightup/sdk/device/enums/PowerOffReason;

    return-object p0

    :cond_2
    sget-object p0, Lcom/lightup/sdk/device/enums/PowerOffReason;->BUTTON_ACTION:Lcom/lightup/sdk/device/enums/PowerOffReason;

    return-object p0

    :cond_3
    sget-object p0, Lcom/lightup/sdk/device/enums/PowerOffReason;->BATTERY_LOW:Lcom/lightup/sdk/device/enums/PowerOffReason;

    return-object p0
.end method
