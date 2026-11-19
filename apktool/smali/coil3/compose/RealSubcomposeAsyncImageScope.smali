.class final Lcoil3/compose/RealSubcomposeAsyncImageScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/compose/SubcomposeAsyncImageScope;
.implements Landroidx/compose/foundation/layout/BoxScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcoil3/compose/RealSubcomposeAsyncImageScope;",
        "Lcoil3/compose/SubcomposeAsyncImageScope;",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "parentScope",
        "Lcoil3/compose/AsyncImagePainter;",
        "painter",
        "",
        "contentDescription",
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
        "<init>",
        "(Landroidx/compose/foundation/layout/BoxScope;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V",
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
.field public final a:Landroidx/compose/foundation/layout/BoxScope;

.field public final b:Lcoil3/compose/AsyncImagePainter;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/compose/ui/Alignment;

.field public final e:Landroidx/compose/ui/layout/ContentScale;

.field public final f:F

.field public final g:Landroidx/compose/ui/graphics/ColorFilter;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/BoxScope;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->a:Landroidx/compose/foundation/layout/BoxScope;

    iput-object p2, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->b:Lcoil3/compose/AsyncImagePainter;

    iput-object p3, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->c:Ljava/lang/String;

    iput-object p4, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->d:Landroidx/compose/ui/Alignment;

    iput-object p5, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->e:Landroidx/compose/ui/layout/ContentScale;

    iput p6, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->f:F

    iput-object p7, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->g:Landroidx/compose/ui/graphics/ColorFilter;

    iput-boolean p8, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->h:Z

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->f:F

    return p0
.end method

.method public final b()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->g:Landroidx/compose/ui/graphics/ColorFilter;

    return-object p0
.end method

.method public final d()Lcoil3/compose/AsyncImagePainter;
    .locals 0

    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->b:Lcoil3/compose/AsyncImagePainter;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->a:Landroidx/compose/foundation/layout/BoxScope;

    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->a:Landroidx/compose/foundation/layout/BoxScope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->b:Lcoil3/compose/AsyncImagePainter;

    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->b:Lcoil3/compose/AsyncImagePainter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->c:Ljava/lang/String;

    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->d:Landroidx/compose/ui/Alignment;

    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->d:Landroidx/compose/ui/Alignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->e:Landroidx/compose/ui/layout/ContentScale;

    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->e:Landroidx/compose/ui/layout/ContentScale;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->f:F

    iget v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->f:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->g:Landroidx/compose/ui/graphics/ColorFilter;

    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->g:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->h:Z

    iget-boolean p1, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final f()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->e:Landroidx/compose/ui/layout/ContentScale;

    return-object p0
.end method

.method public final g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->a:Landroidx/compose/foundation/layout/BoxScope;

    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/BoxScope;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 0

    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->d:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->h:Z

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->a:Landroidx/compose/foundation/layout/BoxScope;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->b:Lcoil3/compose/AsyncImagePainter;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->d:Landroidx/compose/ui/Alignment;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget-object v2, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->e:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->f:F

    invoke-static {v2, v1, v3}, Lpq0;->b(IIF)I

    move-result v2

    iget-object v3, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->g:Landroidx/compose/ui/graphics/ColorFilter;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealSubcomposeAsyncImageScope(parentScope="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->a:Landroidx/compose/foundation/layout/BoxScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", painter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->b:Lcoil3/compose/AsyncImagePainter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->d:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->e:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", colorFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->g:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clipToBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->h:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
