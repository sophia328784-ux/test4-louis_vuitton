.class public final Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;
.implements Landroidx/compose/ui/layout/GraphicLayerInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002Bi\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00128\u0010\u0010\u001a4\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0015\u0012\u0013\u0018\u00010\u0003\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\t\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;",
        "Landroidx/compose/ui/node/OwnedLayer;",
        "Landroidx/compose/ui/layout/GraphicLayerInfo;",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "graphicsLayer",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "context",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "ownerView",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/graphics/Canvas;",
        "Lkotlin/ParameterName;",
        "name",
        "canvas",
        "parentLayer",
        "",
        "drawBlock",
        "Lkotlin/Function0;",
        "invalidateParentLayer",
        "<init>",
        "(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V",
        "ui"
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
.field public b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public final c:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final d:Landroidx/compose/ui/platform/AndroidComposeView;

.field public e:Lkotlin/jvm/functions/Function2;

.field public f:Lkotlin/jvm/functions/Function0;

.field public g:J

.field public h:Z

.field public final i:[F

.field public j:[F

.field public k:Z

.field public l:Landroidx/compose/ui/unit/Density;

.field public m:Landroidx/compose/ui/unit/LayoutDirection;

.field public final n:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public o:I

.field public p:J

.field public q:Landroidx/compose/ui/graphics/Outline;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public final v:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "-",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:Lkotlin/jvm/functions/Function0;

    sget-object p1, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    const-wide p1, 0x7fffffff7fffffffL

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->i:[F

    invoke-static {}, Landroidx/compose/ui/unit/DensityKt;->b()Landroidx/compose/ui/unit/Density;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l:Landroidx/compose/ui/unit/Density;

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Landroidx/compose/ui/unit/LayoutDirection;

    new-instance p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    sget-object p1, Landroidx/compose/ui/graphics/TransformOrigin;->b:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p1, Landroidx/compose/ui/graphics/TransformOrigin;->c:J

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Z

    new-instance p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;-><init>(Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->v:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m()[F

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    return-void
.end method

.method public final b(JZ)J
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l()[F

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Landroidx/compose/ui/geometry/Offset;->c:J

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m()[F

    move-result-object p3

    :cond_1
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Z

    if-eqz p0, :cond_2

    return-wide p1

    :cond_2
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->T()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/FrameRateCategory;->a:Landroidx/compose/ui/FrameRateCategory$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/FrameRateCategory;->b:F

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->C(F)V

    :cond_0
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    iget-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_1

    iput-boolean p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    invoke-virtual {v0, p0, p2}, Landroidx/compose/ui/platform/AndroidComposeView;->X(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_1
    return-void
.end method

.method public final d(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k()V

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->M()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->u:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    iput-object p2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final destroy()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e:Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:Z

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->X(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/GraphicsContext;->b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->A1:Landroidx/compose/ui/platform/WeakCache;

    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/platform/WeakCache;->b:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, v0, Landroidx/compose/ui/platform/WeakCache;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->n(Ljava/lang/Object;)Z

    :cond_2
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Landroidx/compose/ui/platform/WeakCache;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/collection/MutableObjectList;

    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->l(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final e(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l()[F

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m()[F

    move-result-object p2

    :goto_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Z

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    return-void

    :cond_1
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->c([FLandroidx/compose/ui/geometry/MutableRect;)V

    :cond_2
    return-void
.end method

.method public final f(J)Z
    .locals 3

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->d()Landroidx/compose/ui/graphics/Outline;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->a(Landroidx/compose/ui/graphics/Outline;FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b:I

    iget v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:I

    or-int/2addr v2, v3

    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->u:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->t:Landroidx/compose/ui/unit/Density;

    iput-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l:Landroidx/compose/ui/unit/Density;

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_0

    iget-wide v4, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o:J

    iput-wide v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    :cond_0
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->c:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->F()F

    move-result v6

    cmpg-float v6, v6, v5

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4, v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->m(F)V

    :cond_2
    :goto_0
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->d:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->N()F

    move-result v6

    cmpg-float v6, v6, v5

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4, v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->x(F)V

    :cond_4
    :goto_1
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->e:F

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g(F)V

    :cond_5
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->f:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->J()F

    move-result v6

    cmpg-float v6, v6, v5

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v4, v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->D(F)V

    :cond_7
    :goto_2
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_9

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->g:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->I()F

    move-result v6

    cmpg-float v6, v6, v5

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v4, v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->g(F)V

    :cond_9
    :goto_3
    and-int/lit8 v4, v2, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_b

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h:F

    iget-object v8, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v8}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->M()F

    move-result v9

    cmpg-float v9, v9, v7

    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v8, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->t(F)V

    iput-boolean v6, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    :goto_4
    iget v4, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    iget-boolean v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->u:Z

    if-nez v4, :cond_b

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_b
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_c

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->i:J

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->y()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-interface {v4, v7, v8}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->k(J)V

    :cond_c
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_d

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:J

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->z()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-interface {v4, v7, v8}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->p(J)V

    :cond_d
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_f

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->w()F

    move-result v8

    cmpg-float v8, v8, v7

    if-nez v8, :cond_e

    goto :goto_5

    :cond_e
    invoke-interface {v4, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->v(F)V

    :cond_f
    :goto_5
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_11

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->k:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->K()F

    move-result v8

    cmpg-float v8, v8, v7

    if-nez v8, :cond_10

    goto :goto_6

    :cond_10
    invoke-interface {v4, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->r(F)V

    :cond_11
    :goto_6
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_13

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->l()F

    move-result v8

    cmpg-float v8, v8, v7

    if-nez v8, :cond_12

    goto :goto_7

    :cond_12
    invoke-interface {v4, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->s(F)V

    :cond_13
    :goto_7
    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_15

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->B()F

    move-result v8

    cmpg-float v8, v8, v7

    if-nez v8, :cond_14

    goto :goto_8

    :cond_14
    invoke-interface {v4, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->q(F)V

    :cond_15
    :goto_8
    const-wide v7, 0xffffffffL

    const/16 v4, 0x20

    if-eqz v3, :cond_17

    iget-wide v9, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    sget-object v3, Landroidx/compose/ui/graphics/TransformOrigin;->b:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v11, Landroidx/compose/ui/graphics/TransformOrigin;->c:J

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/TransformOrigin;->a(JJ)Z

    move-result v3

    iget-object v9, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v3, :cond_16

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/geometry/Offset;->d:J

    iget-wide v12, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:J

    invoke-static {v12, v13, v10, v11}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    move-result v3

    if-nez v3, :cond_17

    iput-wide v10, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:J

    iget-object v3, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->H(J)V

    goto :goto_9

    :cond_16
    iget-wide v10, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)F

    move-result v3

    iget-wide v10, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    shr-long/2addr v10, v4

    long-to-int v10, v10

    int-to-float v10, v10

    mul-float/2addr v3, v10

    iget-wide v10, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/TransformOrigin;->c(J)F

    move-result v10

    iget-wide v11, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    and-long/2addr v11, v7

    long-to-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v11, v3

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v13, v3

    shl-long v10, v11, v4

    and-long v12, v13, v7

    or-long/2addr v10, v12

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    iget-wide v12, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:J

    invoke-static {v12, v13, v10, v11}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    move-result v3

    if-nez v3, :cond_17

    iput-wide v10, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:J

    iget-object v3, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->H(J)V

    :cond_17
    :goto_9
    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_18

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean v9, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->q:Z

    iget-boolean v10, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:Z

    if-eq v10, v9, :cond_18

    iput-boolean v9, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:Z

    iput-boolean v6, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    :cond_18
    const/high16 v3, 0x20000

    and-int/2addr v3, v2

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v9, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:Landroidx/compose/ui/graphics/RenderEffect;

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->c()Landroidx/compose/ui/graphics/RenderEffect;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    invoke-interface {v3, v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->n(Landroidx/compose/ui/graphics/RenderEffect;)V

    :cond_19
    const/high16 v3, 0x40000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1a

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v9, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->w:Landroidx/compose/ui/graphics/ColorFilter;

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->b()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-interface {v3, v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->A(Landroidx/compose/ui/graphics/ColorFilter;)V

    :cond_1a
    const/high16 v3, 0x80000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1c

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v9, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x:I

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->E()I

    move-result v10

    sget-object v11, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    if-ne v10, v9, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-interface {v3, v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->i(I)V

    :cond_1c
    :goto_a
    const v3, 0x8000

    and-int/2addr v3, v2

    const/4 v9, 0x0

    if-eqz v3, :cond_21

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v10, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->r:I

    sget-object v11, Landroidx/compose/ui/graphics/CompositingStrategy;->a:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v10, :cond_1d

    sget-object v10, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->a:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v10, v9

    goto :goto_b

    :cond_1d
    sget v11, Landroidx/compose/ui/graphics/CompositingStrategy;->b:I

    if-ne v10, v11, :cond_1e

    sget-object v10, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->a:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->b:I

    goto :goto_b

    :cond_1e
    sget v11, Landroidx/compose/ui/graphics/CompositingStrategy;->c:I

    if-ne v10, v11, :cond_20

    sget-object v10, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->a:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->c:I

    :goto_b
    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->h()I

    move-result v11

    if-ne v11, v10, :cond_1f

    goto :goto_c

    :cond_1f
    invoke-interface {v3, v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->L(I)V

    goto :goto_c

    :cond_20
    const-string v0, "Not supported composition strategy"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_21
    :goto_c
    and-int/lit16 v3, v2, 0x1f1b

    if-eqz v3, :cond_22

    iput-boolean v6, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->r:Z

    iput-boolean v6, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->s:Z

    :cond_22
    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->q:Landroidx/compose/ui/graphics/Outline;

    iget-object v10, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Landroidx/compose/ui/graphics/Outline;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Landroidx/compose/ui/graphics/Outline;

    iput-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->q:Landroidx/compose/ui/graphics/Outline;

    if-nez v3, :cond_23

    goto/16 :goto_e

    :cond_23
    iget-object v9, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    instance-of v10, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v10, :cond_24

    move-object v10, v3

    check-cast v10, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v10, v10, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    iget v11, v10, Landroidx/compose/ui/geometry/Rect;->a:F

    iget v12, v10, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v13, v11

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    move-wide v15, v7

    int-to-long v6, v11

    shl-long/2addr v13, v4

    and-long/2addr v6, v15

    or-long/2addr v6, v13

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    iget v8, v10, Landroidx/compose/ui/geometry/Rect;->c:F

    iget v11, v10, Landroidx/compose/ui/geometry/Rect;->a:F

    sub-float/2addr v8, v11

    iget v10, v10, Landroidx/compose/ui/geometry/Rect;->d:F

    sub-float/2addr v10, v12

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v11, v8

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v13, v8

    shl-long v10, v11, v4

    and-long v12, v13, v15

    or-long/2addr v12, v10

    sget-object v4, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    const/4 v14, 0x0

    move-wide v10, v6

    invoke-virtual/range {v9 .. v14}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h(JJF)V

    goto :goto_d

    :cond_24
    move-wide v15, v7

    instance-of v6, v3, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v6, :cond_25

    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v4, v4, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f()V

    iput-object v4, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    goto :goto_d

    :cond_25
    instance-of v6, v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v6, :cond_29

    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v7, v6, Landroidx/compose/ui/graphics/Outline$Rounded;->b:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v7, :cond_26

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f()V

    iput-object v7, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    goto :goto_d

    :cond_26
    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    iget v7, v6, Landroidx/compose/ui/geometry/RoundRect;->a:F

    iget v8, v6, Landroidx/compose/ui/geometry/RoundRect;->b:F

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v10, v7

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v10, v4

    and-long/2addr v7, v15

    or-long/2addr v10, v7

    sget-object v7, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/RoundRect;->b()F

    move-result v7

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    move-result v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v12, v7

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v12, v4

    and-long/2addr v7, v15

    or-long/2addr v12, v7

    sget-object v7, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    iget-wide v6, v6, Landroidx/compose/ui/geometry/RoundRect;->h:J

    shr-long/2addr v6, v4

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-virtual/range {v9 .. v14}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h(JJF)V

    :goto_d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-ge v4, v6, :cond_28

    instance-of v4, v3, Landroidx/compose/ui/graphics/Outline$Generic;

    if-nez v4, :cond_27

    instance-of v4, v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v4, :cond_28

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v3, v3, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v3}, Landroidx/compose/ui/geometry/RoundRectKt;->d(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_27
    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_28

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_28
    :goto_e
    const/4 v6, 0x1

    goto :goto_f

    :cond_29
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2a
    move v6, v9

    :goto_f
    iget v1, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b:I

    iput v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:I

    if-nez v2, :cond_2b

    if-eqz v6, :cond_2d

    :cond_2b
    iget-object v0, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-interface {v1, v0, v0}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->T()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->C(F)V

    :cond_2d
    return-void
.end method

.method public final getUnderlyingMatrix-sQKQjiQ()[F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m()[F

    move-result-object p0

    return-object p0
.end method

.method public final h(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->s:Z

    if-nez v1, :cond_0

    const-string v1, "layer should have been released before reuse"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->a()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:Z

    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e:Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:Lkotlin/jvm/functions/Function0;

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->r:Z

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->s:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Z

    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->i:[F

    invoke-static {p1}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:[F

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    :cond_1
    sget-object p1, Landroidx/compose/ui/graphics/TransformOrigin;->b:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p1, Landroidx/compose/ui/graphics/TransformOrigin;->c:J

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->u:Z

    sget-object p1, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    const-wide p1, 0x7fffffff7fffffffL

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->q:Landroidx/compose/ui/graphics/Outline;

    iput v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:I

    return-void

    :cond_2
    const-string p0, "currently reuse is only supported when we manage the layer lifecycle"

    invoke-static {p0}, La;->s(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method

.method public final i([F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l()[F

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    iput-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    invoke-virtual {v0, p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->X(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method

.method public final j(J)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->T()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/FrameRateCategory;->a:Landroidx/compose/ui/FrameRateCategory$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/FrameRateCategory;->b:F

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->C(F)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->t:J

    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->t:J

    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    long-to-int p1, p1

    invoke-interface {p0, v3, p1, v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->j(IIJ)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v0, v0}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->T()Z

    iget-boolean v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    sget-object v3, Landroidx/compose/ui/graphics/TransformOrigin;->b:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/TransformOrigin;->c:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)F

    move-result v2

    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->c(J)F

    move-result v3

    iget-wide v6, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v4, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v6, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v4, v6, v5

    and-long/2addr v2, v8

    or-long/2addr v2, v4

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    iget-wide v4, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    move-result v4

    if-nez v4, :cond_0

    iput-wide v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:J

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->H(J)V

    :cond_0
    iget-object v4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l:Landroidx/compose/ui/unit/Density;

    iget-object v6, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v7, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    iget-object v9, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->v:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->e(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;JLkotlin/jvm/functions/Function1;)V

    iget-boolean v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Z

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->X(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_1
    return-void
.end method

.method public final l()[F
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:[F

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:[F

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->s:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    aget p0, v0, v2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v3

    :cond_1
    iput-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->s:Z

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m()[F

    move-result-object v1

    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Z

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {v1, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->a([F[F)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return-object v0

    :cond_4
    const/high16 p0, 0x7fc00000    # Float.NaN

    aput p0, v0, v2

    return-object v3
.end method

.method public final m()[F
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->r:Z

    iget-object v2, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->i:[F

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:J

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    const-wide v5, 0x7fffffff7fffffffL

    and-long/2addr v5, v3

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iget-wide v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/SizeKt;->a(J)J

    move-result-wide v3

    :cond_0
    const/16 v5, 0x20

    shr-long v5, v3, v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-interface {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->J()F

    move-result v4

    invoke-interface {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->I()F

    move-result v6

    invoke-interface {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->K()F

    move-result v7

    invoke-interface {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->l()F

    move-result v8

    invoke-interface {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->w()F

    move-result v9

    invoke-interface {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->F()F

    move-result v10

    invoke-interface {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->N()F

    move-result v1

    sget v11, Landroidx/compose/ui/graphics/Matrix;->b:I

    float-to-double v11, v7

    const-wide v13, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v11, v13

    move-wide v15, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v7, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    neg-float v12, v7

    mul-float v13, v6, v11

    const/4 v14, 0x0

    mul-float v17, v14, v7

    sub-float v13, v13, v17

    mul-float/2addr v6, v7

    mul-float v17, v14, v11

    add-float v17, v17, v6

    move v6, v14

    move-wide/from16 v18, v15

    float-to-double v14, v8

    mul-double v14, v14, v18

    move/from16 v16, v6

    move v8, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v7, v14

    neg-float v14, v6

    mul-float v15, v8, v6

    mul-float/2addr v8, v7

    mul-float v20, v11, v6

    mul-float v21, v11, v7

    mul-float v22, v4, v7

    mul-float v23, v17, v6

    add-float v23, v23, v22

    neg-float v4, v4

    mul-float/2addr v4, v6

    mul-float v17, v17, v7

    add-float v17, v17, v4

    move v6, v3

    float-to-double v3, v9

    mul-double v3, v3, v18

    move-wide/from16 v18, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    move v9, v6

    move v4, v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    neg-float v7, v3

    mul-float v18, v7, v4

    mul-float v19, v6, v15

    add-float v19, v19, v18

    mul-float/2addr v4, v6

    mul-float/2addr v15, v3

    add-float/2addr v15, v4

    mul-float v4, v3, v11

    mul-float/2addr v11, v6

    mul-float/2addr v7, v14

    mul-float v18, v6, v8

    add-float v18, v18, v7

    mul-float/2addr v6, v14

    mul-float/2addr v3, v8

    add-float/2addr v3, v6

    mul-float/2addr v15, v10

    mul-float/2addr v4, v10

    mul-float/2addr v3, v10

    mul-float v19, v19, v1

    mul-float/2addr v11, v1

    mul-float v18, v18, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v20, v20, v1

    mul-float/2addr v12, v1

    mul-float v21, v21, v1

    array-length v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x10

    if-ge v6, v8, :cond_1

    goto :goto_0

    :cond_1
    aput v15, v2, v7

    const/4 v6, 0x1

    aput v4, v2, v6

    const/4 v6, 0x2

    aput v3, v2, v6

    const/4 v6, 0x3

    aput v16, v2, v6

    const/4 v6, 0x4

    aput v19, v2, v6

    const/4 v6, 0x5

    aput v11, v2, v6

    const/4 v6, 0x6

    aput v18, v2, v6

    const/4 v6, 0x7

    aput v16, v2, v6

    const/16 v6, 0x8

    aput v20, v2, v6

    const/16 v6, 0x9

    aput v12, v2, v6

    const/16 v6, 0xa

    aput v21, v2, v6

    const/16 v6, 0xb

    aput v16, v2, v6

    neg-float v6, v5

    mul-float/2addr v15, v6

    mul-float v8, v9, v19

    sub-float/2addr v15, v8

    add-float v15, v15, v23

    add-float/2addr v15, v5

    const/16 v5, 0xc

    aput v15, v2, v5

    mul-float/2addr v4, v6

    mul-float v5, v9, v11

    sub-float/2addr v4, v5

    add-float/2addr v4, v13

    add-float/2addr v4, v9

    const/16 v5, 0xd

    aput v4, v2, v5

    mul-float/2addr v6, v3

    mul-float v3, v9, v18

    sub-float/2addr v6, v3

    add-float v6, v6, v17

    const/16 v3, 0xe

    aput v6, v2, v3

    const/16 v3, 0xf

    aput v1, v2, v3

    :goto_0
    iput-boolean v7, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->r:Z

    invoke-static {v2}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Z

    :cond_2
    return-object v2
.end method
