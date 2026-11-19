.class Landroidx/media3/exoplayer/RendererHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/exoplayer/Renderer;

.field public final b:I

.field public final c:Landroidx/media3/exoplayer/Renderer;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/Renderer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    iput p3, p0, Landroidx/media3/exoplayer/RendererHolder;->b:I

    iput-object p2, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    iput-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    return-void
.end method

.method public static g(Landroidx/media3/exoplayer/Renderer;)Z
    .locals 0

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Landroidx/media3/exoplayer/Renderer;J)V
    .locals 1

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->n()V

    instance-of v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/media3/exoplayer/text/TextRenderer;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->L:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    iget-object p0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->d:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, p0, :cond_3

    const/4 p0, 0x0

    iput-object p0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    iput-object p0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->d:Landroidx/media3/exoplayer/Renderer;

    iput-boolean v1, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->f:Z

    :cond_3
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    const/4 p2, 0x2

    if-ne p0, p2, :cond_4

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_4
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->c()V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;
    .locals 4

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->b:I

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->G()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v2

    aget-object v3, p1, v0

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->G()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v1

    aget-object p1, p1, v0

    if-ne v1, p1, :cond_2

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z
    .locals 5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->b:I

    aget-object v0, v0, p0

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->G()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->G()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v1

    if-ne v1, v0, :cond_1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->h:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v1, :cond_1

    instance-of v1, p2, Landroidx/media3/exoplayer/text/TextRenderer;

    if-nez v1, :cond_3

    instance-of v1, p2, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    if-nez v1, :cond_3

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->H()J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object p0, p1, p0

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->G()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result p0

    return p0
.end method

.method public final h(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->reset()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->reset()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    :cond_1
    return-void
.end method

.method public final i(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I
    .locals 11

    const/4 v4, 0x1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, v5, :cond_1

    iget v6, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v6, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    const/4 v8, 0x3

    if-ne p1, v6, :cond_2

    iget v6, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    if-ne v6, v8, :cond_2

    return v4

    :cond_2
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->G()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v6

    iget-object v7, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    iget v9, p0, Landroidx/media3/exoplayer/RendererHolder;->b:I

    aget-object v7, v7, v9

    const/4 v10, 0x0

    if-eq v6, v7, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v10

    :goto_0
    invoke-virtual {p3, v9}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->u()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v0, p3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v0, v0, v9

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v3

    goto :goto_1

    :cond_5
    move v3, v10

    :goto_1
    new-array v1, v3, [Landroidx/media3/common/Format;

    :goto_2
    if-ge v10, v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v10}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->e(I)Landroidx/media3/common/Format;

    move-result-object v4

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v3

    iget-wide v5, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-object v2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v7, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v2, v0

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Landroidx/media3/exoplayer/Renderer;->r([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return v8

    :cond_7
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, p1, p4}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->e()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    if-ne p1, v5, :cond_9

    move v10, v4

    :cond_9
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/RendererHolder;->h(Z)V

    return v4

    :cond_a
    return v10

    :cond_b
    :goto_3
    return v4
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->h(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->h(Z)V

    :cond_2
    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->start()V

    :cond_1
    return-void
.end method
