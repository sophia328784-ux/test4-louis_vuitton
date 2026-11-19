.class public Landroidx/camera/core/imagecapture/ImagePipeline;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:I

.field public static final g:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;


# instance fields
.field public final a:Landroidx/camera/core/impl/ImageCaptureConfig;

.field public final b:Landroidx/camera/core/impl/CaptureConfig;

.field public final c:Landroidx/camera/core/imagecapture/CaptureNode;

.field public final d:Landroidx/camera/core/imagecapture/ProcessingNode;

.field public final e:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    sput-object v0, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 703
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/imagecapture/ImagePipeline;-><init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;Landroidx/camera/core/CameraEffect;ZLandroidx/camera/core/imagecapture/PostviewSettings;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;Landroidx/camera/core/CameraEffect;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 702
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/imagecapture/ImagePipeline;-><init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;Landroidx/camera/core/CameraEffect;ZLandroidx/camera/core/imagecapture/PostviewSettings;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;Landroidx/camera/core/CameraEffect;ZLandroidx/camera/core/imagecapture/PostviewSettings;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iput-object v1, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->a:Landroidx/camera/core/impl/ImageCaptureConfig;

    sget-object v2, Landroidx/camera/core/impl/UseCaseConfig;->x:Landroidx/camera/core/impl/Config$Option;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;

    if-eqz v2, :cond_11

    new-instance v4, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    invoke-interface {v2, v1, v4}, Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;->a(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->e()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v2

    iput-object v2, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->b:Landroidx/camera/core/impl/CaptureConfig;

    new-instance v2, Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iput-object v3, v2, Landroidx/camera/core/imagecapture/CaptureNode;->g:Landroidx/camera/core/imagecapture/NoMetadataImageReader;

    iput-object v2, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->c:Landroidx/camera/core/imagecapture/CaptureNode;

    new-instance v4, Landroidx/camera/core/imagecapture/ProcessingNode;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    sget-object v6, Landroidx/camera/core/internal/IoConfig;->J:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, v6, v5}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p3

    invoke-direct {v4, v5, v6}, Landroidx/camera/core/imagecapture/ProcessingNode;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v4, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->d:Landroidx/camera/core/imagecapture/ProcessingNode;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->V()I

    move-result v5

    const/16 v15, 0x100

    const/16 v6, 0x20

    if-eqz v5, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v5, Landroidx/camera/core/impl/ImageCaptureConfig;->Q:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, v5, v3}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    sget-object v5, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, v5, v3}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x1005

    if-ne v7, v8, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v15

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->m()I

    move-result v8

    sget-object v5, Landroidx/camera/core/impl/ImageCaptureConfig;->S:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, v5, v3}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/camera/core/ImageReaderProxyProvider;

    move v1, v6

    new-instance v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    new-instance v13, Landroidx/camera/core/processing/Edge;

    invoke-direct {v13}, Landroidx/camera/core/processing/Edge;-><init>()V

    new-instance v14, Landroidx/camera/core/processing/Edge;

    invoke-direct {v14}, Landroidx/camera/core/processing/Edge;-><init>()V

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v14}, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;-><init>(Landroid/util/Size;ILjava/util/ArrayList;ZLandroidx/camera/core/ImageReaderProxyProvider;Landroidx/camera/core/imagecapture/PostviewSettings;Landroidx/camera/core/processing/Edge;Landroidx/camera/core/processing/Edge;)V

    iput-object v6, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->e:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    iget-object v0, v2, Landroidx/camera/core/imagecapture/CaptureNode;->f:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    const/4 v7, 0x1

    if-nez v0, :cond_4

    iget-object v0, v2, Landroidx/camera/core/imagecapture/CaptureNode;->b:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-nez v0, :cond_4

    move v0, v7

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const-string v8, "CaptureNode does not support recreation yet."

    invoke-static {v8, v0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-object v6, v2, Landroidx/camera/core/imagecapture/CaptureNode;->f:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    new-instance v0, Landroidx/camera/core/imagecapture/CaptureNode$1;

    invoke-direct {v0, v2}, Landroidx/camera/core/imagecapture/CaptureNode$1;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;)V

    iget-object v8, v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->h:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v7, :cond_5

    move v9, v7

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    const/4 v10, 0x2

    const/4 v11, 0x4

    iget-object v12, v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->f:Landroid/util/Size;

    iget-object v13, v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->j:Landroidx/camera/core/ImageReaderProxyProvider;

    iget v14, v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->g:I

    move-object/from16 p4, v3

    iget-boolean v3, v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->i:Z

    if-nez v3, :cond_7

    if-nez v13, :cond_7

    if-eqz v9, :cond_6

    new-instance v3, Landroidx/camera/core/MetadataImageReader;

    move/from16 p0, v7

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v7

    const/16 p1, 0x0

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v5, v15, v11}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    new-array v5, v10, [Landroidx/camera/core/impl/CameraCaptureCallback;

    aput-object v0, v5, p1

    iget-object v7, v3, Landroidx/camera/core/MetadataImageReader;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    aput-object v7, v5, p0

    invoke-static {v5}, Landroidx/camera/core/impl/CameraCaptureCallbacks;->a([Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v5

    new-instance v7, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v15

    move-object/from16 p2, v0

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v7, v15, v0, v1, v11}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    new-array v0, v10, [Landroidx/camera/core/impl/CameraCaptureCallback;

    aput-object p2, v0, p1

    iget-object v1, v7, Landroidx/camera/core/MetadataImageReader;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    aput-object v1, v0, p0

    invoke-static {v0}, Landroidx/camera/core/impl/CameraCaptureCallbacks;->a([Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v0

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :cond_6
    move-object/from16 p2, v0

    move/from16 p0, v7

    const/16 p1, 0x0

    new-instance v3, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v0, v1, v14, v11}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    new-array v0, v10, [Landroidx/camera/core/impl/CameraCaptureCallback;

    aput-object p2, v0, p1

    iget-object v1, v3, Landroidx/camera/core/MetadataImageReader;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    aput-object v1, v0, p0

    invoke-static {v0}, Landroidx/camera/core/impl/CameraCaptureCallbacks;->a([Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v0

    move-object/from16 v1, p4

    move-object v7, v1

    :goto_4
    new-instance v5, Landroidx/camera/core/imagecapture/a;

    move/from16 v15, p1

    invoke-direct {v5, v2, v15}, Landroidx/camera/core/imagecapture/a;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;I)V

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    goto :goto_6

    :cond_7
    move-object/from16 p2, v0

    move/from16 p0, v7

    new-instance v3, Landroidx/camera/core/imagecapture/NoMetadataImageReader;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroidx/camera/core/ImageReaderProxyProvider;->b()Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-static {v0, v1, v14, v11}, Landroidx/camera/core/ImageReaderProxys;->a(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v0

    :goto_5
    invoke-direct {v3, v0}, Landroidx/camera/core/imagecapture/NoMetadataImageReader;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v3, v2, Landroidx/camera/core/imagecapture/CaptureNode;->g:Landroidx/camera/core/imagecapture/NoMetadataImageReader;

    new-instance v5, Landroidx/camera/core/imagecapture/a;

    move/from16 v0, p0

    invoke-direct {v5, v2, v0}, Landroidx/camera/core/imagecapture/a;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;I)V

    move-object/from16 v0, p2

    move-object/from16 v7, p4

    move-object v1, v3

    move-object v3, v7

    :goto_6
    iput-object v0, v6, Landroidx/camera/core/imagecapture/CaptureNode$In;->a:Landroidx/camera/core/impl/CameraCaptureCallback;

    if-eqz v9, :cond_9

    if-eqz v3, :cond_9

    iput-object v3, v6, Landroidx/camera/core/imagecapture/CaptureNode$In;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    :cond_9
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v6, Landroidx/camera/core/imagecapture/CaptureNode$In;->c:Landroidx/camera/core/impl/ImmediateSurface;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    const-string v15, "The surface is already set."

    invoke-static {v15, v3}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    new-instance v3, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-direct {v3, v0, v12, v14}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v3, v6, Landroidx/camera/core/imagecapture/CaptureNode$In;->c:Landroidx/camera/core/impl/ImmediateSurface;

    new-instance v0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v0, v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v0, v2, Landroidx/camera/core/imagecapture/CaptureNode;->b:Landroidx/camera/core/SafeCloseImageReaderProxy;

    new-instance v0, Landroidx/camera/core/imagecapture/b;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroidx/camera/core/imagecapture/b;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroidx/camera/core/impl/ImageReaderProxy;->e(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    iget-object v0, v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->k:Landroidx/camera/core/imagecapture/PostviewSettings;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/PostviewSettings;->c()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/PostviewSettings;->c()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/PostviewSettings;->b()I

    move-result v15

    if-eqz v13, :cond_b

    invoke-interface {v13}, Landroidx/camera/core/ImageReaderProxyProvider;->b()Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v1

    goto :goto_8

    :cond_b
    invoke-static {v1, v3, v15, v11}, Landroidx/camera/core/ImageReaderProxys;->a(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v1

    :goto_8
    new-instance v3, Landroidx/camera/core/imagecapture/b;

    const/4 v15, 0x0

    invoke-direct {v3, v2, v15}, Landroidx/camera/core/imagecapture/b;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v11

    invoke-interface {v1, v3, v11}, Landroidx/camera/core/impl/ImageReaderProxy;->e(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    new-instance v3, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v3, v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v3, v2, Landroidx/camera/core/imagecapture/CaptureNode;->d:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/PostviewSettings;->c()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/PostviewSettings;->b()I

    move-result v0

    new-instance v11, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-direct {v11, v1, v3, v0}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v11, v6, Landroidx/camera/core/imagecapture/CaptureNode$In;->e:Landroidx/camera/core/impl/ImmediateSurface;

    :cond_c
    if-eqz v9, :cond_e

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroidx/camera/core/MetadataImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, v6, Landroidx/camera/core/imagecapture/CaptureNode$In;->d:Landroidx/camera/core/impl/ImmediateSurface;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    const-string v3, "The secondary surface is already set."

    invoke-static {v3, v1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    new-instance v1, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-direct {v1, v0, v12, v14}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v1, v6, Landroidx/camera/core/imagecapture/CaptureNode$In;->d:Landroidx/camera/core/impl/ImmediateSurface;

    new-instance v0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v0, v7}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v0, v2, Landroidx/camera/core/imagecapture/CaptureNode;->c:Landroidx/camera/core/SafeCloseImageReaderProxy;

    new-instance v0, Landroidx/camera/core/imagecapture/b;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroidx/camera/core/imagecapture/b;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroidx/camera/core/MetadataImageReader;->e(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    :cond_e
    iget-object v0, v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->l:Landroidx/camera/core/processing/Edge;

    iput-object v5, v0, Landroidx/camera/core/processing/Edge;->a:Landroidx/core/util/Consumer;

    new-instance v0, Landroidx/camera/core/imagecapture/a;

    invoke-direct {v0, v2, v10}, Landroidx/camera/core/imagecapture/a;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;I)V

    iget-object v1, v6, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->m:Landroidx/camera/core/processing/Edge;

    iput-object v0, v1, Landroidx/camera/core/processing/Edge;->a:Landroidx/core/util/Consumer;

    new-instance v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    new-instance v1, Landroidx/camera/core/processing/Edge;

    invoke-direct {v1}, Landroidx/camera/core/processing/Edge;-><init>()V

    new-instance v3, Landroidx/camera/core/processing/Edge;

    invoke-direct {v3}, Landroidx/camera/core/processing/Edge;-><init>()V

    invoke-direct {v0, v1, v3, v14, v8}, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;-><init>(Landroidx/camera/core/processing/Edge;Landroidx/camera/core/processing/Edge;ILjava/util/List;)V

    iput-object v0, v2, Landroidx/camera/core/imagecapture/CaptureNode;->e:Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->d:Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    new-instance v0, Landroidx/camera/core/imagecapture/d;

    const/4 v15, 0x0

    invoke-direct {v0, v4, v15}, Landroidx/camera/core/imagecapture/d;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;I)V

    iput-object v0, v1, Landroidx/camera/core/processing/Edge;->a:Landroidx/core/util/Consumer;

    new-instance v0, Landroidx/camera/core/imagecapture/d;

    const/4 v1, 0x1

    invoke-direct {v0, v4, v1}, Landroidx/camera/core/imagecapture/d;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;I)V

    iput-object v0, v3, Landroidx/camera/core/processing/Edge;->a:Landroidx/core/util/Consumer;

    new-instance v0, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->e:Landroidx/camera/core/processing/Operation;

    new-instance v0, Landroidx/camera/core/imagecapture/Image2JpegBytes;

    iget-object v1, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->m:Landroidx/camera/core/impl/Quirks;

    invoke-direct {v0, v1}, Landroidx/camera/core/imagecapture/Image2JpegBytes;-><init>(Landroidx/camera/core/impl/Quirks;)V

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->f:Landroidx/camera/core/processing/Operation;

    new-instance v0, Landroidx/camera/core/imagecapture/JpegBytes2CroppedBitmap;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->i:Landroidx/camera/core/processing/Operation;

    new-instance v0, Landroidx/camera/core/imagecapture/Bitmap2JpegBytes;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/Bitmap2JpegBytes;-><init>()V

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->g:Landroidx/camera/core/imagecapture/Bitmap2JpegBytes;

    new-instance v0, Landroidx/camera/core/imagecapture/JpegBytes2Disk;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/JpegBytes2Disk;-><init>()V

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->h:Landroidx/camera/core/imagecapture/JpegBytes2Disk;

    new-instance v0, Landroidx/camera/core/imagecapture/JpegImage2Result;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/JpegImage2Result;-><init>()V

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->j:Landroidx/camera/core/imagecapture/JpegImage2Result;

    new-instance v0, Landroidx/camera/core/imagecapture/Image2Bitmap;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/Image2Bitmap;-><init>()V

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->l:Landroidx/camera/core/imagecapture/Image2Bitmap;

    const/16 v0, 0x23

    if-eq v14, v0, :cond_10

    iget-boolean v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->n:Z

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    return-void

    :cond_10
    :goto_a
    new-instance v0, Landroidx/camera/core/imagecapture/JpegBytes2Image;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/JpegBytes2Image;-><init>()V

    iput-object v0, v4, Landroidx/camera/core/imagecapture/ProcessingNode;->k:Landroidx/camera/core/imagecapture/JpegBytes2Image;

    return-void

    :cond_11
    move-object/from16 p4, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/camera/core/internal/TargetConfig;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Implementation is missing option unpacker for "

    invoke-static {v0, v1}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    throw p4
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->c:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v1, v0, Landroidx/camera/core/imagecapture/CaptureNode;->f:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroidx/camera/core/imagecapture/CaptureNode;->b:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/camera/core/imagecapture/CaptureNode;->c:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/CaptureNode;->d:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v4, v1, Landroidx/camera/core/imagecapture/CaptureNode$In;->c:Landroidx/camera/core/impl/ImmediateSurface;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroidx/camera/core/impl/DeferrableSurface;->a()V

    iget-object v4, v1, Landroidx/camera/core/imagecapture/CaptureNode$In;->c:Landroidx/camera/core/impl/ImmediateSurface;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Landroidx/camera/core/impl/DeferrableSurface;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    new-instance v5, Ldj;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Ldj;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, v1, Landroidx/camera/core/imagecapture/CaptureNode$In;->e:Landroidx/camera/core/impl/ImmediateSurface;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->a()V

    iget-object v2, v1, Landroidx/camera/core/imagecapture/CaptureNode$In;->e:Landroidx/camera/core/impl/ImmediateSurface;

    iget-object v2, v2, Landroidx/camera/core/impl/DeferrableSurface;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v5, Ldj;

    invoke-direct {v5, v0, v4}, Ldj;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iget-object v0, v1, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, v1, Landroidx/camera/core/imagecapture/CaptureNode$In;->d:Landroidx/camera/core/impl/ImmediateSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->a()V

    iget-object v0, v1, Landroidx/camera/core/imagecapture/CaptureNode$In;->d:Landroidx/camera/core/impl/ImmediateSurface;

    iget-object v0, v0, Landroidx/camera/core/impl/DeferrableSurface;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Ldj;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2}, Ldj;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    iget-object p0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->d:Landroidx/camera/core/imagecapture/ProcessingNode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->a:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {v0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->m(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->e:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->c:Landroidx/camera/core/impl/ImmediateSurface;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/camera/core/DynamicRange;->d:Landroidx/camera/core/DynamicRange;

    invoke-virtual {p1, v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->f(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->d:Landroidx/camera/core/impl/ImmediateSurface;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->f(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)V

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->e:Landroidx/camera/core/impl/ImmediateSurface;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/SessionConfig$Builder;->t(Landroidx/camera/core/impl/ImmediateSurface;)V

    :cond_1
    return-object p1
.end method
