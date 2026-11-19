.class Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SampleStreamWrapperCallback"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/hls/HlsMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->b:Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 11

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->b:Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->w:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x()V

    iget-object v5, v5, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget v5, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v4, [Landroidx/media3/common/TrackGroup;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x()V

    iget-object v7, v6, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget v7, v7, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x()V

    iget-object v10, v6, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v10, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->x:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->j(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->b:Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final n(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->b:Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->h(Landroid/net/Uri;)V

    return-void
.end method
