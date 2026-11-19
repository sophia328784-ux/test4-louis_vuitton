.class public abstract Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;)Landroidx/media3/common/MediaItem;
    .locals 4

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->d:Ljava/lang/String;

    iput-object v2, v1, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->e:Ljava/lang/String;

    iput-object v2, v1, Landroidx/media3/common/MediaMetadata$Builder;->f:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroidx/media3/common/MediaMetadata$Builder;->b:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Landroidx/media3/common/MediaMetadata$Builder;->n:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/media3/common/MediaMetadata$Builder;->c(Ljava/lang/Long;)V

    new-instance p0, Landroidx/media3/common/MediaMetadata;

    invoke-direct {p0, v1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    iput-object p0, v0, Landroidx/media3/common/MediaItem$Builder;->l:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method
