.class final Landroidx/compose/foundation/layout/DerivedHeightModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/DerivedHeightModifierNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B0\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/DerivedHeightModifierElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/DerivedHeightModifierNode;",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "insets",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "inspectorInfo",
        "Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;",
        "heightCalc",
        "<init>",
        "(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V",
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
.field public final b:Landroidx/compose/foundation/layout/WindowInsets;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->b:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->d:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;

    iget-object v1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->b:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->d:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;

    iget-object v1, p1, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->b:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v3, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->b:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->d:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    iget-object p1, p1, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->d:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    check-cast p1, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;

    iget-object v0, p1, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->r:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->b:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->d:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->s:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object v1, p1, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->r:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p0, p1, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->s:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    iget-object p0, p1, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->p:Landroidx/compose/foundation/layout/WindowInsets;

    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsKt;->a:Landroidx/compose/foundation/layout/FixedIntInsets;

    new-instance v0, Landroidx/compose/foundation/layout/ExcludeInsets;

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/layout/ExcludeInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    iput-object v0, p1, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->t:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->b:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;->d:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
