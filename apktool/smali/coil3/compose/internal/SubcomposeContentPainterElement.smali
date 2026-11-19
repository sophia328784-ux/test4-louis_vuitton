.class public final Lcoil3/compose/internal/SubcomposeContentPainterElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Lcoil3/compose/internal/SubcomposeContentPainterNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BC\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcoil3/compose/internal/SubcomposeContentPainterElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcoil3/compose/internal/SubcomposeContentPainterNode;",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "painter",
        "Landroidx/compose/ui/Alignment;",
        "alignment",
        "Landroidx/compose/ui/layout/ContentScale;",
        "contentScale",
        "",
        "alpha",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "colorFilter",
        "",
        "clipToBounds",
        "",
        "contentDescription",
        "<init>",
        "(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;)V",
        "io.coil-kt.coil3:coil-compose-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroidx/compose/ui/graphics/painter/Painter;

.field public final c:Landroidx/compose/ui/Alignment;

.field public final d:Landroidx/compose/ui/layout/ContentScale;

.field public final e:F

.field public final f:Landroidx/compose/ui/graphics/ColorFilter;

.field public final g:Z

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p2, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->c:Landroidx/compose/ui/Alignment;

    iput-object p3, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->d:Landroidx/compose/ui/layout/ContentScale;

    iput p4, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->e:F

    iput-object p5, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->f:Landroidx/compose/ui/graphics/ColorFilter;

    iput-boolean p6, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->g:Z

    iput-object p7, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 8

    new-instance v0, Lcoil3/compose/internal/SubcomposeContentPainterNode;

    iget-boolean v6, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->g:Z

    iget-object v7, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->h:Ljava/lang/String;

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v2, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->c:Landroidx/compose/ui/Alignment;

    iget-object v3, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->d:Landroidx/compose/ui/layout/ContentScale;

    iget v4, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->e:F

    iget-object v5, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->f:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-direct/range {v0 .. v7}, Lcoil3/compose/internal/SubcomposeContentPainterNode;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->b:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->c:Landroidx/compose/ui/Alignment;

    iget-object v3, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->c:Landroidx/compose/ui/Alignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->d:Landroidx/compose/ui/layout/ContentScale;

    iget-object v3, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->d:Landroidx/compose/ui/layout/ContentScale;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->e:F

    iget v3, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->f:Landroidx/compose/ui/graphics/ColorFilter;

    iget-object v3, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->f:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->g:Z

    iget-boolean v3, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->g:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->h:Ljava/lang/String;

    iget-object p1, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 5

    check-cast p1, Lcoil3/compose/internal/SubcomposeContentPainterNode;

    iget-object v0, p1, Lcoil3/compose/internal/SubcomposeContentPainterNode;->w:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->b:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    move-result v0

    iput-object v2, p1, Lcoil3/compose/internal/SubcomposeContentPainterNode;->w:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->c:Landroidx/compose/ui/Alignment;

    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->p:Landroidx/compose/ui/Alignment;

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->d:Landroidx/compose/ui/layout/ContentScale;

    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->q:Landroidx/compose/ui/layout/ContentScale;

    iget v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->e:F

    iput v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->r:F

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->f:Landroidx/compose/ui/graphics/ColorFilter;

    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->s:Landroidx/compose/ui/graphics/ColorFilter;

    iget-boolean v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->g:Z

    iput-boolean v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->t:Z

    iget-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->u:Ljava/lang/String;

    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->h:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p0, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->u:Ljava/lang/String;

    invoke-static {p1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->b:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->c:Landroidx/compose/ui/Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->d:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->e:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->f:Landroidx/compose/ui/graphics/ColorFilter;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->g:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->h:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubcomposeContentPainterElement(painter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->b:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->c:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->d:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", colorFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->f:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clipToBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->h:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
