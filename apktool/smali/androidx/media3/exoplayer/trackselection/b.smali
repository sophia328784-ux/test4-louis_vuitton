.class public final synthetic Landroidx/media3/exoplayer/trackselection/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/b;->b:I

    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    iget-boolean p0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->f:Z

    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->k:I

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->i:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    move-result-object p0

    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->g:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, v2, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    :cond_1
    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->z:Z

    iget-boolean v3, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->z:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:Z

    if-eqz v2, :cond_2

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->y:I

    iget v3, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    :cond_2
    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->w:Z

    iget-boolean v2, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->w:Z

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p2, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->k:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p0}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->e()I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    iget-boolean p0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->i:Z

    iget-boolean v0, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->i:Z

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->c()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->o:I

    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->p:I

    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->p:I

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->c()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->r:Z

    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->r:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->s:I

    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->s:I

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->j:Z

    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->j:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->f:Z

    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->f:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->h:Z

    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->h:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->c()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:Z

    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:Z

    iget-boolean p2, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->e()I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->c(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->c(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    new-instance p0, Landroidx/media3/exoplayer/trackselection/b;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-static {p1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v2, Landroidx/media3/exoplayer/trackselection/b;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-static {p2, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v3, Landroidx/media3/exoplayer/trackselection/b;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/trackselection/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v0, Landroidx/media3/exoplayer/trackselection/b;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v0, Landroidx/media3/exoplayer/trackselection/b;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->e()I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->g:I

    iget p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->g:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
