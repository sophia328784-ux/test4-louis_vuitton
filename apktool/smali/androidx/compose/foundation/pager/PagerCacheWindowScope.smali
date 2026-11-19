.class final Landroidx/compose/foundation/pager/PagerCacheWindowScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/CacheWindowScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerCacheWindowScope;",
        "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;",
        "Lkotlin/Function0;",
        "",
        "itemCount",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;

.field public b:Landroidx/compose/foundation/pager/PagerMeasureResult;

.field public c:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final b(ILkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-wide v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->v:J

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    if-eqz v1, :cond_0

    new-instance v6, Landroidx/compose/foundation/pager/e;

    const/4 v0, 0x0

    invoke-direct {v6, p2, p0, v0}, Landroidx/compose/foundation/pager/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v5, 0x1

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->a(IJZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "state"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    int-to-long v0, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->i:I

    int-to-long v2, p0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final e(I)I
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget p0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    return p0

    :cond_0
    if-lt p1, v0, :cond_1

    add-int v2, v0, v1

    if-ge p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget p0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    return p0

    :cond_1
    add-int v2, v0, v1

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->s:Ljava/util/List;

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget p0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final f()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->s:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final g(I)I
    .locals 0

    return p1
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->u:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final h()I
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    int-to-long v0, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v2

    iget v2, v2, Landroidx/compose/foundation/pager/PagerMeasureResult;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->d()I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method public final i()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->f:I

    neg-int p0, p0

    add-int/2addr v0, p0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public final j(I)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    return p0
.end method

.method public final k()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->a(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I

    move-result p0

    return p0
.end method

.method public final l()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    iget v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    iget v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->g:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->d()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final n(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object p0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->e:Ljava/lang/Object;

    return-object p0

    :cond_0
    if-lt p1, v0, :cond_1

    add-int v2, v0, v1

    if-ge p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object p0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->e:Ljava/lang/Object;

    return-object p0

    :cond_1
    add-int v2, v0, v1

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->o()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->s:Ljava/util/List;

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object p0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->e:Ljava/lang/Object;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->c:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    return-object p0
.end method

.method public final o()Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "layoutInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
