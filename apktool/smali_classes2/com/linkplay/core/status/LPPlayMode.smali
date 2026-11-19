.class public final enum Lcom/linkplay/core/status/LPPlayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/core/status/LPPlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/core/status/LPPlayMode;

.field public static final enum LP_DEFAULT:Lcom/linkplay/core/status/LPPlayMode;

.field public static final enum LP_LISTREPEAT:Lcom/linkplay/core/status/LPPlayMode;

.field public static final enum LP_SHUFFLE:Lcom/linkplay/core/status/LPPlayMode;

.field public static final enum LP_SHUFFLEREPEAT:Lcom/linkplay/core/status/LPPlayMode;

.field public static final enum LP_SINGLEREPEAT:Lcom/linkplay/core/status/LPPlayMode;


# instance fields
.field private status:I


# direct methods
.method private static synthetic $values()[Lcom/linkplay/core/status/LPPlayMode;
    .locals 5

    sget-object v0, Lcom/linkplay/core/status/LPPlayMode;->LP_LISTREPEAT:Lcom/linkplay/core/status/LPPlayMode;

    sget-object v1, Lcom/linkplay/core/status/LPPlayMode;->LP_SINGLEREPEAT:Lcom/linkplay/core/status/LPPlayMode;

    sget-object v2, Lcom/linkplay/core/status/LPPlayMode;->LP_SHUFFLE:Lcom/linkplay/core/status/LPPlayMode;

    sget-object v3, Lcom/linkplay/core/status/LPPlayMode;->LP_SHUFFLEREPEAT:Lcom/linkplay/core/status/LPPlayMode;

    sget-object v4, Lcom/linkplay/core/status/LPPlayMode;->LP_DEFAULT:Lcom/linkplay/core/status/LPPlayMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/linkplay/core/status/LPPlayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/linkplay/core/status/LPPlayMode;

    const-string v1, "LP_LISTREPEAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/linkplay/core/status/LPPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayMode;->LP_LISTREPEAT:Lcom/linkplay/core/status/LPPlayMode;

    new-instance v0, Lcom/linkplay/core/status/LPPlayMode;

    const-string v1, "LP_SINGLEREPEAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/linkplay/core/status/LPPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayMode;->LP_SINGLEREPEAT:Lcom/linkplay/core/status/LPPlayMode;

    new-instance v0, Lcom/linkplay/core/status/LPPlayMode;

    const-string v1, "LP_SHUFFLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/linkplay/core/status/LPPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayMode;->LP_SHUFFLE:Lcom/linkplay/core/status/LPPlayMode;

    new-instance v0, Lcom/linkplay/core/status/LPPlayMode;

    const-string v1, "LP_SHUFFLEREPEAT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/linkplay/core/status/LPPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayMode;->LP_SHUFFLEREPEAT:Lcom/linkplay/core/status/LPPlayMode;

    new-instance v0, Lcom/linkplay/core/status/LPPlayMode;

    const-string v1, "LP_DEFAULT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/linkplay/core/status/LPPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayMode;->LP_DEFAULT:Lcom/linkplay/core/status/LPPlayMode;

    invoke-static {}, Lcom/linkplay/core/status/LPPlayMode;->$values()[Lcom/linkplay/core/status/LPPlayMode;

    move-result-object v0

    sput-object v0, Lcom/linkplay/core/status/LPPlayMode;->$VALUES:[Lcom/linkplay/core/status/LPPlayMode;

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

    iput p3, p0, Lcom/linkplay/core/status/LPPlayMode;->status:I

    return-void
.end method

.method public static byOrdinal(I)Lcom/linkplay/core/status/LPPlayMode;
    .locals 5

    invoke-static {}, Lcom/linkplay/core/status/LPPlayMode;->values()[Lcom/linkplay/core/status/LPPlayMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/linkplay/core/status/LPPlayMode;->status:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/linkplay/core/status/LPPlayMode;->LP_LISTREPEAT:Lcom/linkplay/core/status/LPPlayMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayMode;
    .locals 1

    const-class v0, Lcom/linkplay/core/status/LPPlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/core/status/LPPlayMode;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/core/status/LPPlayMode;
    .locals 1

    sget-object v0, Lcom/linkplay/core/status/LPPlayMode;->$VALUES:[Lcom/linkplay/core/status/LPPlayMode;

    invoke-virtual {v0}, [Lcom/linkplay/core/status/LPPlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/core/status/LPPlayMode;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/status/LPPlayMode;->status:I

    return p0
.end method
