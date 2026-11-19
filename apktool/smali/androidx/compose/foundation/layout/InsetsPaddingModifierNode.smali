.class public Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;
.super Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;",
        "Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "insets",
        "<init>",
        "(Landroidx/compose/foundation/layout/WindowInsets;)V",
        "foundation-layout"
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
.field public r:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;->r:Landroidx/compose/foundation/layout/WindowInsets;

    return-void
.end method


# virtual methods
.method public final e(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->q:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/compose/foundation/layout/WindowInsets;->d(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->p:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroidx/compose/foundation/layout/WindowInsets;->d(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->q:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {v1, p1}, Landroidx/compose/foundation/layout/WindowInsets;->a(Landroidx/compose/ui/unit/Density;)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->p:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {v2, p1}, Landroidx/compose/foundation/layout/WindowInsets;->a(Landroidx/compose/ui/unit/Density;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->q:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroidx/compose/foundation/layout/WindowInsets;->b(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v2

    iget-object v3, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->p:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroidx/compose/foundation/layout/WindowInsets;->b(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->q:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {v3, p1}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    move-result v3

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->p:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    sub-int/2addr v3, p0

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    neg-int p0, v2

    neg-int v4, v3

    invoke-static {p0, v4, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v4

    invoke-interface {p2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->b:I

    add-int/2addr p2, v2

    invoke-static {p2, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result p2

    iget v2, p0, Landroidx/compose/ui/layout/Placeable;->c:I

    add-int/2addr v2, v3

    invoke-static {v2, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result p3

    new-instance p4, Lj40;

    const/4 v2, 0x0

    invoke-direct {p4, p0, v0, v1, v2}, Lj40;-><init>(Landroidx/compose/ui/layout/Placeable;III)V

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final h2(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;->r:Landroidx/compose/foundation/layout/WindowInsets;

    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsKt;->a:Landroidx/compose/foundation/layout/FixedIntInsets;

    new-instance v0, Landroidx/compose/foundation/layout/UnionInsets;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    return-object v0
.end method

.method public final i2()V
    .locals 0

    invoke-super {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->i2()V

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    return-void
.end method
