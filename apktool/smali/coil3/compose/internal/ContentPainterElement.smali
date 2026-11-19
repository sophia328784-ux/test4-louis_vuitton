.class public final Lcoil3/compose/internal/ContentPainterElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Lcoil3/compose/internal/ContentPainterNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcoil3/compose/internal/ContentPainterElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcoil3/compose/internal/ContentPainterNode;",
        "Lcoil3/request/ImageRequest;",
        "request",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/compose/AsyncImageModelEqualityDelegate;",
        "modelEqualityDelegate",
        "Lkotlin/Function1;",
        "Lcoil3/compose/AsyncImagePainter$State;",
        "transform",
        "",
        "onState",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "filterQuality",
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
        "Lcoil3/compose/AsyncImagePreviewHandler;",
        "previewHandler",
        "",
        "contentDescription",
        "<init>",
        "(Lcoil3/request/ImageRequest;Lcoil3/ImageLoader;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLcoil3/compose/AsyncImagePreviewHandler;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final b:Lcoil3/request/ImageRequest;

.field public final c:Lcoil3/ImageLoader;

.field public final d:Lcoil3/compose/AsyncImageModelEqualityDelegate;

.field public final e:Lkotlin/jvm/functions/Function1;

.field public final f:Lkotlin/jvm/functions/Function1;

.field public final g:I

.field public final h:Landroidx/compose/ui/Alignment;

.field public final i:Landroidx/compose/ui/layout/ContentScale;

.field public final j:F

.field public final k:Landroidx/compose/ui/graphics/ColorFilter;

.field public final l:Z

.field public final m:Lcoil3/compose/AsyncImagePreviewHandler;

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Lcoil3/ImageLoader;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLcoil3/compose/AsyncImagePreviewHandler;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Lcoil3/compose/internal/ContentPainterElement;->b:Lcoil3/request/ImageRequest;

    iput-object p2, p0, Lcoil3/compose/internal/ContentPainterElement;->c:Lcoil3/ImageLoader;

    iput-object p3, p0, Lcoil3/compose/internal/ContentPainterElement;->d:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    iput-object p4, p0, Lcoil3/compose/internal/ContentPainterElement;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcoil3/compose/internal/ContentPainterElement;->f:Lkotlin/jvm/functions/Function1;

    iput p6, p0, Lcoil3/compose/internal/ContentPainterElement;->g:I

    iput-object p7, p0, Lcoil3/compose/internal/ContentPainterElement;->h:Landroidx/compose/ui/Alignment;

    iput-object p8, p0, Lcoil3/compose/internal/ContentPainterElement;->i:Landroidx/compose/ui/layout/ContentScale;

    iput p9, p0, Lcoil3/compose/internal/ContentPainterElement;->j:F

    iput-object p10, p0, Lcoil3/compose/internal/ContentPainterElement;->k:Landroidx/compose/ui/graphics/ColorFilter;

    iput-boolean p11, p0, Lcoil3/compose/internal/ContentPainterElement;->l:Z

    iput-object p12, p0, Lcoil3/compose/internal/ContentPainterElement;->m:Lcoil3/compose/AsyncImagePreviewHandler;

    iput-object p13, p0, Lcoil3/compose/internal/ContentPainterElement;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 13

    new-instance v0, Lcoil3/compose/AsyncImagePainter$Input;

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->d:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->c:Lcoil3/ImageLoader;

    iget-object v3, p0, Lcoil3/compose/internal/ContentPainterElement;->b:Lcoil3/request/ImageRequest;

    invoke-direct {v0, v2, v3, v1}, Lcoil3/compose/AsyncImagePainter$Input;-><init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate;)V

    new-instance v5, Lcoil3/compose/AsyncImagePainter;

    invoke-direct {v5, v0}, Lcoil3/compose/AsyncImagePainter;-><init>(Lcoil3/compose/AsyncImagePainter$Input;)V

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->e:Lkotlin/jvm/functions/Function1;

    iput-object v1, v5, Lcoil3/compose/AsyncImagePainter;->o:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->f:Lkotlin/jvm/functions/Function1;

    iput-object v1, v5, Lcoil3/compose/AsyncImagePainter;->p:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->i:Landroidx/compose/ui/layout/ContentScale;

    iput-object v1, v5, Lcoil3/compose/AsyncImagePainter;->q:Landroidx/compose/ui/layout/ContentScale;

    iget v1, p0, Lcoil3/compose/internal/ContentPainterElement;->g:I

    iput v1, v5, Lcoil3/compose/AsyncImagePainter;->r:I

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->m:Lcoil3/compose/AsyncImagePreviewHandler;

    iput-object v1, v5, Lcoil3/compose/AsyncImagePainter;->s:Lcoil3/compose/AsyncImagePreviewHandler;

    invoke-virtual {v5, v0}, Lcoil3/compose/AsyncImagePainter;->m(Lcoil3/compose/AsyncImagePainter$Input;)V

    iget-object v0, v3, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    instance-of v1, v0, Lcoil3/compose/ConstraintsSizeResolver;

    if-eqz v1, :cond_0

    check-cast v0, Lcoil3/compose/ConstraintsSizeResolver;

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v4, Lcoil3/compose/internal/ContentPainterNode;

    iget-object v6, p0, Lcoil3/compose/internal/ContentPainterElement;->h:Landroidx/compose/ui/Alignment;

    iget-object v7, p0, Lcoil3/compose/internal/ContentPainterElement;->i:Landroidx/compose/ui/layout/ContentScale;

    iget v8, p0, Lcoil3/compose/internal/ContentPainterElement;->j:F

    iget-object v9, p0, Lcoil3/compose/internal/ContentPainterElement;->k:Landroidx/compose/ui/graphics/ColorFilter;

    iget-boolean v10, p0, Lcoil3/compose/internal/ContentPainterElement;->l:Z

    iget-object v11, p0, Lcoil3/compose/internal/ContentPainterElement;->n:Ljava/lang/String;

    invoke-direct/range {v4 .. v12}, Lcoil3/compose/internal/ContentPainterNode;-><init>(Lcoil3/compose/AsyncImagePainter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V

    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil3/compose/internal/ContentPainterElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcoil3/compose/internal/ContentPainterElement;

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->b:Lcoil3/request/ImageRequest;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->b:Lcoil3/request/ImageRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->c:Lcoil3/ImageLoader;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->c:Lcoil3/ImageLoader;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->d:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->d:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->e:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->f:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->f:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p1, Lcoil3/compose/internal/ContentPainterElement;->g:I

    sget-object v3, Landroidx/compose/ui/graphics/FilterQuality;->a:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    iget v3, p0, Lcoil3/compose/internal/ContentPainterElement;->g:I

    if-ne v3, v1, :cond_e

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->h:Landroidx/compose/ui/Alignment;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->h:Landroidx/compose/ui/Alignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->i:Landroidx/compose/ui/layout/ContentScale;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->i:Landroidx/compose/ui/layout/ContentScale;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcoil3/compose/internal/ContentPainterElement;->j:F

    iget v3, p1, Lcoil3/compose/internal/ContentPainterElement;->j:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->k:Landroidx/compose/ui/graphics/ColorFilter;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->k:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcoil3/compose/internal/ContentPainterElement;->l:Z

    iget-boolean v3, p1, Lcoil3/compose/internal/ContentPainterElement;->l:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->m:Lcoil3/compose/AsyncImagePreviewHandler;

    iget-object v3, p1, Lcoil3/compose/internal/ContentPainterElement;->m:Lcoil3/compose/AsyncImagePreviewHandler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterElement;->n:Ljava/lang/String;

    iget-object p1, p1, Lcoil3/compose/internal/ContentPainterElement;->n:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0

    :cond_e
    return v2
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 8

    check-cast p1, Lcoil3/compose/internal/ContentPainterNode;

    iget-object v0, p1, Lcoil3/compose/internal/ContentPainterNode;->w:Lcoil3/compose/AsyncImagePainter;

    invoke-virtual {v0}, Lcoil3/compose/AsyncImagePainter;->g()J

    move-result-wide v0

    iget-object v2, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    new-instance v3, Lcoil3/compose/AsyncImagePainter$Input;

    iget-object v4, p0, Lcoil3/compose/internal/ContentPainterElement;->d:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    iget-object v5, p0, Lcoil3/compose/internal/ContentPainterElement;->c:Lcoil3/ImageLoader;

    iget-object v6, p0, Lcoil3/compose/internal/ContentPainterElement;->b:Lcoil3/request/ImageRequest;

    invoke-direct {v3, v5, v6, v4}, Lcoil3/compose/AsyncImagePainter$Input;-><init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate;)V

    iget-object v4, p1, Lcoil3/compose/internal/ContentPainterNode;->w:Lcoil3/compose/AsyncImagePainter;

    iget-object v5, p0, Lcoil3/compose/internal/ContentPainterElement;->e:Lkotlin/jvm/functions/Function1;

    iput-object v5, v4, Lcoil3/compose/AsyncImagePainter;->o:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcoil3/compose/internal/ContentPainterElement;->f:Lkotlin/jvm/functions/Function1;

    iput-object v5, v4, Lcoil3/compose/AsyncImagePainter;->p:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcoil3/compose/internal/ContentPainterElement;->i:Landroidx/compose/ui/layout/ContentScale;

    iput-object v5, v4, Lcoil3/compose/AsyncImagePainter;->q:Landroidx/compose/ui/layout/ContentScale;

    iget v7, p0, Lcoil3/compose/internal/ContentPainterElement;->g:I

    iput v7, v4, Lcoil3/compose/AsyncImagePainter;->r:I

    iget-object v7, p0, Lcoil3/compose/internal/ContentPainterElement;->m:Lcoil3/compose/AsyncImagePreviewHandler;

    iput-object v7, v4, Lcoil3/compose/AsyncImagePainter;->s:Lcoil3/compose/AsyncImagePreviewHandler;

    invoke-virtual {v4, v3}, Lcoil3/compose/AsyncImagePainter;->m(Lcoil3/compose/AsyncImagePainter$Input;)V

    invoke-virtual {v4}, Lcoil3/compose/AsyncImagePainter;->g()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    move-result v0

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->h:Landroidx/compose/ui/Alignment;

    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->p:Landroidx/compose/ui/Alignment;

    iget-object v1, v6, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    instance-of v3, v1, Lcoil3/compose/ConstraintsSizeResolver;

    if-eqz v3, :cond_0

    check-cast v1, Lcoil3/compose/ConstraintsSizeResolver;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    iput-object v5, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->q:Landroidx/compose/ui/layout/ContentScale;

    iget v1, p0, Lcoil3/compose/internal/ContentPainterElement;->j:F

    iput v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->r:F

    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->k:Landroidx/compose/ui/graphics/ColorFilter;

    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->s:Landroidx/compose/ui/graphics/ColorFilter;

    iget-boolean v1, p0, Lcoil3/compose/internal/ContentPainterElement;->l:Z

    iput-boolean v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->t:Z

    iget-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->u:Ljava/lang/String;

    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterElement;->n:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p0, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->u:Ljava/lang/String;

    invoke-static {p1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_1
    iget-object p0, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz v0, :cond_2

    if-nez p0, :cond_3

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    :cond_3
    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->b:Lcoil3/request/ImageRequest;

    invoke-virtual {v0}, Lcoil3/request/ImageRequest;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->c:Lcoil3/ImageLoader;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->d:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->e:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcoil3/compose/internal/ContentPainterElement;->f:Lkotlin/jvm/functions/Function1;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    sget-object v3, Landroidx/compose/ui/graphics/FilterQuality;->a:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    iget v3, p0, Lcoil3/compose/internal/ContentPainterElement;->g:I

    invoke-static {v3, v2, v1}, Ltr;->b(III)I

    move-result v2

    iget-object v3, p0, Lcoil3/compose/internal/ContentPainterElement;->h:Landroidx/compose/ui/Alignment;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->i:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Lcoil3/compose/internal/ContentPainterElement;->j:F

    invoke-static {v2, v1, v3}, Lpq0;->b(IIF)I

    move-result v2

    iget-object v3, p0, Lcoil3/compose/internal/ContentPainterElement;->k:Landroidx/compose/ui/graphics/ColorFilter;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Lcoil3/compose/internal/ContentPainterElement;->l:Z

    invoke-static {v2, v1, v3}, Lo60;->b(IIZ)I

    move-result v2

    iget-object v3, p0, Lcoil3/compose/internal/ContentPainterElement;->m:Lcoil3/compose/AsyncImagePreviewHandler;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterElement;->n:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcoil3/compose/internal/ContentPainterElement;->g:I

    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentPainterElement(request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->b:Lcoil3/request/ImageRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageLoader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->c:Lcoil3/ImageLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", modelEqualityDelegate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->d:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", transform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->e:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", onState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->f:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", filterQuality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", alignment="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->h:Landroidx/compose/ui/Alignment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentScale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->i:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alpha="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcoil3/compose/internal/ContentPainterElement;->j:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", colorFilter="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->k:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clipToBounds="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcoil3/compose/internal/ContentPainterElement;->l:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", previewHandler="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->m:Lcoil3/compose/AsyncImagePreviewHandler;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentDescription="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterElement;->n:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
