.class public final synthetic Lw6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/TopAppBarState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TopAppBarState;I)V
    .locals 0

    iput p2, p0, Lw6;->b:I

    iput-object p1, p0, Lw6;->c:Landroidx/compose/material3/TopAppBarState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lw6;->b:I

    iget-object p0, p0, Lw6;->c:Landroidx/compose/material3/TopAppBarState;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TopAppBarState;->c(F)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    sget-object v0, Landroidx/compose/material3/AppBarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result v0

    sub-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Landroidx/compose/material3/TopAppBarState;->a:F

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    sget-object v0, Landroidx/compose/material3/AppBarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object p1, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TopAppBarState;->c(F)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
