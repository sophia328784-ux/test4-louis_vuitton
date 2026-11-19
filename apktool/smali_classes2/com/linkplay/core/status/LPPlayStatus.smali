.class public final enum Lcom/linkplay/core/status/LPPlayStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/core/status/LPPlayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/core/status/LPPlayStatus;

.field public static final enum LP_PLAY_STATUS_NO_MEDIA_PRESENT:Lcom/linkplay/core/status/LPPlayStatus;

.field public static final enum LP_PLAY_STATUS_PAUSED_PLAYBACK:Lcom/linkplay/core/status/LPPlayStatus;

.field public static final enum LP_PLAY_STATUS_PLAYING:Lcom/linkplay/core/status/LPPlayStatus;

.field public static final enum LP_PLAY_STATUS_STOPPED:Lcom/linkplay/core/status/LPPlayStatus;

.field public static final enum LP_PLAY_STATUS_TRANSITIONING:Lcom/linkplay/core/status/LPPlayStatus;


# instance fields
.field private status:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/linkplay/core/status/LPPlayStatus;
    .locals 5

    sget-object v0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_PLAYING:Lcom/linkplay/core/status/LPPlayStatus;

    sget-object v1, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_STOPPED:Lcom/linkplay/core/status/LPPlayStatus;

    sget-object v2, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_PAUSED_PLAYBACK:Lcom/linkplay/core/status/LPPlayStatus;

    sget-object v3, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_TRANSITIONING:Lcom/linkplay/core/status/LPPlayStatus;

    sget-object v4, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_NO_MEDIA_PRESENT:Lcom/linkplay/core/status/LPPlayStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/linkplay/core/status/LPPlayStatus;

    const/4 v1, 0x0

    const-string v2, "PLAYING"

    const-string v3, "LP_PLAY_STATUS_PLAYING"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_PLAYING:Lcom/linkplay/core/status/LPPlayStatus;

    new-instance v0, Lcom/linkplay/core/status/LPPlayStatus;

    const/4 v1, 0x1

    const-string v2, "STOPPED"

    const-string v3, "LP_PLAY_STATUS_STOPPED"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_STOPPED:Lcom/linkplay/core/status/LPPlayStatus;

    new-instance v0, Lcom/linkplay/core/status/LPPlayStatus;

    const/4 v1, 0x2

    const-string v2, "PAUSED_PLAYBACK"

    const-string v3, "LP_PLAY_STATUS_PAUSED_PLAYBACK"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_PAUSED_PLAYBACK:Lcom/linkplay/core/status/LPPlayStatus;

    new-instance v0, Lcom/linkplay/core/status/LPPlayStatus;

    const/4 v1, 0x3

    const-string v2, "TRANSITIONING"

    const-string v3, "LP_PLAY_STATUS_TRANSITIONING"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_TRANSITIONING:Lcom/linkplay/core/status/LPPlayStatus;

    new-instance v0, Lcom/linkplay/core/status/LPPlayStatus;

    const/4 v1, 0x4

    const-string v2, "NO_MEDIA_PRESENT"

    const-string v3, "LP_PLAY_STATUS_NO_MEDIA_PRESENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_NO_MEDIA_PRESENT:Lcom/linkplay/core/status/LPPlayStatus;

    invoke-static {}, Lcom/linkplay/core/status/LPPlayStatus;->$values()[Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v0

    sput-object v0, Lcom/linkplay/core/status/LPPlayStatus;->$VALUES:[Lcom/linkplay/core/status/LPPlayStatus;

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

    iput-object p3, p0, Lcom/linkplay/core/status/LPPlayStatus;->status:Ljava/lang/String;

    return-void
.end method

.method public static byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayStatus;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_NO_MEDIA_PRESENT:Lcom/linkplay/core/status/LPPlayStatus;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/status/LPPlayStatus;->values()[Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/linkplay/core/status/LPPlayStatus;->status:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_NO_MEDIA_PRESENT:Lcom/linkplay/core/status/LPPlayStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayStatus;
    .locals 1

    const-class v0, Lcom/linkplay/core/status/LPPlayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/core/status/LPPlayStatus;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/core/status/LPPlayStatus;
    .locals 1

    sget-object v0, Lcom/linkplay/core/status/LPPlayStatus;->$VALUES:[Lcom/linkplay/core/status/LPPlayStatus;

    invoke-virtual {v0}, [Lcom/linkplay/core/status/LPPlayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/core/status/LPPlayStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/status/LPPlayStatus;->status:Ljava/lang/String;

    return-object p0
.end method
