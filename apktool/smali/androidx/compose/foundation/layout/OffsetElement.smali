.class final Landroidx/compose/foundation/layout/OffsetElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/OffsetNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B8\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/OffsetElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/OffsetNode;",
        "Landroidx/compose/ui/unit/Dp;",
        "x",
        "y",
        "",
        "rtlAware",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "inspectorInfo",
        "<init>",
        "(FFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final b:F

.field public final c:F

.field public final d:Z

.field public final e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(FFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/OffsetElement;->b:F

    iput p2, p0, Landroidx/compose/foundation/layout/OffsetElement;->c:F

    iput-boolean p3, p0, Landroidx/compose/foundation/layout/OffsetElement;->d:Z

    iput-object p4, p0, Landroidx/compose/foundation/layout/OffsetElement;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 4

    new-instance v0, Landroidx/compose/foundation/layout/OffsetNode;

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/OffsetElement;->d:Z

    const/4 v2, 0x0

    iget v3, p0, Landroidx/compose/foundation/layout/OffsetElement;->b:F

    iget p0, p0, Landroidx/compose/foundation/layout/OffsetElement;->c:F

    invoke-direct {v0, v3, p0, v1, v2}, Landroidx/compose/foundation/layout/OffsetNode;-><init>(FFZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/OffsetElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/OffsetElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/compose/foundation/layout/OffsetElement;->b:F

    iget v3, p1, Landroidx/compose/foundation/layout/OffsetElement;->b:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroidx/compose/foundation/layout/OffsetElement;->c:F

    iget v3, p1, Landroidx/compose/foundation/layout/OffsetElement;->c:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetElement;->d:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/OffsetElement;->d:Z

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 4

    check-cast p1, Landroidx/compose/foundation/layout/OffsetNode;

    iget v0, p1, Landroidx/compose/foundation/layout/OffsetNode;->p:F

    iget v1, p0, Landroidx/compose/foundation/layout/OffsetElement;->b:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/OffsetElement;->c:F

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetElement;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/compose/foundation/layout/OffsetNode;->q:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/compose/foundation/layout/OffsetNode;->r:Z

    if-eq v0, p0, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/node/LayoutNode;->T:Landroidx/compose/ui/node/LayoutNode$Companion;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/LayoutNode;->l0(Z)V

    :cond_1
    iput v1, p1, Landroidx/compose/foundation/layout/OffsetNode;->p:F

    iput v2, p1, Landroidx/compose/foundation/layout/OffsetNode;->q:F

    iput-boolean p0, p1, Landroidx/compose/foundation/layout/OffsetNode;->r:Z

    return-void
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v0, p0, Landroidx/compose/foundation/layout/OffsetElement;->b:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/OffsetElement;->c:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetElement;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffsetModifierElement(x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/layout/OffsetElement;->b:F

    const-string v2, ", y="

    invoke-static {v1, v2, v0}, Lfc;->w(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroidx/compose/foundation/layout/OffsetElement;->c:F

    const-string v2, ", rtlAware="

    invoke-static {v1, v2, v0}, Lfc;->w(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetElement;->d:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
