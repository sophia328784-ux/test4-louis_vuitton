.class final Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/TrackGroup;[I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    const/4 v0, 0x0

    aget p2, p2, v0

    iget-object p1, p1, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object p1, p1, p2

    :goto_0
    iget p2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b:I

    if-ge v0, p2, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    aget-object p2, p2, v0

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;->g:I

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;->g:I

    return p0
.end method

.method public final g(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget p3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;->g:I

    invoke-virtual {p0, p3, p1, p2}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    invoke-virtual {p0, p3, p1, p2}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    iput p3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;->g:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lr81;->b()V

    return-void
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final t()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
