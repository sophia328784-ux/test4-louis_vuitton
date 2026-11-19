.class public final synthetic Lu60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLkotlin/ranges/ClosedFloatingPointRange;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu60;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu60;->c:F

    iput-object p2, p0, Lu60;->e:Ljava/lang/Object;

    iput p3, p0, Lu60;->d:I

    return-void
.end method

.method public synthetic constructor <init>(IFLandroidx/compose/foundation/pager/PagerState;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lu60;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lu60;->e:Ljava/lang/Object;

    iput p1, p0, Lu60;->d:I

    iput p2, p0, Lu60;->c:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lu60;->b:I

    const/4 v1, 0x1

    iget v2, p0, Lu60;->d:I

    iget-object v3, p0, Lu60;->e:Ljava/lang/Object;

    iget p0, p0, Lu60;->c:F

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    new-instance v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-direct {v0, p0, v3, v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;I)V

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    aget-object v1, v2, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v3

    int-to-float v0, v0

    add-float/2addr v4, v0

    sub-int/2addr v2, v1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    int-to-float v0, v2

    const/4 v1, 0x0

    invoke-static {v4, v1, v0}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v0

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-long p0, p0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
