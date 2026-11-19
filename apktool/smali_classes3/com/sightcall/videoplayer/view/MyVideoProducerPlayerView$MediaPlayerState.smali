.class final enum Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

.field public static final enum IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

.field public static final enum PAUSED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

.field public static final enum PREPARED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

.field public static final enum PREPARING:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

.field public static final enum STARTED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;
    .locals 5

    sget-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    sget-object v1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PREPARING:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    sget-object v2, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PREPARED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    sget-object v3, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->STARTED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    sget-object v4, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PAUSED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    new-instance v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    const-string v1, "PREPARING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PREPARING:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    new-instance v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    const-string v1, "PREPARED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PREPARED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    new-instance v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    const-string v1, "STARTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->STARTED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    new-instance v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    const-string v1, "PAUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PAUSED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    invoke-static {}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->$values()[Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    move-result-object v0

    sput-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->$VALUES:[Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;
    .locals 1

    const-class v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;
    .locals 1

    sget-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->$VALUES:[Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    invoke-virtual {v0}, [Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    return-object v0
.end method
