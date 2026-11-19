.class public final Landroidx/compose/ui/platform/LayerMatrixCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B?\u00126\u0010\n\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/platform/LayerMatrixCache;",
        "T",
        "",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "target",
        "Landroid/graphics/Matrix;",
        "matrix",
        "",
        "getMatrix",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;)V",
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
.field public final a:Lkotlin/jvm/functions/Function2;

.field public b:Landroid/graphics/Matrix;

.field public final c:[F

.field public final d:[F

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Landroid/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->a:Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->c:[F

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->d:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->g:Z

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/platform/ViewLayer;)[F
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->f:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->d:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->b(Landroidx/compose/ui/platform/ViewLayer;)[F

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/compose/ui/platform/InvertMatrixKt;->a([F[F)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->f:Z

    :cond_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->g:Z

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroidx/compose/ui/platform/ViewLayer;)[F
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->e:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->c:[F

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->b:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->b:Landroid/graphics/Matrix;

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->a:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->b(Landroid/graphics/Matrix;[F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->e:Z

    invoke-static {v1}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->h:Z

    return-object v1
.end method
