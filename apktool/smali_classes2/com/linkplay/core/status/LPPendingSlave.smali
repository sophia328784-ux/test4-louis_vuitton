.class public final enum Lcom/linkplay/core/status/LPPendingSlave;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/core/status/LPPendingSlave;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/core/status/LPPendingSlave;

.field public static final enum LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

.field public static final enum LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;


# instance fields
.field private status:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/linkplay/core/status/LPPendingSlave;
    .locals 2

    sget-object v0, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    sget-object v1, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    filled-new-array {v0, v1}, [Lcom/linkplay/core/status/LPPendingSlave;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/linkplay/core/status/LPPendingSlave;

    const/4 v1, 0x0

    const-string v2, "master"

    const-string v3, "LP_PENDING_MASTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPendingSlave;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    new-instance v0, Lcom/linkplay/core/status/LPPendingSlave;

    const/4 v1, 0x1

    const-string v2, "slave"

    const-string v3, "LP_PENDING_SLAVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPendingSlave;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-static {}, Lcom/linkplay/core/status/LPPendingSlave;->$values()[Lcom/linkplay/core/status/LPPendingSlave;

    move-result-object v0

    sput-object v0, Lcom/linkplay/core/status/LPPendingSlave;->$VALUES:[Lcom/linkplay/core/status/LPPendingSlave;

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

    iput-object p3, p0, Lcom/linkplay/core/status/LPPendingSlave;->status:Ljava/lang/String;

    return-void
.end method

.method public static byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPendingSlave;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/status/LPPendingSlave;->values()[Lcom/linkplay/core/status/LPPendingSlave;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/linkplay/core/status/LPPendingSlave;->status:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/core/status/LPPendingSlave;
    .locals 1

    const-class v0, Lcom/linkplay/core/status/LPPendingSlave;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/core/status/LPPendingSlave;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/core/status/LPPendingSlave;
    .locals 1

    sget-object v0, Lcom/linkplay/core/status/LPPendingSlave;->$VALUES:[Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v0}, [Lcom/linkplay/core/status/LPPendingSlave;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/core/status/LPPendingSlave;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/status/LPPendingSlave;->status:Ljava/lang/String;

    return-object p0
.end method
