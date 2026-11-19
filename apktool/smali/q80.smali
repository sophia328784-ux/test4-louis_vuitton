.class public final synthetic Lq80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/SliderState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderState;I)V
    .locals 0

    iput p2, p0, Lq80;->b:I

    iput-object p1, p0, Lq80;->c:Landroidx/compose/material3/SliderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lq80;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lq80;->c:Landroidx/compose/material3/SliderState;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderState;->b(F)V

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->o:Lhv0;

    invoke-virtual {p0}, Lhv0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget v0, Landroidx/compose/material3/SliderKt;->a:F

    iget-object v0, p0, Landroidx/compose/material3/SliderState;->c:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->i()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->f()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {p1, v3, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result p1

    iget v3, p0, Landroidx/compose/material3/SliderState;->a:I

    if-lez v3, :cond_2

    add-int/2addr v3, v1

    if-ltz v3, :cond_2

    move v5, p1

    move v6, v5

    move v4, v2

    :goto_0
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->i()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->f()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    int-to-float v9, v4

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-static {v7, v8, v9}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v7

    sub-float v8, v7, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v9, v9, v5

    if-gtz v9, :cond_0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v7

    :cond_0
    if-eq v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p1, v6

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->d()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->d()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/compose/material3/SliderState;->e:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderState;->e(F)V

    :goto_1
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_6
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    sget v0, Landroidx/compose/material3/SliderKt;->a:F

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Landroidx/compose/material3/SliderState;->k:Landroidx/compose/runtime/MutableIntState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->l:Landroidx/compose/runtime/MutableIntState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->d()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
