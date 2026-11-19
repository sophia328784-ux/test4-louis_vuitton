.class final Landroidx/compose/foundation/text/HeightInLinesElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/text/HeightInLinesNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/foundation/text/HeightInLinesElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/text/HeightInLinesNode;",
        "Landroidx/compose/ui/text/TextStyle;",
        "textStyle",
        "",
        "minLines",
        "maxLines",
        "<init>",
        "(Landroidx/compose/ui/text/TextStyle;II)V",
        "foundation"
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
.field public final b:Landroidx/compose/ui/text/TextStyle;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->b:Landroidx/compose/ui/text/TextStyle;

    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->c:I

    iput p3, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->d:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/HeightInLinesNode;

    iget v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->c:I

    iget v2, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->d:I

    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesNode;-><init>(Landroidx/compose/ui/text/TextStyle;II)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/HeightInLinesElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/text/HeightInLinesElement;

    iget-object v1, p1, Landroidx/compose/foundation/text/HeightInLinesElement;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->c:I

    iget v3, p1, Landroidx/compose/foundation/text/HeightInLinesElement;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->d:I

    iget p1, p1, Landroidx/compose/foundation/text/HeightInLinesElement;->d:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 3

    check-cast p1, Landroidx/compose/foundation/text/HeightInLinesNode;

    iget-object v0, p1, Landroidx/compose/foundation/text/HeightInLinesNode;->p:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->c:I

    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->d:I

    if-eqz v0, :cond_1

    iget v0, p1, Landroidx/compose/foundation/text/HeightInLinesNode;->q:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Landroidx/compose/foundation/text/HeightInLinesNode;->r:I

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object v1, p1, Landroidx/compose/foundation/text/HeightInLinesNode;->p:Landroidx/compose/ui/text/TextStyle;

    iput v2, p1, Landroidx/compose/foundation/text/HeightInLinesNode;->q:I

    iput p0, p1, Landroidx/compose/foundation/text/HeightInLinesNode;->r:I

    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v1, p0}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    iput-object p0, p1, Landroidx/compose/foundation/text/HeightInLinesNode;->v:Landroidx/compose/ui/text/TextStyle;

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/compose/foundation/text/HeightInLinesNode;->s:Z

    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->d:I

    add-int/2addr v0, p0

    return v0
.end method
