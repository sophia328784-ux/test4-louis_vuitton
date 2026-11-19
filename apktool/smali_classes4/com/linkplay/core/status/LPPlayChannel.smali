.class public final enum Lcom/linkplay/core/status/LPPlayChannel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/core/status/LPPlayChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/core/status/LPPlayChannel;

.field public static final enum LP_CHANNEL_LEFT:Lcom/linkplay/core/status/LPPlayChannel;

.field public static final enum LP_CHANNEL_RIGHT:Lcom/linkplay/core/status/LPPlayChannel;

.field public static final enum LP_CHANNEL_STEREO:Lcom/linkplay/core/status/LPPlayChannel;


# instance fields
.field private status:I


# direct methods
.method private static synthetic $values()[Lcom/linkplay/core/status/LPPlayChannel;
    .locals 3

    sget-object v0, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_STEREO:Lcom/linkplay/core/status/LPPlayChannel;

    sget-object v1, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_LEFT:Lcom/linkplay/core/status/LPPlayChannel;

    sget-object v2, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_RIGHT:Lcom/linkplay/core/status/LPPlayChannel;

    filled-new-array {v0, v1, v2}, [Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/linkplay/core/status/LPPlayChannel;

    const-string v1, "LP_CHANNEL_STEREO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/linkplay/core/status/LPPlayChannel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_STEREO:Lcom/linkplay/core/status/LPPlayChannel;

    new-instance v0, Lcom/linkplay/core/status/LPPlayChannel;

    const-string v1, "LP_CHANNEL_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/linkplay/core/status/LPPlayChannel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_LEFT:Lcom/linkplay/core/status/LPPlayChannel;

    new-instance v0, Lcom/linkplay/core/status/LPPlayChannel;

    const-string v1, "LP_CHANNEL_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/linkplay/core/status/LPPlayChannel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_RIGHT:Lcom/linkplay/core/status/LPPlayChannel;

    invoke-static {}, Lcom/linkplay/core/status/LPPlayChannel;->$values()[Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object v0

    sput-object v0, Lcom/linkplay/core/status/LPPlayChannel;->$VALUES:[Lcom/linkplay/core/status/LPPlayChannel;

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

    iput p3, p0, Lcom/linkplay/core/status/LPPlayChannel;->status:I

    return-void
.end method

.method public static byOrdinal(I)Lcom/linkplay/core/status/LPPlayChannel;
    .locals 5

    invoke-static {}, Lcom/linkplay/core/status/LPPlayChannel;->values()[Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/linkplay/core/status/LPPlayChannel;->status:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_STEREO:Lcom/linkplay/core/status/LPPlayChannel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayChannel;
    .locals 1

    const-class v0, Lcom/linkplay/core/status/LPPlayChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/core/status/LPPlayChannel;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/core/status/LPPlayChannel;
    .locals 1

    sget-object v0, Lcom/linkplay/core/status/LPPlayChannel;->$VALUES:[Lcom/linkplay/core/status/LPPlayChannel;

    invoke-virtual {v0}, [Lcom/linkplay/core/status/LPPlayChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/core/status/LPPlayChannel;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/status/LPPlayChannel;->status:I

    return p0
.end method
