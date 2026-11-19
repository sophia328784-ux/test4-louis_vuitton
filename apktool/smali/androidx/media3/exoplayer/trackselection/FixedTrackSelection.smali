.class public final Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/common/TrackGroup;I)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;II)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;IIILjava/lang/Object;)V
    .locals 0

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    iput p4, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->g:I

    iput-object p5, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 0

    return-void
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->g:I

    return p0
.end method
