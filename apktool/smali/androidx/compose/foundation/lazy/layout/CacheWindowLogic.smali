.class public abstract Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008!\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;",
        "cacheWindow",
        "",
        "enableInitialPrefetch",
        "<init>",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V",
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
.field public final a:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

.field public final b:Z

.field public final c:Landroidx/collection/MutableIntObjectMap;

.field public final d:Landroidx/collection/MutableIntSet;

.field public final e:Landroidx/collection/MutableIntIntMap;

.field public final f:Landroidx/collection/MutableIntObjectMap;

.field public g:F

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b:Z

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->a()Landroidx/collection/MutableIntObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c:Landroidx/collection/MutableIntObjectMap;

    invoke-static {}, Landroidx/collection/IntSetKt;->a()Landroidx/collection/MutableIntSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->d:Landroidx/collection/MutableIntSet;

    sget p1, Landroidx/collection/IntIntMapKt;->a:I

    new-instance p1, Landroidx/collection/MutableIntIntMap;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, v0}, Landroidx/collection/MutableIntIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntIntMap;

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->a()Landroidx/collection/MutableIntObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:Landroidx/collection/MutableIntObjectMap;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V

    return-void
.end method


# virtual methods
.method public final f(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lxh;

    invoke-direct {v1, p0, p1, v2}, Lxh;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;I)V

    invoke-interface {p1, p2, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->b(ILkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    if-eqz p3, :cond_2

    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/lazy/layout/CachedItem;->c:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/CachedItem;

    if-eqz v2, :cond_0

    iput p3, v2, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    iput-object v0, v2, Landroidx/compose/foundation/lazy/layout/CachedItem;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-direct {v2, v0, p3}, Landroidx/compose/foundation/lazy/layout/CachedItem;-><init>(Ljava/lang/Object;I)V

    :goto_0
    invoke-virtual {v1, p2, v2}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    if-le p2, v0, :cond_1

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    if-ge p2, v0, :cond_2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    :cond_2
    :goto_1
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:F

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-gtz p2, :cond_3

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    if-lez p2, :cond_4

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:F

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    if-lez p2, :cond_4

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    sub-int/2addr p2, v0

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    if-lez p2, :cond_5

    invoke-interface {p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->g(I)I

    move-result p3

    if-eq p3, v1, :cond_5

    invoke-interface {p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->g(I)I

    move-result p3

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->o:I

    if-ge p3, v1, :cond_5

    new-instance p3, Lxh;

    invoke-direct {p3, p0, p1, v0}, Lxh;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;I)V

    invoke-interface {p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->b(ILkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p3, p2, p1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n()V

    return-void
.end method

.method public final i(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V
    .locals 5

    invoke-static {p7}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz p8, :cond_6

    if-eqz v0, :cond_3

    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p6

    invoke-static {p6}, Lkotlin/math/MathKt;->c(F)I

    move-result p6

    add-int/2addr p6, p2

    sub-int/2addr p4, p5

    if-le p6, p4, :cond_2

    move p6, p4

    :cond_2
    iput p6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    goto :goto_2

    :cond_3
    :goto_1
    sub-int/2addr p4, p5

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    :goto_2
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    if-lez p2, :cond_c

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    invoke-interface {p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->g(I)I

    move-result p2

    if-eq p2, v4, :cond_c

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    invoke-interface {p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->g(I)I

    move-result p2

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->o:I

    sub-int/2addr p4, v2

    if-ge p2, p4, :cond_c

    cmpg-float p2, p7, v3

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_3

    :cond_4
    move p2, v2

    :goto_3
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    add-int/2addr p4, v2

    add-int/lit8 p6, p3, 0x1

    if-ne p4, p6, :cond_5

    if-eqz p2, :cond_5

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p4, p5

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_5

    move p2, v2

    goto :goto_4

    :cond_5
    move p2, v1

    :goto_4
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    add-int/2addr p4, v2

    invoke-virtual {p0, p1, p4, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I

    move-result p2

    if-eq p2, v4, :cond_c

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    add-int/2addr p4, v2

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    sub-int/2addr p4, p2

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_9

    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n:Z

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p5}, Lkotlin/math/MathKt;->c(F)I

    move-result p5

    add-int/2addr p5, p3

    sub-int/2addr p4, p6

    if-le p5, p4, :cond_8

    move p5, p4

    :cond_8
    iput p5, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    goto :goto_6

    :cond_9
    :goto_5
    sub-int/2addr p4, p6

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    :goto_6
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    if-lez p3, :cond_c

    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    if-lez p3, :cond_c

    cmpg-float p4, p7, v3

    if-nez p4, :cond_a

    move p4, v1

    goto :goto_7

    :cond_a
    move p4, v2

    :goto_7
    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p5, p2, -0x1

    if-ne p3, p5, :cond_b

    if-eqz p4, :cond_b

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p3

    int-to-float p4, p6

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_b

    move p3, v2

    goto :goto_8

    :cond_b
    move p3, v1

    :goto_8
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    sub-int/2addr p4, v2

    invoke-virtual {p0, p1, p4, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I

    move-result p3

    if-eq p3, v4, :cond_c

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    add-int/2addr p4, v4

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    sub-int/2addr p4, p3

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    goto :goto_6

    :cond_c
    return-void
.end method

.method public final j(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n()V

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->k()I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->d()I

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->o:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->c()I

    move-result v1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->h()I

    move-result v6

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->d()I

    move-result v7

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->i()I

    move-result v8

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->l()I

    move-result v9

    cmpg-float v10, p2, v2

    iget-object v11, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:Landroidx/collection/MutableIntObjectMap;

    if-gtz v10, :cond_2

    rsub-int/lit8 v6, v8, 0x0

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    :goto_0
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    if-lez v1, :cond_1

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    sub-int/2addr v1, v3

    invoke-virtual {v11, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    iget v1, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    sub-int/2addr v6, v1

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v5, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l(II)V

    goto :goto_2

    :cond_2
    rsub-int/lit8 v1, v9, 0x0

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    :goto_1
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    if-lez v1, :cond_3

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    add-int/lit8 v6, v7, -0x1

    if-ge v1, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v11, v1}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    add-int/2addr v1, v3

    invoke-virtual {v11, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    iget v1, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    add-int/2addr v6, v3

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    sub-int/2addr v6, v1

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    goto :goto_1

    :cond_3
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    add-int/2addr v1, v3

    sub-int/2addr v7, v3

    invoke-virtual {p0, v1, v7}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l(II)V

    :cond_4
    :goto_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->k()I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->a()I

    move-result v1

    move v4, v1

    :goto_3
    move v1, v2

    goto :goto_4

    :cond_5
    move v4, v5

    goto :goto_3

    :goto_4
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->c()I

    move-result v2

    move v6, v3

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->h()I

    move-result v3

    move v7, v6

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->i()I

    move-result v6

    move v8, v5

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->l()I

    move-result v5

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_6

    move v8, v7

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V

    :cond_7
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:F

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n()V

    return-void
.end method

.method public final k(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 13

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:Z

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->k()I

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n:Z

    :cond_1
    iput-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:Z

    :cond_2
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->d()I

    move-result v6

    if-eq v0, v6, :cond_7

    iput-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n:Z

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    if-gez v0, :cond_3

    move v0, v3

    :cond_3
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->m()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    if-le v6, v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    :cond_5
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_6

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->h()I

    move-result v0

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->o:I

    sub-int/2addr v6, v2

    invoke-virtual {p0, v0, v6}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l(II)V

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->c()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l(II)V

    :cond_7
    :goto_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->d()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->o:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->f()I

    move-result v0

    move v6, v3

    :goto_3
    if-ge v6, v0, :cond_c

    invoke-interface {p1, v6}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->e(I)I

    move-result v7

    invoke-interface {p1, v6}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->n(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v6}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->j(I)I

    move-result v9

    if-eq v7, v5, :cond_b

    iget-object v10, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v10, v7}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10, v7}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Landroidx/compose/foundation/lazy/layout/CachedItem;

    iget v11, v11, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    invoke-virtual {v10, v7}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Landroidx/compose/foundation/lazy/layout/CachedItem;

    iget-object v12, v12, Landroidx/compose/foundation/lazy/layout/CachedItem;->a:Ljava/lang/Object;

    if-ne v11, v9, :cond_8

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    :cond_8
    iput-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n:Z

    :cond_9
    invoke-virtual {v10, v7}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/layout/CachedItem;

    if-eqz v11, :cond_a

    iput v9, v11, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    iput-object v8, v11, Landroidx/compose/foundation/lazy/layout/CachedItem;->a:Ljava/lang/Object;

    goto :goto_4

    :cond_a
    new-instance v11, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-direct {v11, v8, v9}, Landroidx/compose/foundation/lazy/layout/CachedItem;-><init>(Ljava/lang/Object;I)V

    :goto_4
    invoke-virtual {v10, v7, v11}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    iget v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    iget v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    iget-object v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v8, v7}, Landroidx/collection/MutableIntObjectMap;->g(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_b

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    move v9, v3

    :goto_5
    if-ge v9, v8, :cond_b

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n:Z

    if-eqz v0, :cond_10

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_d

    move v12, v2

    goto :goto_6

    :cond_d
    move v12, v3

    :goto_6
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->k()I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->a()I

    move-result v0

    move v8, v0

    goto :goto_7

    :cond_e
    move v8, v3

    :goto_7
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->c()I

    move-result v6

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->h()I

    move-result v7

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->i()I

    move-result v10

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->l()I

    move-result v9

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v12}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V

    goto :goto_8

    :cond_f
    move-object v4, p0

    move-object v5, p1

    :goto_8
    iput-boolean v3, v4, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n:Z

    goto :goto_9

    :cond_10
    move-object v4, p0

    move-object v5, p1

    goto :goto_9

    :cond_11
    move-object v4, p0

    move-object v5, p1

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m()V

    :goto_9
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->d()I

    move-result p0

    iput p0, v4, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    return-void
.end method

.method public final l(II)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->d:Landroidx/collection/MutableIntSet;

    invoke-virtual {v3}, Landroidx/collection/MutableIntSet;->c()V

    iget-object v4, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c:Landroidx/collection/MutableIntObjectMap;

    iget-object v5, v4, Landroidx/collection/IntObjectMap;->b:[I

    iget-object v6, v4, Landroidx/collection/IntObjectMap;->a:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    const/16 v15, 0x8

    const/16 v16, 0x0

    if-ltz v7, :cond_3

    move/from16 v8, v16

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    :goto_0
    aget-wide v10, v6, v8

    const/4 v9, 0x7

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v12, v10

    shl-long/2addr v12, v9

    and-long/2addr v12, v10

    and-long v12, v12, v21

    cmp-long v12, v12, v21

    if-eqz v12, :cond_2

    sub-int v12, v8, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    move/from16 v13, v16

    :goto_1
    if-ge v13, v12, :cond_1

    and-long v23, v10, v19

    cmp-long v14, v23, v17

    if-gez v14, :cond_0

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget v14, v5, v14

    if-gt v1, v14, :cond_0

    if-gt v14, v2, :cond_0

    invoke-virtual {v3, v14}, Landroidx/collection/MutableIntSet;->b(I)Z

    :cond_0
    shr-long/2addr v10, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    if-ne v12, v15, :cond_4

    :cond_2
    if-eq v8, v7, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x7

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    :cond_4
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntIntMap;

    iget-object v6, v5, Landroidx/collection/IntIntMap;->b:[I

    iget-object v7, v5, Landroidx/collection/IntIntMap;->a:[J

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_9

    move/from16 v10, v16

    :goto_2
    aget-wide v11, v7, v10

    not-long v13, v11

    shl-long/2addr v13, v9

    and-long/2addr v13, v11

    and-long v13, v13, v21

    cmp-long v13, v13, v21

    if-eqz v13, :cond_8

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    move/from16 v14, v16

    :goto_3
    if-ge v14, v13, :cond_7

    and-long v23, v11, v19

    cmp-long v23, v23, v17

    if-gez v23, :cond_5

    shl-int/lit8 v23, v10, 0x3

    add-int v23, v23, v14

    move/from16 v24, v9

    aget v9, v6, v23

    if-gt v1, v9, :cond_6

    if-gt v9, v2, :cond_6

    invoke-virtual {v3, v9}, Landroidx/collection/MutableIntSet;->b(I)Z

    goto :goto_4

    :cond_5
    move/from16 v24, v9

    :cond_6
    :goto_4
    shr-long/2addr v11, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v24

    goto :goto_3

    :cond_7
    move/from16 v24, v9

    if-ne v13, v15, :cond_a

    goto :goto_5

    :cond_8
    move/from16 v24, v9

    :goto_5
    if-eq v10, v8, :cond_a

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v24

    goto :goto_2

    :cond_9
    move/from16 v24, v9

    :cond_a
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:Landroidx/collection/MutableIntObjectMap;

    iget-object v6, v0, Landroidx/collection/IntObjectMap;->b:[I

    iget-object v7, v0, Landroidx/collection/IntObjectMap;->a:[J

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_e

    move/from16 v9, v16

    :goto_6
    aget-wide v10, v7, v9

    not-long v12, v10

    shl-long v12, v12, v24

    and-long/2addr v12, v10

    and-long v12, v12, v21

    cmp-long v12, v12, v21

    if-eqz v12, :cond_d

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    move/from16 v13, v16

    :goto_7
    if-ge v13, v12, :cond_c

    and-long v25, v10, v19

    cmp-long v14, v25, v17

    if-gez v14, :cond_b

    shl-int/lit8 v14, v9, 0x3

    add-int/2addr v14, v13

    aget v14, v6, v14

    if-gt v1, v14, :cond_b

    if-gt v14, v2, :cond_b

    invoke-virtual {v3, v14}, Landroidx/collection/MutableIntSet;->b(I)Z

    :cond_b
    shr-long/2addr v10, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_c
    if-ne v12, v15, :cond_e

    :cond_d
    if-eq v9, v8, :cond_e

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    iget-object v1, v3, Landroidx/collection/IntSet;->b:[I

    iget-object v2, v3, Landroidx/collection/IntSet;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_14

    move/from16 v6, v16

    :goto_8
    aget-wide v7, v2, v6

    not-long v9, v7

    shl-long v9, v9, v24

    and-long/2addr v9, v7

    and-long v9, v9, v21

    cmp-long v9, v9, v21

    if-eqz v9, :cond_13

    sub-int v9, v6, v3

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    move/from16 v10, v16

    :goto_9
    if-ge v10, v9, :cond_12

    and-long v11, v7, v19

    cmp-long v11, v11, v17

    if-gez v11, :cond_11

    shl-int/lit8 v11, v6, 0x3

    add-int/2addr v11, v10

    aget v11, v1, v11

    invoke-virtual {v4, v11}, Landroidx/collection/MutableIntObjectMap;->g(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_f

    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    move/from16 v14, v16

    :goto_a
    if-ge v14, v13, :cond_f

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface/range {v23 .. v23}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual {v5, v11}, Landroidx/collection/IntIntMap;->a(I)I

    move-result v12

    if-ltz v12, :cond_10

    iget v13, v5, Landroidx/collection/IntIntMap;->e:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v5, Landroidx/collection/IntIntMap;->e:I

    iget-object v13, v5, Landroidx/collection/IntIntMap;->a:[J

    iget v14, v5, Landroidx/collection/IntIntMap;->d:I

    shr-int/lit8 v23, v12, 0x3

    and-int/lit8 v25, v12, 0x7

    shl-int/lit8 v25, v25, 0x3

    aget-wide v26, v13, v23

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    shl-long v1, v19, v25

    not-long v1, v1

    and-long v1, v26, v1

    const-wide/16 v26, 0xfe

    shl-long v25, v26, v25

    or-long v1, v1, v25

    aput-wide v1, v13, v23

    add-int/lit8 v12, v12, -0x7

    and-int/2addr v12, v14

    and-int/lit8 v14, v14, 0x7

    add-int/2addr v12, v14

    shr-int/lit8 v12, v12, 0x3

    aput-wide v1, v13, v12

    goto :goto_b

    :cond_10
    move-object/from16 p0, v1

    move-object/from16 p1, v2

    :goto_b
    invoke-virtual {v0, v11}, Landroidx/collection/MutableIntObjectMap;->g(I)Ljava/lang/Object;

    goto :goto_c

    :cond_11
    move-object/from16 p0, v1

    move-object/from16 p1, v2

    :goto_c
    shr-long/2addr v7, v15

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_9

    :cond_12
    move-object/from16 p0, v1

    move-object/from16 p1, v2

    if-ne v9, v15, :cond_14

    goto :goto_d

    :cond_13
    move-object/from16 p0, v1

    move-object/from16 p1, v2

    :goto_d
    if-eq v6, v3, :cond_14

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_8

    :cond_14
    return-void
.end method

.method public final m()V
    .locals 14

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->n:Z

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntIntMap;->c()V

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->c()V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c:Landroidx/collection/MutableIntObjectMap;

    iget-object v1, p0, Landroidx/collection/IntObjectMap;->a:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    move v3, v0

    :goto_0
    aget-wide v4, v1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v2

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v0

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    iget-object v10, p0, Landroidx/collection/IntObjectMap;->b:[I

    aget v10, v10, v9

    iget-object v10, p0, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    aget-object v10, v10, v9

    check-cast v10, Ljava/util/List;

    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v0

    :goto_2
    if-ge v12, v11, :cond_0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v9}, Landroidx/collection/MutableIntObjectMap;->h(I)Ljava/lang/Object;

    :cond_1
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final n()V
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:I

    int-to-long v0, v0

    const-string v2, "prefetchWindowStartExtraSpace"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    int-to-long v0, v0

    const-string v2, "prefetchWindowEndExtraSpace"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    int-to-long v0, v0

    const-string v2, "prefetchWindowStartIndex"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    int-to-long v0, p0

    const-string p0, "prefetchWindowEndIndex"

    invoke-static {p0, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-void
.end method
