.class public final enum Lcom/lightup/sdk/device/enums/PairOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/PairOrientation;

.field public static final enum LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

.field public static final enum RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

.field public static final enum UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;


# instance fields
.field private identifier:I


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/PairOrientation;
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    sget-object v1, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    sget-object v2, Lcom/lightup/sdk/device/enums/PairOrientation;->UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/lightup/sdk/device/enums/PairOrientation;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/lightup/sdk/device/enums/PairOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    new-instance v0, Lcom/lightup/sdk/device/enums/PairOrientation;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/lightup/sdk/device/enums/PairOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    new-instance v0, Lcom/lightup/sdk/device/enums/PairOrientation;

    const/4 v1, 0x2

    const/16 v2, 0xff

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/lightup/sdk/device/enums/PairOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-static {}, Lcom/lightup/sdk/device/enums/PairOrientation;->$values()[Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->$VALUES:[Lcom/lightup/sdk/device/enums/PairOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/lightup/sdk/device/enums/PairOrientation;->identifier:I

    return-void
.end method

.method public static from(B)Lcom/lightup/sdk/device/enums/PairOrientation;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/lightup/sdk/device/enums/PairOrientation;->UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/PairOrientation;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/PairOrientation;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/PairOrientation;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->$VALUES:[Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/PairOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/PairOrientation;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/enums/PairOrientation;->identifier:I

    return p0
.end method
