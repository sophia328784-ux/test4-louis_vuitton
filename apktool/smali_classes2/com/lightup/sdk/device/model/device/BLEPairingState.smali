.class public final enum Lcom/lightup/sdk/device/model/device/BLEPairingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/model/device/BLEPairingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/model/device/BLEPairingState;

.field public static final enum DENIED:Lcom/lightup/sdk/device/model/device/BLEPairingState;

.field public static final enum GRANTED:Lcom/lightup/sdk/device/model/device/BLEPairingState;

.field public static final enum REQUEST_PENDING:Lcom/lightup/sdk/device/model/device/BLEPairingState;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/model/device/BLEPairingState;
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;->REQUEST_PENDING:Lcom/lightup/sdk/device/model/device/BLEPairingState;

    sget-object v1, Lcom/lightup/sdk/device/model/device/BLEPairingState;->DENIED:Lcom/lightup/sdk/device/model/device/BLEPairingState;

    sget-object v2, Lcom/lightup/sdk/device/model/device/BLEPairingState;->GRANTED:Lcom/lightup/sdk/device/model/device/BLEPairingState;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/model/device/BLEPairingState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;

    const-string v1, "REQUEST_PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/BLEPairingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;->REQUEST_PENDING:Lcom/lightup/sdk/device/model/device/BLEPairingState;

    new-instance v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;

    const-string v1, "DENIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/BLEPairingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;->DENIED:Lcom/lightup/sdk/device/model/device/BLEPairingState;

    new-instance v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;

    const-string v1, "GRANTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/BLEPairingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;->GRANTED:Lcom/lightup/sdk/device/model/device/BLEPairingState;

    invoke-static {}, Lcom/lightup/sdk/device/model/device/BLEPairingState;->$values()[Lcom/lightup/sdk/device/model/device/BLEPairingState;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;->$VALUES:[Lcom/lightup/sdk/device/model/device/BLEPairingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/model/device/BLEPairingState;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/model/device/BLEPairingState;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/model/device/BLEPairingState;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEPairingState;->$VALUES:[Lcom/lightup/sdk/device/model/device/BLEPairingState;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/model/device/BLEPairingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/model/device/BLEPairingState;

    return-object v0
.end method
