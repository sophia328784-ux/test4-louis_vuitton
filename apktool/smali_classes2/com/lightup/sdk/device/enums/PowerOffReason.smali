.class public final enum Lcom/lightup/sdk/device/enums/PowerOffReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/PowerOffReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/PowerOffReason;

.field public static final enum BATTERY_LOW:Lcom/lightup/sdk/device/enums/PowerOffReason;

.field public static final enum BUTTON_ACTION:Lcom/lightup/sdk/device/enums/PowerOffReason;

.field public static final enum CRITICAL_HEAT:Lcom/lightup/sdk/device/enums/PowerOffReason;

.field private static final DEBUG:Z = false

.field public static final enum SMARTPHONE:Lcom/lightup/sdk/device/enums/PowerOffReason;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNKNOWN:Lcom/lightup/sdk/device/enums/PowerOffReason;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/PowerOffReason;
    .locals 5

    sget-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->UNKNOWN:Lcom/lightup/sdk/device/enums/PowerOffReason;

    sget-object v1, Lcom/lightup/sdk/device/enums/PowerOffReason;->BATTERY_LOW:Lcom/lightup/sdk/device/enums/PowerOffReason;

    sget-object v2, Lcom/lightup/sdk/device/enums/PowerOffReason;->BUTTON_ACTION:Lcom/lightup/sdk/device/enums/PowerOffReason;

    sget-object v3, Lcom/lightup/sdk/device/enums/PowerOffReason;->CRITICAL_HEAT:Lcom/lightup/sdk/device/enums/PowerOffReason;

    sget-object v4, Lcom/lightup/sdk/device/enums/PowerOffReason;->SMARTPHONE:Lcom/lightup/sdk/device/enums/PowerOffReason;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/lightup/sdk/device/enums/PowerOffReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/enums/PowerOffReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/PowerOffReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->UNKNOWN:Lcom/lightup/sdk/device/enums/PowerOffReason;

    new-instance v0, Lcom/lightup/sdk/device/enums/PowerOffReason;

    const-string v1, "BATTERY_LOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/PowerOffReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->BATTERY_LOW:Lcom/lightup/sdk/device/enums/PowerOffReason;

    new-instance v0, Lcom/lightup/sdk/device/enums/PowerOffReason;

    const-string v1, "BUTTON_ACTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/PowerOffReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->BUTTON_ACTION:Lcom/lightup/sdk/device/enums/PowerOffReason;

    new-instance v0, Lcom/lightup/sdk/device/enums/PowerOffReason;

    const-string v1, "CRITICAL_HEAT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/PowerOffReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->CRITICAL_HEAT:Lcom/lightup/sdk/device/enums/PowerOffReason;

    new-instance v0, Lcom/lightup/sdk/device/enums/PowerOffReason;

    const-string v1, "SMARTPHONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/PowerOffReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->SMARTPHONE:Lcom/lightup/sdk/device/enums/PowerOffReason;

    invoke-static {}, Lcom/lightup/sdk/device/enums/PowerOffReason;->$values()[Lcom/lightup/sdk/device/enums/PowerOffReason;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->$VALUES:[Lcom/lightup/sdk/device/enums/PowerOffReason;

    const-string v0, "PowerOffReason"

    sput-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->TAG:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/PowerOffReason;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/enums/PowerOffReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/PowerOffReason;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/PowerOffReason;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/PowerOffReason;->$VALUES:[Lcom/lightup/sdk/device/enums/PowerOffReason;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/PowerOffReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/PowerOffReason;

    return-object v0
.end method
