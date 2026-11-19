.class Landroidx/camera/core/imagecapture/ProcessingRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroidx/camera/core/imagecapture/TakePictureRequest;

.field public final c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field public final d:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field public final e:Landroid/graphics/Rect;

.field public final f:I

.field public final g:I

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroidx/camera/core/imagecapture/RequestWithCallback;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/util/ArrayList;

.field public final l:Lcom/google/common/util/concurrent/ListenableFuture;

.field public m:I


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/RequestWithCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->m:I

    iput p5, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->a:I

    iput-object p2, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->b:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->g()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object p5

    iput-object p5, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->i()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object p5

    iput-object p5, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->d:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->e()I

    move-result p5

    iput p5, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->g:I

    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->h()I

    move-result p5

    iput p5, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->f:I

    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->c()Landroid/graphics/Rect;

    move-result-object p5

    iput-object p5, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->e:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->j()Landroid/graphics/Matrix;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->h:Landroid/graphics/Matrix;

    iput-object p3, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->i:Landroidx/camera/core/imagecapture/RequestWithCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->j:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->k:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroidx/camera/core/impl/CaptureBundle;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/CaptureStage;

    iget-object p3, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p4, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
