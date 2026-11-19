.class public final enum Lcom/lightup/sdk/device/enums/ManagerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/ManagerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/ManagerState;

.field public static final enum ESTABLISHED:Lcom/lightup/sdk/device/enums/ManagerState;

.field public static final enum IDLE:Lcom/lightup/sdk/device/enums/ManagerState;

.field public static final enum STARTED:Lcom/lightup/sdk/device/enums/ManagerState;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/ManagerState;
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/enums/ManagerState;->IDLE:Lcom/lightup/sdk/device/enums/ManagerState;

    sget-object v1, Lcom/lightup/sdk/device/enums/ManagerState;->STARTED:Lcom/lightup/sdk/device/enums/ManagerState;

    sget-object v2, Lcom/lightup/sdk/device/enums/ManagerState;->ESTABLISHED:Lcom/lightup/sdk/device/enums/ManagerState;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/enums/ManagerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/enums/ManagerState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/ManagerState;->IDLE:Lcom/lightup/sdk/device/enums/ManagerState;

    new-instance v0, Lcom/lightup/sdk/device/enums/ManagerState;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/ManagerState;->STARTED:Lcom/lightup/sdk/device/enums/ManagerState;

    new-instance v0, Lcom/lightup/sdk/device/enums/ManagerState;

    const-string v1, "ESTABLISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/enums/ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/enums/ManagerState;->ESTABLISHED:Lcom/lightup/sdk/device/enums/ManagerState;

    invoke-static {}, Lcom/lightup/sdk/device/enums/ManagerState;->$values()[Lcom/lightup/sdk/device/enums/ManagerState;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/ManagerState;->$VALUES:[Lcom/lightup/sdk/device/enums/ManagerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/ManagerState;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/enums/ManagerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/ManagerState;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/ManagerState;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/ManagerState;->$VALUES:[Lcom/lightup/sdk/device/enums/ManagerState;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/ManagerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/ManagerState;

    return-object v0
.end method
