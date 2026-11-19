.class public final synthetic Lvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;II)V
    .locals 0

    iput p3, p0, Lvj;->b:I

    iput-object p1, p0, Lvj;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput p2, p0, Lvj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lvj;->b:I

    const/4 v1, 0x0

    iget v2, p0, Lvj;->d:I

    iget-object p0, p0, Lvj;->c:Landroidx/compose/foundation/lazy/LazyListState;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->g()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v3

    if-ne v3, v2, :cond_0

    move-object v1, v0

    :cond_1
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->g()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v4

    if-ne v4, v2, :cond_2

    move-object v1, v3

    :cond_3
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->h()I

    move-result v2

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->i()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v4

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->i()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->e()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v5, v3

    if-gtz v6, :cond_7

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_6

    move v4, v0

    goto :goto_0

    :cond_6
    move v4, v3

    goto :goto_0

    :cond_7
    div-float/2addr v4, v5

    invoke-static {v4, v3, v0}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v4

    :goto_0
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v5

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v1

    add-int/2addr v1, v5

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->i()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    sub-float p0, v2, p0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v1

    cmpg-float v1, v2, v3

    if-gtz v1, :cond_9

    cmpl-float p0, p0, v3

    if-ltz p0, :cond_8

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_1

    :cond_9
    div-float/2addr p0, v2

    invoke-static {p0, v3, v0}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v0

    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
