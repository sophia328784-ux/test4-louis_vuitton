.class public final Landroidx/compose/ui/platform/ViewLayer;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;
.implements Landroidx/compose/ui/layout/GraphicLayerInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/ViewLayer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001BB_\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00128\u0010\u0010\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u0008\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR*\u0010!\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d8\u0006@BX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010,\u001a\u00020%8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u00102\u001a\u00020-8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u0014\u00106\u001a\u0002038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\"\u00107\u001a\u00020\u001d8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010 \u001a\u0004\u00087\u0010\"\"\u0004\u00088\u0010$R\u0014\u0010:\u001a\u00020-8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u00101R$\u0010=\u001a\u00020%2\u0006\u0010\u001e\u001a\u00020%8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010)\"\u0004\u0008<\u0010+R\u0016\u0010A\u001a\u0004\u0018\u00010>8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@\u00a8\u0006C"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ViewLayer;",
        "Landroid/view/View;",
        "Landroidx/compose/ui/node/OwnedLayer;",
        "Landroidx/compose/ui/layout/GraphicLayerInfo;",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "ownerView",
        "Landroidx/compose/ui/platform/DrawChildContainer;",
        "container",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/graphics/Canvas;",
        "Lkotlin/ParameterName;",
        "name",
        "canvas",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "parentLayer",
        "",
        "drawBlock",
        "Lkotlin/Function0;",
        "invalidateParentLayer",
        "<init>",
        "(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V",
        "b",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "getOwnerView",
        "()Landroidx/compose/ui/platform/AndroidComposeView;",
        "c",
        "Landroidx/compose/ui/platform/DrawChildContainer;",
        "getContainer",
        "()Landroidx/compose/ui/platform/DrawChildContainer;",
        "",
        "value",
        "i",
        "Z",
        "isInvalidated",
        "()Z",
        "setInvalidated",
        "(Z)V",
        "",
        "n",
        "F",
        "getFrameRate",
        "()F",
        "setFrameRate",
        "(F)V",
        "frameRate",
        "",
        "q",
        "J",
        "getLayerId",
        "()J",
        "layerId",
        "Landroidx/compose/ui/graphics/Matrix;",
        "getUnderlyingMatrix-sQKQjiQ",
        "()[F",
        "underlyingMatrix",
        "isFrameRateFromParent",
        "setFrameRateFromParent",
        "getOwnerViewId",
        "ownerViewId",
        "getCameraDistancePx",
        "setCameraDistancePx",
        "cameraDistancePx",
        "Landroidx/compose/ui/graphics/Path;",
        "getManualClipPath",
        "()Landroidx/compose/ui/graphics/Path;",
        "manualClipPath",
        "Companion",
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


# static fields
.field public static final s:Landroidx/compose/ui/platform/ViewLayer$Companion;

.field public static final t:Lkotlin/jvm/functions/Function2;

.field public static final u:Landroidx/compose/ui/platform/ViewLayer$Companion$OutlineProvider$1;

.field public static v:Ljava/lang/reflect/Method;

.field public static w:Ljava/lang/reflect/Field;

.field public static x:Z

.field public static y:Z


# instance fields
.field public final b:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final c:Landroidx/compose/ui/platform/DrawChildContainer;

.field public d:Lkotlin/jvm/functions/Function2;

.field public e:Lkotlin/jvm/functions/Function0;

.field public final f:Landroidx/compose/ui/platform/OutlineResolver;

.field public g:Z

.field public h:Landroid/graphics/Rect;

.field public i:Z

.field public j:Landroidx/compose/ui/graphics/AndroidPaint;

.field public k:Z

.field public final l:Landroidx/compose/ui/graphics/CanvasHolder;

.field public final m:Landroidx/compose/ui/platform/LayerMatrixCache;

.field public n:F

.field public o:J

.field public p:Z

.field public final q:J

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/ViewLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->s:Landroidx/compose/ui/platform/ViewLayer$Companion;

    sget-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->c:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->t:Lkotlin/jvm/functions/Function2;

    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$Companion$OutlineProvider$1;

    invoke-direct {v0}, Landroid/view/ViewOutlineProvider;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->u:Landroidx/compose/ui/platform/ViewLayer$Companion$OutlineProvider$1;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Landroidx/compose/ui/platform/DrawChildContainer;",
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

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Landroidx/compose/ui/platform/DrawChildContainer;

    iput-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/compose/ui/platform/OutlineResolver;

    invoke-direct {p1}, Landroidx/compose/ui/platform/OutlineResolver;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Landroidx/compose/ui/platform/OutlineResolver;

    new-instance p1, Landroidx/compose/ui/graphics/CanvasHolder;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->l:Landroidx/compose/ui/graphics/CanvasHolder;

    new-instance p1, Landroidx/compose/ui/platform/LayerMatrixCache;

    sget-object p3, Landroidx/compose/ui/platform/ViewLayer;->t:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, p3}, Landroidx/compose/ui/platform/LayerMatrixCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    sget-object p1, Landroidx/compose/ui/graphics/TransformOrigin;->b:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p3, Landroidx/compose/ui/graphics/TransformOrigin;->c:J

    iput-wide p3, p0, Landroidx/compose/ui/platform/ViewLayer;->o:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/ViewLayer;->p:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Landroidx/compose/ui/platform/ViewLayer;->q:J

    return-void
.end method

.method private final getManualClipPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Landroidx/compose/ui/platform/OutlineResolver;

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/OutlineResolver;->a()V

    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->d:Landroidx/compose/ui/graphics/Path;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final setInvalidated(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->i:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/ViewLayer;->i:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->X(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->b(Landroidx/compose/ui/platform/ViewLayer;)[F

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    return-void
.end method

.method public final b(JZ)J
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->a(Landroidx/compose/ui/platform/ViewLayer;)[F

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Landroidx/compose/ui/geometry/Offset;->c:J

    return-wide p0

    :cond_0
    iget-boolean p3, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->h:Z

    if-nez p3, :cond_2

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->b(Landroidx/compose/ui/platform/ViewLayer;)[F

    move-result-object p0

    iget-boolean p3, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->h:Z

    if-nez p3, :cond_2

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    move-result-wide p0

    return-wide p0

    :cond_2
    return-wide p1
.end method

.method public final c(J)V
    .locals 3

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->o:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)F

    move-result p2

    int-to-float v1, v0

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotX(F)V

    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->o:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->c(J)F

    move-result p2

    int-to-float v1, p1

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {p2}, Landroidx/compose/ui/platform/OutlineResolver;->a()V

    iget-boolean v1, p2, Landroidx/compose/ui/platform/OutlineResolver;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object p2, p2, Landroidx/compose/ui/platform/OutlineResolver;->a:Landroid/graphics/Outline;

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_3

    sget-object v2, Landroidx/compose/ui/platform/ViewLayer;->u:Landroidx/compose/ui/platform/ViewLayer$Companion$OutlineProvider$1;

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewLayer;->l()V

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->e:Z

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->f:Z

    return-void
.end method

.method public final d(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->l()V

    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Landroidx/compose/ui/platform/DrawChildContainer;

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    invoke-virtual {p2, p1, p0, v0, v1}, Landroidx/compose/ui/platform/DrawChildContainer;->a(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/platform/ViewLayer;J)V

    iget-boolean p0, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Z

    if-eqz p0, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->q()V

    :cond_2
    return-void
.end method

.method public final destroy()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-boolean v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->Q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->d:Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Lkotlin/jvm/functions/Function0;

    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->A1:Landroidx/compose/ui/platform/WeakCache;

    :cond_0
    iget-object v2, v0, Landroidx/compose/ui/platform/WeakCache;->b:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, v0, Landroidx/compose/ui/platform/WeakCache;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->n(Ljava/lang/Object;)Z

    :cond_1
    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Landroidx/compose/ui/platform/WeakCache;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/collection/MutableObjectList;

    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->l(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Landroidx/compose/ui/platform/DrawChildContainer;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/platform/ViewLayer;->l:Landroidx/compose/ui/graphics/CanvasHolder;

    iget-object v2, v1, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object v3, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    move-object/from16 v4, p1

    iput-object v4, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->p()V

    iget-object v4, v0, Landroidx/compose/ui/platform/ViewLayer;->f:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/OutlineResolver;->a()V

    iget-object v5, v4, Landroidx/compose/ui/platform/OutlineResolver;->d:Landroidx/compose/ui/graphics/Path;

    if-eqz v5, :cond_2

    invoke-static {v2, v5}, Landroidx/compose/ui/graphics/Canvas;->k(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;)V

    goto/16 :goto_4

    :cond_2
    iget v5, v4, Landroidx/compose/ui/platform/OutlineResolver;->i:F

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_7

    iget-object v7, v4, Landroidx/compose/ui/platform/OutlineResolver;->g:Landroidx/compose/ui/graphics/Path;

    iget-object v11, v4, Landroidx/compose/ui/platform/OutlineResolver;->h:Landroidx/compose/ui/geometry/RoundRect;

    if-eqz v7, :cond_4

    iget-wide v12, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    iget-wide v14, v4, Landroidx/compose/ui/platform/OutlineResolver;->k:J

    if-eqz v11, :cond_4

    invoke-static {v11}, Landroidx/compose/ui/geometry/RoundRectKt;->d(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x20

    iget v8, v11, Landroidx/compose/ui/geometry/RoundRect;->a:F

    const-wide v16, 0xffffffffL

    shr-long v9, v12, p1

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    cmpg-float v8, v8, v10

    if-nez v8, :cond_5

    iget v8, v11, Landroidx/compose/ui/geometry/RoundRect;->b:F

    and-long v12, v12, v16

    long-to-int v10, v12

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    cmpg-float v8, v8, v12

    if-nez v8, :cond_5

    iget v8, v11, Landroidx/compose/ui/geometry/RoundRect;->c:F

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    shr-long v12, v14, p1

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    add-float/2addr v12, v9

    cmpg-float v8, v8, v12

    if-nez v8, :cond_5

    iget v8, v11, Landroidx/compose/ui/geometry/RoundRect;->d:F

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    and-long v12, v14, v16

    long-to-int v10, v12

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    add-float/2addr v10, v9

    cmpg-float v8, v8, v10

    if-nez v8, :cond_5

    iget-wide v8, v11, Landroidx/compose/ui/geometry/RoundRect;->e:J

    shr-long v8, v8, p1

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    cmpg-float v5, v8, v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_4
    :goto_1
    const/16 p1, 0x20

    const-wide v16, 0xffffffffL

    :cond_5
    iget-wide v8, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    shr-long v8, v8, p1

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iget-wide v9, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    and-long v9, v9, v16

    long-to-int v5, v9

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    iget-wide v10, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    shr-long v10, v10, p1

    long-to-int v5, v10

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    iget-wide v10, v4, Landroidx/compose/ui/platform/OutlineResolver;->k:J

    shr-long v10, v10, p1

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    add-float/2addr v10, v5

    iget-wide v11, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    and-long v11, v11, v16

    long-to-int v5, v11

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    iget-wide v11, v4, Landroidx/compose/ui/platform/OutlineResolver;->k:J

    and-long v11, v11, v16

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    add-float/2addr v11, v5

    iget v5, v4, Landroidx/compose/ui/platform/OutlineResolver;->i:F

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v14, v5

    shl-long v12, v12, p1

    and-long v14, v14, v16

    or-long/2addr v12, v14

    sget-object v5, Landroidx/compose/ui/geometry/CornerRadius;->a:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-static/range {v8 .. v13}, Landroidx/compose/ui/geometry/RoundRectKt;->c(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v5

    if-nez v7, :cond_6

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v7

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Landroidx/compose/ui/graphics/Path;->reset()V

    :goto_2
    invoke-static {v7, v5}, Landroidx/compose/ui/graphics/Path;->r(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    iput-object v5, v4, Landroidx/compose/ui/platform/OutlineResolver;->h:Landroidx/compose/ui/geometry/RoundRect;

    iput-object v7, v4, Landroidx/compose/ui/platform/OutlineResolver;->g:Landroidx/compose/ui/graphics/Path;

    :goto_3
    invoke-static {v2, v7}, Landroidx/compose/ui/graphics/Canvas;->k(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;)V

    goto :goto_4

    :cond_7
    const/16 p1, 0x20

    const-wide v16, 0xffffffffL

    iget-wide v7, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    shr-long v7, v7, p1

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    iget-wide v7, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    and-long v7, v7, v16

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    iget-wide v8, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    shr-long v8, v8, p1

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iget-wide v9, v4, Landroidx/compose/ui/platform/OutlineResolver;->k:J

    shr-long v9, v9, p1

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    add-float/2addr v9, v8

    iget-wide v10, v4, Landroidx/compose/ui/platform/OutlineResolver;->j:J

    and-long v10, v10, v16

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iget-wide v10, v4, Landroidx/compose/ui/platform/OutlineResolver;->k:J

    and-long v10, v10, v16

    long-to-int v4, v10

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float/2addr v4, v8

    invoke-static {v2, v5, v7, v9, v4}, Landroidx/compose/ui/graphics/Canvas;->h(Landroidx/compose/ui/graphics/Canvas;FFFF)V

    :goto_4
    const/4 v4, 0x1

    :goto_5
    iget-object v5, v0, Landroidx/compose/ui/platform/ViewLayer;->d:Lkotlin/jvm/functions/Function2;

    if-eqz v5, :cond_8

    const/4 v7, 0x0

    invoke-interface {v5, v2, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    :cond_9
    iget-object v1, v1, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    iput-object v3, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    return-void
.end method

.method public final e(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    if-eqz p2, :cond_1

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->a(Landroidx/compose/ui/platform/ViewLayer;)[F

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    return-void

    :cond_0
    iget-boolean p2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->h:Z

    if-nez p2, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Matrix;->c([FLandroidx/compose/ui/geometry/MutableRect;)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->b(Landroidx/compose/ui/platform/ViewLayer;)[F

    move-result-object p0

    iget-boolean p2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->h:Z

    if-nez p2, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Matrix;->c([FLandroidx/compose/ui/geometry/MutableRect;)V

    :cond_2
    return-void
.end method

.method public final f(J)Z
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-boolean v2, p0, Landroidx/compose/ui/platform/ViewLayer;->g:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Landroidx/compose/ui/platform/OutlineResolver;

    iget-boolean p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->l:Z

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->b:Landroidx/compose/ui/graphics/Outline;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p0, p2, p1}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->a(Landroidx/compose/ui/graphics/Outline;FF)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final forceLayout()V
    .locals 0

    return-void
.end method

.method public final g(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V
    .locals 12

    iget v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b:I

    iget v1, p0, Landroidx/compose/ui/platform/ViewLayer;->r:I

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o:J

    iput-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->o:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->o:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->c(J)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->c:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->d:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->e:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->f:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->g:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setElevation(F)V

    :cond_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->k:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotationX(F)V

    :cond_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotationY(F)V

    :cond_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n:F

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/ViewLayer;->setCameraDistancePx(F)V

    :cond_a
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_0

    :cond_b
    move v1, v2

    :goto_0
    iget-boolean v4, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->q:Z

    sget-object v5, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    if-eqz v4, :cond_c

    iget-object v6, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p:Landroidx/compose/ui/graphics/Shape;

    if-eq v6, v5, :cond_c

    move v6, v3

    goto :goto_1

    :cond_c
    move v6, v2

    :goto_1
    and-int/lit16 v7, v0, 0x6000

    if-eqz v7, :cond_e

    if-eqz v4, :cond_d

    iget-object v4, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p:Landroidx/compose/ui/graphics/Shape;

    if-ne v4, v5, :cond_d

    move v4, v3

    goto :goto_2

    :cond_d
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Landroidx/compose/ui/platform/ViewLayer;->g:Z

    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewLayer;->l()V

    invoke-virtual {p0, v6}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_e
    iget-object v4, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Landroidx/compose/ui/graphics/Outline;

    iget v5, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->e:F

    iget v7, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h:F

    iget-wide v8, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->s:J

    iget-object v10, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Landroidx/compose/ui/platform/OutlineResolver;

    iget-object v11, v10, Landroidx/compose/ui/platform/OutlineResolver;->a:Landroid/graphics/Outline;

    invoke-virtual {v11, v5}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v5, v10, Landroidx/compose/ui/platform/OutlineResolver;->b:Landroidx/compose/ui/graphics/Outline;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    iput-object v4, v10, Landroidx/compose/ui/platform/OutlineResolver;->b:Landroidx/compose/ui/graphics/Outline;

    iput-boolean v3, v10, Landroidx/compose/ui/platform/OutlineResolver;->e:Z

    :cond_f
    iput-wide v8, v10, Landroidx/compose/ui/platform/OutlineResolver;->k:J

    const/4 v8, 0x0

    if-eqz v4, :cond_11

    if-nez v6, :cond_10

    cmpl-float v4, v7, v8

    if-lez v4, :cond_11

    :cond_10
    move v4, v3

    goto :goto_3

    :cond_11
    move v4, v2

    :goto_3
    iget-boolean v6, v10, Landroidx/compose/ui/platform/OutlineResolver;->l:Z

    if-eq v6, v4, :cond_12

    iput-boolean v4, v10, Landroidx/compose/ui/platform/OutlineResolver;->l:Z

    iput-boolean v3, v10, Landroidx/compose/ui/platform/OutlineResolver;->e:Z

    :cond_12
    iget-boolean v4, v10, Landroidx/compose/ui/platform/OutlineResolver;->e:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_15

    invoke-virtual {v10}, Landroidx/compose/ui/platform/OutlineResolver;->a()V

    iget-boolean v4, v10, Landroidx/compose/ui/platform/OutlineResolver;->l:Z

    if-eqz v4, :cond_13

    iget-object v4, v10, Landroidx/compose/ui/platform/OutlineResolver;->a:Landroid/graphics/Outline;

    goto :goto_4

    :cond_13
    move-object v4, v6

    :goto_4
    if-eqz v4, :cond_14

    sget-object v4, Landroidx/compose/ui/platform/ViewLayer;->u:Landroidx/compose/ui/platform/ViewLayer$Companion$OutlineProvider$1;

    goto :goto_5

    :cond_14
    move-object v4, v6

    :goto_5
    invoke-virtual {p0, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_15
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v4

    if-eqz v4, :cond_16

    move v4, v3

    goto :goto_6

    :cond_16
    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_17

    if-eqz v4, :cond_18

    if-nez v5, :cond_18

    :cond_17
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewLayer;->invalidate()V

    :cond_18
    iget-boolean v1, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Z

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_19

    iget-object v1, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_19
    and-int/lit16 v1, v0, 0x1f1b

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    iput-boolean v3, v1, Landroidx/compose/ui/platform/LayerMatrixCache;->e:Z

    iput-boolean v3, v1, Landroidx/compose/ui/platform/LayerMatrixCache;->f:Z

    :cond_1a
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1b

    iget-wide v4, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->i:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    :cond_1b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1c

    iget-wide v4, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v1, v4, :cond_1d

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1d

    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:Landroidx/compose/ui/graphics/RenderEffect;

    invoke-static {p0, v1}, Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;->a(Landroidx/compose/ui/platform/ViewLayer;Landroidx/compose/ui/graphics/RenderEffect;)V

    :cond_1d
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-nez v1, :cond_1f

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1e

    goto :goto_7

    :cond_1e
    move v1, v2

    goto :goto_8

    :cond_1f
    :goto_7
    move v1, v3

    :goto_8
    const v4, 0x8000

    and-int/2addr v0, v4

    if-nez v0, :cond_20

    if-eqz v1, :cond_26

    :cond_20
    if-eqz v1, :cond_21

    sget-object v0, Landroidx/compose/ui/graphics/CompositingStrategy;->a:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/graphics/CompositingStrategy;->b:I

    goto :goto_9

    :cond_21
    iget v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->r:I

    :goto_9
    sget-object v4, Landroidx/compose/ui/graphics/CompositingStrategy;->a:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/graphics/CompositingStrategy;->b:I

    if-ne v0, v4, :cond_24

    if-eqz v1, :cond_23

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->j:Landroidx/compose/ui/graphics/AndroidPaint;

    if-nez v0, :cond_22

    new-instance v0, Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->j:Landroidx/compose/ui/graphics/AndroidPaint;

    :cond_22
    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->w:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->l(Landroidx/compose/ui/graphics/ColorFilter;)V

    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x:I

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->k(I)V

    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a(Landroidx/compose/ui/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    :cond_23
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_a
    move v2, v3

    goto :goto_b

    :cond_24
    sget v1, Landroidx/compose/ui/graphics/CompositingStrategy;->c:I

    if-ne v0, v1, :cond_25

    invoke-virtual {p0, v2, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_b

    :cond_25
    invoke-virtual {p0, v2, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_a

    :goto_b
    iput-boolean v2, p0, Landroidx/compose/ui/platform/ViewLayer;->p:Z

    :cond_26
    iget p1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b:I

    iput p1, p0, Landroidx/compose/ui/platform/ViewLayer;->r:I

    return-void
.end method

.method public final getCameraDistancePx()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getCameraDistance()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getContainer()Landroidx/compose/ui/platform/DrawChildContainer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Landroidx/compose/ui/platform/DrawChildContainer;

    return-object p0
.end method

.method public getFrameRate()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/ViewLayer;->n:F

    return p0
.end method

.method public getLayerId()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/ViewLayer;->q:J

    return-wide v0
.end method

.method public final getOwnerView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object p0
.end method

.method public getOwnerViewId()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnderlyingMatrix-sQKQjiQ()[F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->b(Landroidx/compose/ui/platform/ViewLayer;)[F

    move-result-object p0

    return-object p0
.end method

.method public final h(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Landroidx/compose/ui/platform/DrawChildContainer;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->e:Z

    iput-boolean v1, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->f:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->h:Z

    iput-boolean v2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->g:Z

    iget-object v2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->c:[F

    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    iget-object v0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->d:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    iput-boolean v1, p0, Landroidx/compose/ui/platform/ViewLayer;->g:Z

    iput-boolean v1, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Z

    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->b:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/graphics/TransformOrigin;->c:J

    iput-wide v2, p0, Landroidx/compose/ui/platform/ViewLayer;->o:J

    iput-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->d:Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/platform/ViewLayer;->p:Z

    return p0
.end method

.method public final i([F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->a(Landroidx/compose/ui/platform/ViewLayer;)[F

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final j(J)V
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Landroidx/compose/ui/platform/LayerMatrixCache;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iput-boolean v2, v3, Landroidx/compose/ui/platform/LayerMatrixCache;->e:Z

    iput-boolean v2, v3, Landroidx/compose/ui/platform/LayerMatrixCache;->f:Z

    :cond_0
    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iput-boolean v2, v3, Landroidx/compose/ui/platform/LayerMatrixCache;->e:Z

    iput-boolean v2, v3, Landroidx/compose/ui/platform/LayerMatrixCache;->f:Z

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 9

    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->i:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Landroidx/compose/ui/platform/ViewLayer;->y:Z

    if-nez v0, :cond_4

    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->s:Landroidx/compose/ui/platform/ViewLayer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/view/View;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    sget-boolean v5, Landroidx/compose/ui/platform/ViewLayer;->x:Z

    if-nez v5, :cond_1

    sput-boolean v4, Landroidx/compose/ui/platform/ViewLayer;->x:Z

    const-string v5, "getDeclaredMethod"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v3

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "updateDisplayListIfDirty"

    aput-object v7, v6, v3

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    sput-object v5, Landroidx/compose/ui/platform/ViewLayer;->v:Ljava/lang/reflect/Method;

    const-string v5, "getDeclaredField"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "mRecreateDisplayList"

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->w:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->v:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->w:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->w:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->v:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v4, Landroidx/compose/ui/platform/ViewLayer;->y:Z

    :cond_3
    :goto_0
    invoke-direct {p0, v3}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    :cond_4
    return-void
.end method

.method public final l()V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->h:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->h:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->h:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public final setCameraDistancePx(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method public setFrameRate(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/ViewLayer;->n:F

    return-void
.end method

.method public setFrameRateFromParent(Z)V
    .locals 0

    return-void
.end method
