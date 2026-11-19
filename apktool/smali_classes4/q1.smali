.class public final synthetic Lq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    iput p2, p0, Lq1;->b:I

    iput-object p1, p0, Lq1;->c:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lq1;->b:I

    const/16 v1, 0x20

    const-wide v2, 0xffffffffL

    iget-object p0, p0, Lq1;->c:Landroidx/compose/runtime/MutableIntState;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, p1, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v2, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    sget v0, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v0

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v0

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    iget-wide v4, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long v1, v4, v2

    long-to-int p1, v1

    if-ge v0, p1, :cond_1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v2, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v2, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v2, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->d()Z

    move-result v0

    iget-object v1, p1, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    if-eqz v0, :cond_7

    iget v0, v1, Landroidx/compose/ui/text/MultiParagraph;->f:I

    const/4 v4, 0x0

    invoke-static {v4, v0}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    move-object v5, v0

    check-cast v5, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v5, v5, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    move-result v5

    iget-wide v6, p1, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    and-long/2addr v6, v2

    long-to-int v6, v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_1
    const/4 p1, 0x1

    if-ge v4, p1, :cond_6

    move v4, p1

    :cond_6
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->f()I

    move-result p1

    if-ge v4, p1, :cond_7

    invoke-interface {p0, v4}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    sget v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationScreenKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v0

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v2

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    sget v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a:F

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
