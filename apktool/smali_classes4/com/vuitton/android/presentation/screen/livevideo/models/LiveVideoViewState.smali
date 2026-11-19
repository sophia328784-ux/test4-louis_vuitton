.class public final Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;",
        "liveVideoState",
        "",
        "isLive",
        "",
        "videoUrl",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "videoPlayer",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;ZLjava/lang/String;Landroidx/media3/exoplayer/ExoPlayer;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/media3/exoplayer/ExoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 31
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;-><init>(Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;ZLjava/lang/String;Landroidx/media3/exoplayer/ExoPlayer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;ZLjava/lang/String;Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->a:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    .line 28
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->b:Z

    .line 29
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->c:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;ZLjava/lang/String;Landroidx/media3/exoplayer/ExoPlayer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;->WAITING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;-><init>(Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;ZLjava/lang/String;Landroidx/media3/exoplayer/ExoPlayer;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->a:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->a:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->a:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LiveVideoViewState(liveVideoState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->a:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
