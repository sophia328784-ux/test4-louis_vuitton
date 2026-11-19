.class final Landroidx/media3/exoplayer/PlaylistTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.source "SourceFile"


# instance fields
.field public final i:I

.field public final j:I

.field public final k:[I

.field public final l:[I

.field public final m:[Landroidx/media3/common/Timeline;

.field public final n:[Ljava/lang/Object;

.field public final o:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/media3/exoplayer/MediaSourceInfoHolder;",
            ">;",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/Timeline;

    .line 81
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaSourceInfoHolder;

    add-int/lit8 v5, v3, 0x1

    .line 82
    invoke-interface {v4}, Landroidx/media3/exoplayer/MediaSourceInfoHolder;->a()Landroidx/media3/common/Timeline;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaSourceInfoHolder;

    add-int/lit8 v4, v2, 0x1

    .line 85
    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaSourceInfoHolder;->getUid()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_1

    .line 86
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    return-void
.end method

.method public constructor <init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    array-length p3, p1

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->m:[Landroidx/media3/common/Timeline;

    new-array v1, p3, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->k:[I

    new-array p3, p3, [I

    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->l:[I

    iput-object p2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->n:[Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->o:Ljava/util/HashMap;

    array-length p3, p1

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v4, p1, v0

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->m:[Landroidx/media3/common/Timeline;

    aput-object v4, v5, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->l:[I

    aput v1, v5, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->k:[I

    aput v2, v5, v3

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->o()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->m:[Landroidx/media3/common/Timeline;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->h()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->o:Ljava/util/HashMap;

    aget-object v5, p2, v3

    add-int/lit8 v6, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:I

    iput v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->j:I

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->j:I

    return p0
.end method

.method public final o()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:I

    return p0
.end method

.method public final q(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->o:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final r(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->k:[I

    invoke-static {p0, p1, v0, v0}, Landroidx/media3/common/util/Util;->e([IIZZ)I

    move-result p0

    return p0
.end method

.method public final s(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->l:[I

    invoke-static {p0, p1, v0, v0}, Landroidx/media3/common/util/Util;->e([IIZZ)I

    move-result p0

    return p0
.end method

.method public final t(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->n:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final u(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->k:[I

    aget p0, p0, p1

    return p0
.end method

.method public final v(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->l:[I

    aget p0, p0, p1

    return p0
.end method

.method public final x(I)Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->m:[Landroidx/media3/common/Timeline;

    aget-object p0, p0, p1

    return-object p0
.end method
