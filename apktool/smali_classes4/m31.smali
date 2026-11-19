.class public final synthetic Lm31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/unit/Density;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm31;->b:Landroidx/compose/ui/unit/Density;

    iput p2, p0, Lm31;->c:F

    iput-object p3, p0, Lm31;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p4, p0, Lm31;->e:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lm31;->f:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget v0, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->a:F

    iget-object v0, p0, Lm31;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm31;->f:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    iget-object v2, p0, Lm31;->b:Landroidx/compose/ui/unit/Density;

    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v0

    iget v2, p0, Lm31;->c:F

    sub-float/2addr v2, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget-object p0, p0, Lm31;->d:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result p0

    sub-float/2addr v2, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v2, p0

    const/high16 p0, 0x42000000    # 32.0f

    sub-float/2addr v2, p0

    new-instance p0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {p0, v2}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->a(Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget v1, p0, Landroidx/compose/ui/unit/Dp;->b:F

    :goto_0
    new-instance p0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {p0, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    return-object p0
.end method
