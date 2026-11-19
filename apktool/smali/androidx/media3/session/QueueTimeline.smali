.class final Landroidx/media3/session/QueueTimeline;
.super Landroidx/media3/common/Timeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/QueueTimeline$QueuedMediaItem;
    }
.end annotation


# static fields
.field public static final g:Landroidx/media3/session/QueueTimeline;

.field public static final h:Ljava/lang/Object;


# instance fields
.field public final e:Lcom/google/common/collect/ImmutableList;

.field public final f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/session/QueueTimeline;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    sput-object v0, Landroidx/media3/session/QueueTimeline;->g:Landroidx/media3/session/QueueTimeline;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/session/QueueTimeline;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/session/QueueTimeline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/session/QueueTimeline;

    iget-object v1, p0, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    iget-object p1, p1, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 12

    invoke-virtual {p0, p1}, Landroidx/media3/session/QueueTimeline;->s(I)Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v0, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->c:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/media3/common/AdPlaybackState;->g:Landroidx/media3/common/AdPlaybackState;

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    move v5, p1

    move-object v2, p2

    invoke-virtual/range {v2 .. v11}, Landroidx/media3/common/Timeline$Period;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    return-object v2
.end method

.method public final h()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/QueueTimeline;->o()I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 22

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/session/QueueTimeline;->s(I)Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    move-result-object v0

    iget-object v3, v0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->a:Landroidx/media3/common/MediaItem;

    iget-wide v0, v0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->c:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v16

    const-wide/16 v20, 0x0

    sget-object v2, Landroidx/media3/session/QueueTimeline;->h:Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move/from16 v19, p1

    move/from16 v18, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v21}, Landroidx/media3/common/Timeline$Window;->b(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)V

    return-object p2
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final q(ILjava/util/List;)Landroidx/media3/session/QueueTimeline;
    .locals 10

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/ImmutableList;->I(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v4, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/media3/common/MediaItem;

    const-wide/16 v6, -0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v4 .. v9}, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;-><init>(Landroidx/media3/common/MediaItem;JJ)V

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->I(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    new-instance p1, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    invoke-direct {p1, p2, p0}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    return-object p1
.end method

.method public final r(I)J
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    iget-wide p0, p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->b:J

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final s(I)Landroidx/media3/session/QueueTimeline$QueuedMediaItem;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    return-object p0
.end method
