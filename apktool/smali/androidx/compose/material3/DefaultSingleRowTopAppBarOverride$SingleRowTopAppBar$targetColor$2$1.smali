.class final Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$targetColor$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$targetColor$2$1;->b:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$targetColor$2$1;->b:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    iget-object v0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->l:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v3, v0, Landroidx/compose/material3/TopAppBarState;->a:F

    cmpg-float v4, v3, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Landroidx/compose/material3/TopAppBarState;->b:Landroidx/compose/runtime/MutableFloatState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, v0, Landroidx/compose/material3/TopAppBarState;->a:F

    invoke-static {v3, v4, v2}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v3

    iget v0, v0, Landroidx/compose/material3/TopAppBarState;->a:F

    div-float/2addr v3, v0

    sub-float v0, v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->k:Landroidx/compose/material3/TopAppBarColors;

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->a:J

    iget-wide v4, p0, Landroidx/compose/material3/TopAppBarColors;->b:J

    sget-object p0, Landroidx/compose/animation/core/EasingKt;->c:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {p0, v1}, Landroidx/compose/animation/core/CubicBezierEasing;->a(F)F

    move-result p0

    invoke-static {v2, v3, v4, v5, p0}, Landroidx/compose/ui/graphics/ColorKt;->g(JJF)J

    move-result-wide v0

    new-instance p0, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    return-object p0
.end method
