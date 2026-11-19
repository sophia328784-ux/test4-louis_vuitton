.class public Landroidx/camera/core/imagecapture/ProcessingNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/ProcessingNode$In;,
        Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Node<",
        "Landroidx/camera/core/imagecapture/ProcessingNode$In;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/hardware/camera2/CameraCharacteristics;

.field public c:Landroidx/camera/core/imagecapture/DngImage2Disk;

.field public d:Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

.field public e:Landroidx/camera/core/processing/Operation;

.field public f:Landroidx/camera/core/processing/Operation;

.field public g:Landroidx/camera/core/imagecapture/Bitmap2JpegBytes;

.field public h:Landroidx/camera/core/imagecapture/JpegBytes2Disk;

.field public i:Landroidx/camera/core/processing/Operation;

.field public j:Landroidx/camera/core/imagecapture/JpegImage2Result;

.field public k:Landroidx/camera/core/imagecapture/JpegBytes2Image;

.field public l:Landroidx/camera/core/imagecapture/Image2Bitmap;

.field public final m:Landroidx/camera/core/impl/Quirks;

.field public final n:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    sget-object v0, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v1, Landroidx/camera/core/internal/compat/quirk/LowMemoryQuirk;

    sget-object v2, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->e(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->a:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->a:Ljava/util/concurrent/Executor;

    :goto_0
    iput-object p2, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->b:Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->m:Landroidx/camera/core/impl/Quirks;

    const-class p1, Landroidx/camera/core/internal/compat/quirk/IncorrectJpegMetadataQuirk;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/Quirks;->a(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/ImageProxy;
    .locals 13

    move-object v0, p1

    check-cast v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->e:Landroidx/camera/core/processing/Operation;

    check-cast v1, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;

    invoke-virtual {v1, p1}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->d:Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    iget-object v1, v1, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Landroidx/core/util/Preconditions;->a(Z)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->e()I

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->n:Z

    if-eqz v5, :cond_1

    :cond_0
    const/16 v5, 0x100

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->f:Landroidx/camera/core/processing/Operation;

    iget v6, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->g:I

    new-instance v7, Landroidx/camera/core/imagecapture/AutoValue_Image2JpegBytes_In;

    invoke-direct {v7, p1, v6}, Landroidx/camera/core/imagecapture/AutoValue_Image2JpegBytes_In;-><init>(Landroidx/camera/core/processing/Packet;I)V

    check-cast v4, Landroidx/camera/core/imagecapture/Image2JpegBytes;

    invoke-virtual {v4, v7}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    iget-object v4, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->k:Landroidx/camera/core/imagecapture/JpegBytes2Image;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->h()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->h()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v6, v7, v5, v8}, Landroidx/camera/core/ImageReaderProxys;->a(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Landroidx/camera/core/ImageProcessingUtil;->a(Landroidx/camera/core/SafeCloseImageReaderProxy;[B)Landroidx/camera/core/ImageProxy;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->f()V

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->d()Landroidx/camera/core/impl/utils/Exif;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->b()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->f()I

    move-result v10

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->g()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->a()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v12

    new-instance v8, Landroid/util/Size;

    move-object p1, v6

    check-cast p1, Landroidx/camera/core/ForwardingImageProxy;

    invoke-virtual {p1}, Landroidx/camera/core/ForwardingImageProxy;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroidx/camera/core/ForwardingImageProxy;->getHeight()I

    move-result p1

    invoke-direct {v8, v4, p1}, Landroid/util/Size;-><init>(II)V

    invoke-static/range {v6 .. v12}, Landroidx/camera/core/processing/Packet;->j(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/impl/utils/Exif;Landroid/util/Size;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->j:Landroidx/camera/core/imagecapture/JpegImage2Result;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageProxy;

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->p1()Landroidx/camera/core/ImageInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/core/ImageInfo;->c()Landroidx/camera/core/impl/TagBundle;

    move-result-object v5

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->p1()Landroidx/camera/core/ImageInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/core/ImageInfo;->d()J

    move-result-wide v6

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->f()I

    move-result v8

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->g()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->p1()Landroidx/camera/core/ImageInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/core/ImageInfo;->a()I

    move-result v10

    invoke-static/range {v5 .. v10}, Landroidx/camera/core/ImmutableImageInfo;->e(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;I)Landroidx/camera/core/ImageInfo;

    move-result-object v4

    new-instance v5, Landroidx/camera/core/SettableImageProxy;

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->h()Landroid/util/Size;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->b()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p0, v5, Landroidx/camera/core/SettableImageProxy;->g:I

    iget v4, v5, Landroidx/camera/core/SettableImageProxy;->h:I

    invoke-virtual {p1, v2, v2, p0, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    iget-object p0, v5, Landroidx/camera/core/SettableImageProxy;->e:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_3

    iget-object p0, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->b:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-interface {v5}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->n(I)V

    :cond_3
    return-object v5

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/ImageCapture$OutputFileResults;
    .locals 11

    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->d:Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Landroidx/core/util/Preconditions;->a(Z)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroidx/camera/core/internal/utils/ImageUtil;->c(I)Z

    move-result v5

    const/16 v6, 0x20

    if-nez v5, :cond_1

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v2

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "On-disk capture only support JPEG and JPEG/R and RAW output formats. Output format: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    move-object v3, p1

    check-cast v3, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object v3, v3, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v5, v3, Landroidx/camera/core/imagecapture/ProcessingRequest;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    iget-object v7, v3, Landroidx/camera/core/imagecapture/ProcessingRequest;->b:Landroidx/camera/core/imagecapture/TakePictureRequest;

    iget v8, v3, Landroidx/camera/core/imagecapture/ProcessingRequest;->g:I

    iget-object v3, v3, Landroidx/camera/core/imagecapture/ProcessingRequest;->d:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    if-eqz v5, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v1

    :goto_2
    const-string v10, "OutputFileOptions cannot be empty"

    invoke-static {v9, v10}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    iget-object v9, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->e:Landroidx/camera/core/processing/Operation;

    check-cast v9, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;

    invoke-virtual {v9, p1}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    const-string v0, "The number of OutputFileOptions for simultaneous capture should be at least two"

    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->e()I

    move-result v0

    if-eq v0, v6, :cond_4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v3, v8}, Landroidx/camera/core/imagecapture/ProcessingNode;->c(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;I)Landroidx/camera/core/ImageCapture$OutputFileResults;

    move-result-object p0

    const/16 p1, 0x100

    invoke-virtual {v7, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->n(I)V

    return-object p0

    :cond_4
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v5}, Landroidx/camera/core/imagecapture/ProcessingNode;->d(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroidx/camera/core/ImageCapture$OutputFileResults;

    move-result-object p0

    invoke-virtual {v7, v6}, Landroidx/camera/core/imagecapture/TakePictureRequest;->n(I)V

    return-object p0

    :cond_5
    if-eq v4, v6, :cond_6

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v5, v8}, Landroidx/camera/core/imagecapture/ProcessingNode;->c(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;I)Landroidx/camera/core/ImageCapture$OutputFileResults;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v5}, Landroidx/camera/core/imagecapture/ProcessingNode;->d(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroidx/camera/core/ImageCapture$OutputFileResults;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;I)Landroidx/camera/core/ImageCapture$OutputFileResults;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Landroidx/camera/core/imagecapture/ProcessingNode;->f:Landroidx/camera/core/processing/Operation;

    new-instance v3, Landroidx/camera/core/imagecapture/AutoValue_Image2JpegBytes_In;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v1}, Landroidx/camera/core/imagecapture/AutoValue_Image2JpegBytes_In;-><init>(Landroidx/camera/core/processing/Packet;I)V

    check-cast v2, Landroidx/camera/core/imagecapture/Image2JpegBytes;

    invoke-virtual {v2, v3}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/processing/Packet;

    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->b()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->h()Landroid/util/Size;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/camera/core/impl/utils/TransformUtils;->c(Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result v3

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->e()I

    move-result v3

    invoke-static {v3}, Landroidx/camera/core/internal/utils/ImageUtil;->c(I)Z

    move-result v3

    const/4 v7, 0x0

    invoke-static {v7, v3}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-object v3, v0, Landroidx/camera/core/imagecapture/ProcessingNode;->i:Landroidx/camera/core/processing/Operation;

    check-cast v3, Landroidx/camera/core/imagecapture/JpegBytes2CroppedBitmap;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->b()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    :try_start_0
    array-length v8, v7

    invoke-static {v7, v5, v8, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v7, v3, v8}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->d()Landroidx/camera/core/impl/utils/Exif;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v11, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->f()I

    move-result v12

    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->g()Landroid/graphics/Matrix;

    move-result-object v7

    sget-object v8, Landroidx/camera/core/impl/utils/TransformUtils;->a:Landroid/graphics/RectF;

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13, v7}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget v7, v3, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v13, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2}, Landroidx/camera/core/processing/Packet;->a()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Landroidx/camera/core/processing/Packet;->i(Landroid/graphics/Bitmap;Landroidx/camera/core/impl/utils/Exif;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    move-result-object v2

    iget-object v3, v0, Landroidx/camera/core/imagecapture/ProcessingNode;->g:Landroidx/camera/core/imagecapture/Bitmap2JpegBytes;

    new-instance v7, Landroidx/camera/core/imagecapture/AutoValue_Bitmap2JpegBytes_In;

    invoke-direct {v7, v2, v1}, Landroidx/camera/core/imagecapture/AutoValue_Bitmap2JpegBytes_In;-><init>(Landroidx/camera/core/processing/Packet;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroidx/camera/core/imagecapture/Bitmap2JpegBytes$In;->b()Landroidx/camera/core/processing/Packet;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7}, Landroidx/camera/core/imagecapture/Bitmap2JpegBytes$In;->a()I

    move-result v7

    invoke-virtual {v3, v8, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->d()Landroidx/camera/core/impl/utils/Exif;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x22

    if-lt v3, v7, :cond_1

    invoke-static {v2}, Landroidx/camera/core/imagecapture/Bitmap2JpegBytes$Api34Impl;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1005

    move v11, v2

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->h()Landroid/util/Size;

    move-result-object v12

    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->b()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->f()I

    move-result v14

    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->g()Landroid/graphics/Matrix;

    move-result-object v15

    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->a()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v16

    invoke-static/range {v9 .. v16}, Landroidx/camera/core/processing/Packet;->k([BLandroidx/camera/core/impl/utils/Exif;ILandroid/util/Size;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    move-result-object v2

    :goto_1
    iget-object v0, v0, Landroidx/camera/core/imagecapture/ProcessingNode;->h:Landroidx/camera/core/imagecapture/JpegBytes2Disk;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/camera/core/imagecapture/AutoValue_JpegBytes2Disk_In;

    move-object/from16 v3, p2

    invoke-direct {v1, v2, v3}, Landroidx/camera/core/imagecapture/AutoValue_JpegBytes2Disk_In;-><init>(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/JpegBytes2Disk$In;->b()Landroidx/camera/core/processing/Packet;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/JpegBytes2Disk$In;->a()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/core/imagecapture/FileUtil;->e(Landroidx/camera/core/ImageCapture$OutputFileOptions;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v8, Landroidx/camera/core/internal/compat/workaround/InvalidJpegDataParser;

    invoke-direct {v8}, Landroidx/camera/core/internal/compat/workaround/InvalidJpegDataParser;-><init>()V

    invoke-virtual {v8, v3}, Landroidx/camera/core/internal/compat/workaround/InvalidJpegDataParser;->a([B)I

    move-result v8

    invoke-virtual {v7, v3, v5, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->d()Landroidx/camera/core/impl/utils/Exif;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->f()I

    move-result v0

    :try_start_4
    sget-object v7, Landroidx/camera/core/impl/utils/Exif;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroidx/camera/core/impl/utils/Exif;

    new-instance v9, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v9, v7}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroidx/camera/core/impl/utils/Exif;-><init>(Landroidx/exifinterface/media/ExifInterface;)V

    invoke-virtual {v3, v8}, Landroidx/camera/core/impl/utils/Exif;->a(Landroidx/camera/core/impl/utils/Exif;)V

    invoke-virtual {v8}, Landroidx/camera/core/impl/utils/Exif;->b()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    const-string v3, "Orientation"

    rem-int/lit8 v7, v0, 0x5a

    const/4 v10, 0x5

    if-eqz v7, :cond_2

    const-string v0, "Exif"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Landroidx/exifinterface/media/ExifInterface;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {v9, v5, v3}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result v5

    :goto_2
    const/4 v7, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 v13, 0x8

    const/4 v14, 0x6

    if-gez v0, :cond_3

    add-int/lit8 v0, v0, 0x5a

    packed-switch v5, :pswitch_data_0

    move v5, v13

    goto :goto_2

    :pswitch_0
    move v5, v14

    goto :goto_2

    :pswitch_1
    move v5, v12

    goto :goto_2

    :pswitch_2
    move v5, v6

    goto :goto_2

    :pswitch_3
    move v5, v11

    goto :goto_2

    :pswitch_4
    move v5, v7

    goto :goto_2

    :pswitch_5
    move v5, v10

    goto :goto_2

    :cond_3
    :goto_3
    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x5a

    packed-switch v5, :pswitch_data_1

    move v5, v14

    goto :goto_3

    :pswitch_6
    move v5, v6

    goto :goto_3

    :pswitch_7
    move v5, v11

    goto :goto_3

    :pswitch_8
    const/4 v5, 0x3

    goto :goto_3

    :pswitch_9
    move v5, v12

    goto :goto_3

    :pswitch_a
    move v5, v10

    goto :goto_3

    :pswitch_b
    move v5, v13

    goto :goto_3

    :pswitch_c
    move v5, v7

    goto :goto_3

    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Landroidx/exifinterface/media/ExifInterface;->I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    iget-object v0, v1, Landroidx/camera/core/ImageCapture$OutputFileOptions;->f:Landroidx/camera/core/ImageCapture$Metadata;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroidx/camera/core/impl/utils/Exif;->c()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v2, v1}, Landroidx/camera/core/imagecapture/FileUtil;->f(Ljava/io/File;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-direct {v1, v0, v4}, Landroidx/camera/core/ImageCapture$OutputFileResults;-><init>(Landroid/net/Uri;I)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const-string v2, "Failed to update Exif data"

    invoke-direct {v1, v6, v2, v0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const-string v2, "Failed to write to temp file"

    invoke-direct {v1, v6, v2, v0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const-string v2, "Failed to decode JPEG."

    invoke-direct {v1, v6, v2, v0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final d(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroidx/camera/core/ImageCapture$OutputFileResults;
    .locals 6

    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->c:Landroidx/camera/core/imagecapture/DngImage2Disk;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->b:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->a()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraCaptureResult;->e()Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Landroidx/camera/core/imagecapture/DngImage2Disk;

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->a()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraCaptureResult;->e()Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Landroidx/camera/core/imagecapture/DngImage2Disk;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->c:Landroidx/camera/core/imagecapture/DngImage2Disk;

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/camera/core/ImageCaptureException;

    const-string p1, "CameraCaptureResult is null, DngCreator cannot be created"

    invoke-direct {p0, v1, p1, v0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance p0, Landroidx/camera/core/ImageCaptureException;

    const-string p1, "CameraCharacteristics is null, DngCreator cannot be created"

    invoke-direct {p0, v1, p1, v0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->c:Landroidx/camera/core/imagecapture/DngImage2Disk;

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->f()I

    move-result p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;

    invoke-direct {v2, v0, p1, p2}, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;-><init>(Landroidx/camera/core/ImageProxy;ILandroidx/camera/core/ImageCapture$OutputFileOptions;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/camera/core/imagecapture/FileUtil;->e(Landroidx/camera/core/ImageCapture$OutputFileOptions;)Ljava/io/File;

    move-result-object v2

    iget-object p0, p0, Landroidx/camera/core/imagecapture/DngImage2Disk;->a:Landroid/hardware/camera2/DngCreator;

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    const/16 v5, 0x5a

    if-eq p1, v5, :cond_5

    const/16 v5, 0xb4

    if-eq p1, v5, :cond_4

    const/16 v5, 0x10e

    if-eq p1, v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    const/4 v1, 0x6

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->O()Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v2, p2}, Landroidx/camera/core/imagecapture/FileUtil;->f(Ljava/io/File;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    const/16 p2, 0x20

    invoke-direct {p1, p0, p2}, Landroidx/camera/core/ImageCapture$OutputFileResults;-><init>(Landroid/net/Uri;I)V

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    new-instance p1, Landroidx/camera/core/ImageCaptureException;

    const-string p2, "Failed to write to temp file"

    invoke-direct {p1, v3, p2, p0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    new-instance p1, Landroidx/camera/core/ImageCaptureException;

    const-string p2, "Not enough metadata information has been set to write a well-formatted DNG file"

    invoke-direct {p1, v3, p2, p0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_5
    new-instance p1, Landroidx/camera/core/ImageCaptureException;

    const-string p2, "Image with an unsupported format was used"

    invoke-direct {p1, v3, p2, p0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    throw p0
.end method
