.class public abstract Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.super Landroidx/media3/common/Timeline;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public final e:I

.field public final f:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field public final g:Z


# direct methods
.method public constructor <init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->g:Z

    iput-object p2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->f:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {p2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->e:I

    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->e:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->g:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move p1, v2

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->f:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->g()I

    move-result v2

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->w(IZ)I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result v0

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 3

    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->q(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->u(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public final c(Z)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->e:I

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->g:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->f:Landroidx/media3/exoplayer/source/ShuffleOrder;

    if-eqz p1, :cond_2

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->e()I

    move-result v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_4

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->b(I)I

    move-result v1

    goto :goto_1

    :cond_4
    if-lez v1, :cond_5

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    if-ne v1, v0, :cond_3

    :goto_2
    return v0

    :cond_6
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result v0

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->c(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final e(IIZ)I
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move p2, v2

    :cond_0
    move p3, v1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->s(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result v3

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Landroidx/media3/common/Timeline;->e(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    :cond_3
    invoke-virtual {p0, v0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->w(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->w(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result p0

    add-int/2addr p0, p2

    return p0

    :cond_5
    if-ne p2, v2, :cond_6

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->a(Z)I

    move-result p0

    return p0

    :cond_6
    return v1
.end method

.method public final f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->r(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->u(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget p1, p2, Landroidx/media3/common/Timeline$Period;->c:I

    add-int/2addr p1, v1

    iput p1, p2, Landroidx/media3/common/Timeline$Period;->c:I

    if-eqz p3, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->t(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    iput-object p0, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->q(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget p0, p2, Landroidx/media3/common/Timeline$Period;->c:I

    add-int/2addr p0, v2

    iput p0, p2, Landroidx/media3/common/Timeline$Period;->c:I

    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    return-object p2
.end method

.method public final k(IIZ)I
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_0

    move p2, v3

    :cond_0
    move p3, v2

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->s(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v5

    sub-int/2addr p1, v4

    if-ne p2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, p2

    :goto_0
    invoke-virtual {v5, p1, v2, p3}, Landroidx/media3/common/Timeline;->k(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    add-int/2addr v4, p1

    return v4

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->f:Landroidx/media3/exoplayer/source/ShuffleOrder;

    if-eqz p3, :cond_4

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->b(I)I

    move-result v0

    goto :goto_1

    :cond_4
    if-lez v0, :cond_5

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_7

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p3, :cond_6

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->b(I)I

    move-result v0

    goto :goto_1

    :cond_6
    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    if-eq v0, v2, :cond_8

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result p1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline;->c(Z)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_8
    if-ne p2, v3, :cond_9

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->c(Z)I

    move-result p0

    return p0

    :cond_9
    return v2
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->r(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->u(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->t(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->s(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->v(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->u(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->x(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int/2addr p1, v1

    invoke-virtual {v3, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->t(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/media3/common/Timeline$Window;->q:Ljava/lang/Object;

    iget-object p3, p2, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    if-eq p1, p3, :cond_0

    invoke-static {p0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    :cond_0
    iput-object p0, p2, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    iget p0, p2, Landroidx/media3/common/Timeline$Window;->n:I

    add-int/2addr p0, v2

    iput p0, p2, Landroidx/media3/common/Timeline$Window;->n:I

    iget p0, p2, Landroidx/media3/common/Timeline$Window;->o:I

    add-int/2addr p0, v2

    iput p0, p2, Landroidx/media3/common/Timeline$Window;->o:I

    return-object p2
.end method

.method public abstract q(Ljava/lang/Object;)I
.end method

.method public abstract r(I)I
.end method

.method public abstract s(I)I
.end method

.method public abstract t(I)Ljava/lang/Object;
.end method

.method public abstract u(I)I
.end method

.method public abstract v(I)I
.end method

.method public final w(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->f:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->c(I)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->e:I

    add-int/lit8 p0, p0, -0x1

    if-ge p1, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public abstract x(I)Landroidx/media3/common/Timeline;
.end method
