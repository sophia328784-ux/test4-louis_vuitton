.class public final enum Lcom/lightup/sdk/device/enums/CallStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/CallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/CallStatus;

.field public static final enum ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

.field public static final enum INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

.field public static final enum NOT_AVAILABLE:Lcom/lightup/sdk/device/enums/CallStatus;

.field public static final enum NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

.field public static final enum PROCESS_ALREADY_RUNNING:Lcom/lightup/sdk/device/enums/CallStatus;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 5

    sget-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

    sget-object v2, Lcom/lightup/sdk/device/enums/CallStatus;->PROCESS_ALREADY_RUNNING:Lcom/lightup/sdk/device/enums/CallStatus;

    sget-object v3, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    sget-object v4, Lcom/lightup/sdk/device/enums/CallStatus;->NOT_AVAILABLE:Lcom/lightup/sdk/device/enums/CallStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/enums/CallStatus;

    const-string v1, "INITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    new-instance v0, Lcom/lightup/sdk/device/enums/CallStatus;

    const-string v1, "NO_DEVICE_CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

    new-instance v0, Lcom/lightup/sdk/device/enums/CallStatus;

    const-string v1, "PROCESS_ALREADY_RUNNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->PROCESS_ALREADY_RUNNING:Lcom/lightup/sdk/device/enums/CallStatus;

    new-instance v0, Lcom/lightup/sdk/device/enums/CallStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    new-instance v0, Lcom/lightup/sdk/device/enums/CallStatus;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->NOT_AVAILABLE:Lcom/lightup/sdk/device/enums/CallStatus;

    invoke-static {}, Lcom/lightup/sdk/device/enums/CallStatus;->$values()[Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->$VALUES:[Lcom/lightup/sdk/device/enums/CallStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/enums/CallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->$VALUES:[Lcom/lightup/sdk/device/enums/CallStatus;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/CallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/CallStatus;

    return-object v0
.end method
