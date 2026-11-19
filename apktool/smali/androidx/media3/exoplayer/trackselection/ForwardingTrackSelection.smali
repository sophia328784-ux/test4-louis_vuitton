.class public Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# instance fields
.field public final a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(IJ)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->b(IJ)Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->c()V

    return-void
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->d()I

    move-result p0

    return p0
.end method

.method public e(I)Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->e(I)Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->f(I)I

    move-result p0

    return p0
.end method

.method public final g(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface/range {p0 .. p8}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->g(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    return-void
.end method

.method public final h(IJ)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->h(IJ)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->i(F)V

    return-void
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->k()V

    return-void
.end method

.method public final l(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->l(I)I

    move-result p0

    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result p0

    return p0
.end method

.method public m()Landroidx/media3/common/TrackGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->m()Landroidx/media3/common/TrackGroup;

    move-result-object p0

    return-object p0
.end method

.method public final n(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->n(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final o(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->o(Z)V

    return-void
.end method

.method public final p()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->p()V

    return-void
.end method

.method public final q(JLjava/util/List;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->q(JLjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final r()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->r()I

    move-result p0

    return p0
.end method

.method public s()Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public final t()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->t()I

    move-result p0

    return p0
.end method

.method public final u()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->u()V

    return-void
.end method
