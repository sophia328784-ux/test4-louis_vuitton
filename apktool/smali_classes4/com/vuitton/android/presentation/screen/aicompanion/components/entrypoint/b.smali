.class public final synthetic Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/ui/unit/Density;

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(FFFFLandroidx/compose/ui/unit/Density;FFFFLandroidx/compose/runtime/MutableIntState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->b:F

    iput p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->c:F

    iput p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->d:F

    iput p4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->e:F

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->f:Landroidx/compose/ui/unit/Density;

    iput p6, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->g:F

    iput p7, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->h:F

    iput p8, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->i:F

    iput p9, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->j:F

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->k:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    sget v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a:F

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->k:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->f:Landroidx/compose/ui/unit/Density;

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v0

    iget v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget-object v3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->b:F

    add-float/2addr v3, v1

    sget v1, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a:F

    div-float v4, v1, v2

    sub-float v4, v3, v4

    new-instance v5, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v5, v4}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    new-instance v4, Landroidx/compose/ui/unit/Dp;

    iget v6, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->j:F

    invoke-direct {v4, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->a(Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    move-result-object v4

    iget v5, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->e:F

    sub-float/2addr v5, v1

    sub-float/2addr v5, v6

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, v5}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v5, v1}, Landroidx/compose/ui/unit/Dp;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_0

    move-object v4, v1

    :cond_0
    check-cast v4, Landroidx/compose/ui/unit/Dp;

    iget v6, v4, Landroidx/compose/ui/unit/Dp;->b:F

    iget v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->c:F

    sub-float/2addr v1, v0

    iget v4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->g:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->i:F

    sub-float v7, v1, v4

    iget p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/b;->h:F

    div-float/2addr p0, v2

    sub-float v8, v3, p0

    add-float v9, v7, v0

    new-instance v5, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method
