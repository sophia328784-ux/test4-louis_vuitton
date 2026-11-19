.class public final Landroidx/camera/core/ImageCapture;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$Defaults;,
        Landroidx/camera/core/ImageCapture$ScreenFlash;,
        Landroidx/camera/core/ImageCapture$Builder;,
        Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;,
        Landroidx/camera/core/ImageCapture$OnImageSavedCallback;,
        Landroidx/camera/core/ImageCapture$OutputFileOptions;,
        Landroidx/camera/core/ImageCapture$Metadata;,
        Landroidx/camera/core/ImageCapture$OutputFileResults;,
        Landroidx/camera/core/ImageCapture$ScreenFlashListener;,
        Landroidx/camera/core/ImageCapture$OutputFormat;,
        Landroidx/camera/core/ImageCapture$FlashType;,
        Landroidx/camera/core/ImageCapture$FlashMode;,
        Landroidx/camera/core/ImageCapture$CaptureMode;,
        Landroidx/camera/core/ImageCapture$ImageCaptureError;
    }
.end annotation


# static fields
.field public static final B:Landroidx/camera/core/ImageCapture$Defaults;


# instance fields
.field public final A:Landroidx/camera/core/imagecapture/ImageCaptureControl;

.field public final q:I

.field public final r:Ljava/util/concurrent/atomic/AtomicReference;

.field public final s:I

.field public final t:I

.field public u:Landroid/util/Rational;

.field public final v:Landroidx/camera/core/internal/ScreenFlashWrapper;

.field public w:Landroidx/camera/core/impl/SessionConfig$Builder;

.field public x:Landroidx/camera/core/imagecapture/ImagePipeline;

.field public y:Landroidx/camera/core/imagecapture/TakePictureManager;

.field public z:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/ImageCapture$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageCapture;->B:Landroidx/camera/core/ImageCapture$Defaults;

    new-instance v0, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->r:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/camera/core/ImageCapture;->t:I

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->u:Landroid/util/Rational;

    new-instance p1, Landroidx/camera/core/ImageCapture$1;

    invoke-direct {p1, p0}, Landroidx/camera/core/ImageCapture$1;-><init>(Landroidx/camera/core/ImageCapture;)V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->A:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    iget-object p1, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->N:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->b(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->a(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroidx/camera/core/ImageCapture;->q:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Landroidx/camera/core/ImageCapture;->q:I

    :goto_0
    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->U:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroidx/camera/core/ImageCapture;->s:I

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->W:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v1, v0}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageCapture$ScreenFlash;

    sget-object v1, Landroidx/camera/core/internal/ScreenFlashWrapper;->e:Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/camera/core/internal/ScreenFlashWrapper;

    invoke-direct {v1, p1, v0}, Landroidx/camera/core/internal/ScreenFlashWrapper;-><init>(Landroidx/camera/core/ImageCapture$ScreenFlash;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->v:Landroidx/camera/core/internal/ScreenFlashWrapper;

    return-void
.end method

.method public static H(ILjava/util/List;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static I(Ljava/util/Map;I)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final E(Z)V
    .locals 2

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->z:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->z:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->x:Landroidx/camera/core/imagecapture/ImagePipeline;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ImagePipeline;->a()V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->x:Landroidx/camera/core/imagecapture/ImagePipeline;

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->y:Landroidx/camera/core/imagecapture/TakePictureManager;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/camera/core/imagecapture/TakePictureManager;->a()V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->y:Landroidx/camera/core/imagecapture/TakePictureManager;

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->d()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraControlInternal;->h()V

    return-void
.end method

.method public final F(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1005

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    const-string v5, "createPipeline(cameraId: %s, streamSpec: %s)"

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/lit8 v13, v5, 0x1

    iget-object v5, v0, Landroidx/camera/core/ImageCapture;->x:Landroidx/camera/core/imagecapture/ImagePipeline;

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    invoke-static {v8, v13}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-object v5, v0, Landroidx/camera/core/ImageCapture;->x:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v5}, Landroidx/camera/core/imagecapture/ImagePipeline;->a()V

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v5

    invoke-interface {v5}, Landroidx/camera/core/impl/CameraInternal;->b()Landroidx/camera/core/CameraInfo;

    move-result-object v5

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    instance-of v12, v5, Landroidx/camera/core/impl/AdapterCameraInfo;

    if-nez v12, :cond_2

    :cond_1
    :goto_0
    move-object v15, v8

    goto :goto_1

    :cond_2
    move-object v12, v5

    check-cast v12, Landroidx/camera/core/impl/AdapterCameraInfo;

    iget-object v12, v12, Landroidx/camera/core/impl/AdapterCameraInfo;->d:Landroidx/camera/core/impl/CameraConfig;

    invoke-interface {v12}, Landroidx/camera/core/impl/CameraConfig;->i()Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object v12

    sget-object v14, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-interface {v12, v14, v6}, Landroidx/camera/core/impl/UseCaseConfigFactory;->a(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object v12

    if-eqz v12, :cond_1

    sget-object v14, Landroidx/camera/core/impl/ImageOutputConfig;->r:Landroidx/camera/core/impl/Config$Option;

    check-cast v12, Landroidx/camera/core/impl/OptionsBundle;

    iget-object v15, v12, Landroidx/camera/core/impl/OptionsBundle;->M:Ljava/util/TreeMap;

    invoke-virtual {v15, v14}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_0

    :cond_3
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v14}, Landroidx/camera/core/impl/OptionsBundle;->a(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v3, :cond_4

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    const/4 v12, 0x2

    if-eqz v15, :cond_6

    goto :goto_4

    :cond_6
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_7

    move-object v14, v5

    check-cast v14, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v14}, Landroidx/camera/core/impl/CameraInfoInternal;->y()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_2

    :cond_7
    move v14, v1

    :goto_2
    if-eqz v14, :cond_8

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v5, :cond_9

    check-cast v5, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v5}, Landroidx/camera/core/impl/CameraInfoInternal;->l()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_9
    move v5, v1

    goto :goto_3

    :cond_a
    invoke-interface {v5}, Landroidx/camera/core/impl/CameraInfoInternal;->y()Ljava/util/Set;

    move-result-object v5

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    iget-object v5, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    sget-object v9, Landroidx/camera/core/impl/ImageCaptureConfig;->R:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v5, v9, v2}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v15, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "The specified output format ("

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v14, v9, v2}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is not supported by current configuration. Supported output formats: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    iget-object v2, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    sget-object v5, Landroidx/camera/core/impl/ImageCaptureConfig;->Y:Landroidx/camera/core/impl/Config$Option;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v9}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/ImageCaptureConfig;->m()I

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->g()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraConfig;->x()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v2

    if-nez v2, :cond_c

    :goto_5
    move-object v2, v8

    goto/16 :goto_7

    :cond_c
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v9, 0x23

    invoke-static {v2, v9}, Landroidx/camera/core/ImageCapture;->I(Ljava/util/Map;I)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/16 v9, 0x100

    invoke-static {v2, v9}, Landroidx/camera/core/ImageCapture;->I(Ljava/util/Map;I)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {v2, v3}, Landroidx/camera/core/ImageCapture;->I(Ljava/util/Map;I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->g()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraConfig;->D()Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;

    move-result-object v3

    invoke-interface {v3, v5}, Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;->a(Ljava/util/ArrayList;)I

    move-result v3

    goto :goto_6

    :cond_10
    move v3, v1

    :goto_6
    if-nez v3, :cond_11

    goto :goto_5

    :cond_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    iget-object v2, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    sget-object v4, Landroidx/camera/core/impl/ImageCaptureConfig;->X:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v2, v4, v8}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/camera/core/resolutionselector/ResolutionSelector;

    if-eqz v14, :cond_13

    new-instance v2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v2, v6}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    invoke-static {v15, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/core/impl/CameraInfoInternal;->f()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v2

    new-instance v5, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->l()I

    move-result v17

    invoke-interface {v2}, Landroidx/camera/core/CameraInfo;->d()I

    move-result v19

    invoke-interface {v2}, Landroidx/camera/core/CameraInfo;->g()I

    move-result v20

    const/16 v16, 0x0

    move-object/from16 v18, v5

    invoke-static/range {v14 .. v20}, Landroidx/camera/core/internal/SupportedOutputSizesSorter;->e(Landroidx/camera/core/resolutionselector/ResolutionSelector;Ljava/util/List;Landroid/util/Size;ILandroid/util/Rational;II)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-static {v2, v3}, Landroidx/camera/core/imagecapture/PostviewSettings;->a(Landroid/util/Size;I)Landroidx/camera/core/imagecapture/PostviewSettings;

    move-result-object v2

    goto :goto_7

    :cond_12
    const-string v0, "The postview ResolutionSelector cannot select a valid size for the postview."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v8

    :cond_13
    new-instance v2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    invoke-static {v15, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-static {v2, v3}, Landroidx/camera/core/imagecapture/PostviewSettings;->a(Landroid/util/Size;I)Landroidx/camera/core/imagecapture/PostviewSettings;

    move-result-object v2

    :goto_7
    move-object v14, v2

    goto :goto_8

    :cond_14
    move-object v14, v8

    :goto_8
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v2

    if-eqz v2, :cond_15

    :try_start_0
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInfoInternal;->h()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v3, :cond_15

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    :catch_0
    :cond_15
    move-object v11, v8

    new-instance v8, Landroidx/camera/core/imagecapture/ImagePipeline;

    move v2, v12

    const/4 v12, 0x0

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v14}, Landroidx/camera/core/imagecapture/ImagePipeline;-><init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;Landroidx/camera/core/CameraEffect;ZLandroidx/camera/core/imagecapture/PostviewSettings;)V

    iput-object v8, v0, Landroidx/camera/core/ImageCapture;->x:Landroidx/camera/core/imagecapture/ImagePipeline;

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->y:Landroidx/camera/core/imagecapture/TakePictureManager;

    if-nez v3, :cond_16

    iget-object v3, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->n()Landroidx/camera/core/imagecapture/TakePictureManager$Provider;

    move-result-object v3

    iget-object v4, v0, Landroidx/camera/core/ImageCapture;->A:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    invoke-interface {v3, v4}, Landroidx/camera/core/imagecapture/TakePictureManager$Provider;->a(Landroidx/camera/core/imagecapture/ImageCaptureControl;)Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    move-result-object v3

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->y:Landroidx/camera/core/imagecapture/TakePictureManager;

    :cond_16
    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->y:Landroidx/camera/core/imagecapture/TakePictureManager;

    iget-object v4, v0, Landroidx/camera/core/ImageCapture;->x:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-interface {v3, v4}, Landroidx/camera/core/imagecapture/TakePictureManager;->c(Landroidx/camera/core/imagecapture/ImagePipeline;)V

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->x:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/imagecapture/ImagePipeline;->b(Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v3

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SessionConfig$Builder;->v(I)V

    iget v4, v0, Landroidx/camera/core/ImageCapture;->q:I

    if-ne v4, v2, :cond_17

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->h()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->d()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v2

    invoke-interface {v2, v3}, Landroidx/camera/core/impl/CameraControlInternal;->i(Landroidx/camera/core/impl/SessionConfig$Builder;)V

    :cond_17
    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    :cond_18
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->z:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    :cond_19
    new-instance v2, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    new-instance v4, Lf20;

    invoke-direct {v4, v0, v1}, Lf20;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v4}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->z:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->p(Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;)V

    return-object v3
.end method

.method public final G()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->r:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/camera/core/ImageCapture;->t:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast p0, Landroidx/camera/core/impl/ImageCaptureConfig;

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->O:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final J(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;)V
    .locals 15

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lxo;

    const/4 v6, 0x4

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lxo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->G()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->v:Landroidx/camera/core/internal/ScreenFlashWrapper;

    iget-object v0, v0, Landroidx/camera/core/internal/ScreenFlashWrapper;->a:Landroidx/camera/core/ImageCapture$ScreenFlash;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "A ScreenFlash instance is required for FLASH_MODE_SCREEN but was not found. If value from PreviewView.getScreenFlash() is set to ImageCapture.setScreenFlash(), ensure PreviewView.setScreenFlashWindow() is invoked first."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-boolean v3, p0, Landroidx/camera/core/UseCase;->a:Z

    if-nez v3, :cond_3

    goto/16 :goto_a

    :cond_3
    iget-object v3, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v3}, Landroidx/camera/core/impl/ImageInputConfig;->V()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    move v8, v4

    goto :goto_1

    :cond_4
    move v8, v5

    :goto_1
    if-nez v8, :cond_f

    iget-object v10, p0, Landroidx/camera/core/ImageCapture;->y:Landroidx/camera/core/imagecapture/TakePictureManager;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v1

    :goto_2
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x2

    if-eqz v3, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->u:Landroid/util/Rational;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v9

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_a

    invoke-virtual {v3}, Landroid/util/Rational;->isNaN()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3, v5}, Landroidx/camera/core/UseCase;->h(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result v3

    new-instance v9, Landroid/util/Rational;

    iget-object v12, p0, Landroidx/camera/core/ImageCapture;->u:Landroid/util/Rational;

    invoke-virtual {v12}, Landroid/util/Rational;->getDenominator()I

    move-result v12

    iget-object v13, p0, Landroidx/camera/core/ImageCapture;->u:Landroid/util/Rational;

    invoke-virtual {v13}, Landroid/util/Rational;->getNumerator()I

    move-result v13

    invoke-direct {v9, v12, v13}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v3}, Landroidx/camera/core/impl/utils/TransformUtils;->d(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v9, p0, Landroidx/camera/core/ImageCapture;->u:Landroid/util/Rational;

    :goto_3
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/util/Rational;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v11

    if-lez v3, :cond_9

    invoke-virtual {v9}, Landroid/util/Rational;->isNaN()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v6, v1

    int-to-float v11, v3

    div-float v12, v6, v11

    invoke-virtual {v9}, Landroid/util/Rational;->getNumerator()I

    move-result v13

    invoke-virtual {v9}, Landroid/util/Rational;->getDenominator()I

    move-result v14

    invoke-virtual {v9}, Landroid/util/Rational;->floatValue()F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_8

    int-to-float v9, v13

    div-float/2addr v6, v9

    int-to-float v9, v14

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v3, v6

    div-int/2addr v3, v7

    move v9, v6

    move v6, v1

    move v1, v5

    goto :goto_4

    :cond_8
    int-to-float v6, v14

    div-float/2addr v11, v6

    int-to-float v6, v13

    mul-float/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v1, v6

    div-int/2addr v1, v7

    move v9, v3

    move v3, v5

    :goto_4
    new-instance v11, Landroid/graphics/Rect;

    add-int/2addr v6, v1

    add-int/2addr v9, v3

    invoke-direct {v11, v1, v3, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v11

    goto :goto_5

    :cond_9
    const-string v3, "ImageUtil"

    const/4 v6, 0x5

    invoke-static {v6, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    goto :goto_6

    :cond_a
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v3, v5, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_6
    iget-object v1, p0, Landroidx/camera/core/UseCase;->l:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v5}, Landroidx/camera/core/UseCase;->h(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result v5

    iget-object v0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    sget-object v6, Landroidx/camera/core/impl/ImageCaptureConfig;->V:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v6}, Landroidx/camera/core/impl/ReadableConfig;->b(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v0, v6}, Landroidx/camera/core/impl/ReadableConfig;->a(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_7
    move v6, v0

    goto :goto_9

    :cond_b
    iget v0, p0, Landroidx/camera/core/ImageCapture;->q:I

    if-eqz v0, :cond_e

    if-eq v0, v4, :cond_d

    if-ne v0, v7, :cond_c

    goto :goto_8

    :cond_c
    const-string p0, "CaptureMode "

    const-string v1, " is invalid"

    invoke-static {v0, p0, v1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_8
    const/16 v0, 0x5f

    goto :goto_7

    :cond_e
    const/16 v0, 0x64

    goto :goto_7

    :goto_9
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->w:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->n()Ljava/util/List;

    move-result-object v9

    iget v7, p0, Landroidx/camera/core/ImageCapture;->q:I

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object v4, v1

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v9}, Landroidx/camera/core/imagecapture/TakePictureRequest;->o(Ljava/util/concurrent/Executor;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroid/graphics/Rect;Landroid/graphics/Matrix;IIIZLjava/util/List;)Landroidx/camera/core/imagecapture/TakePictureRequest;

    move-result-object p0

    invoke-interface {v10, p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->b(Landroidx/camera/core/imagecapture/TakePictureRequest;)V

    return-void

    :cond_f
    const-string p0, "Simultaneous capture RAW and JPEG needs two output file options"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_10
    :goto_a
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not bound to a valid Camera ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0, v1}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->r:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->d()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->G()I

    move-result p0

    invoke-interface {v1, p0}, Landroidx/camera/core/impl/CameraControlInternal;->c(I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 3

    sget-object v0, Landroidx/camera/core/ImageCapture;->B:Landroidx/camera/core/ImageCapture$Defaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/core/ImageCapture$Defaults;->a:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-interface {v0}, Landroidx/camera/core/impl/UseCaseConfig;->S()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v1

    iget v2, p0, Landroidx/camera/core/ImageCapture;->q:I

    invoke-interface {p2, v1, v2}, Landroidx/camera/core/impl/UseCaseConfigFactory;->a(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-static {p2, v0}, Landroidx/camera/core/impl/Config;->U(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/core/ImageCapture;->m(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageCapture$Builder;

    new-instance p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    iget-object p0, p0, Landroidx/camera/core/ImageCapture$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {p0}, Landroidx/camera/core/impl/OptionsBundle;->c0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/camera/core/impl/ImageCaptureConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object p1
.end method

.method public final k()Ljava/util/HashSet;
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final m(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 0

    new-instance p0, Landroidx/camera/core/ImageCapture$Builder;

    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->e0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-object p0
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    const-string v1, "Attached camera cannot be null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->G()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/core/Camera;->b()Landroidx/camera/core/CameraInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Not a front camera despite setting FLASH_MODE_SCREEN in ImageCapture"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final t()V
    .locals 2

    const-string v0, "ImageCapture"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->K()V

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->v:Landroidx/camera/core/internal/ScreenFlashWrapper;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->d()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/CameraControlInternal;->k(Landroidx/camera/core/ImageCapture$ScreenFlash;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->g()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImageCapture:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 16

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p0

    iget-object v6, v5, Landroidx/camera/core/UseCase;->g:Ljava/util/HashSet;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v7

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/featuregroup/GroupableFeature;

    instance-of v10, v9, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;

    if-eqz v10, :cond_0

    check-cast v9, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;

    iget v8, v9, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->c:I

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v6

    sget-object v9, Landroidx/camera/core/impl/ImageCaptureConfig;->R:Landroidx/camera/core/impl/Config$Option;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v9, v8}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/impl/CameraInfoInternal;->j()Landroidx/camera/core/impl/Quirks;

    move-result-object v6

    const-class v8, Landroidx/camera/core/internal/compat/quirk/SoftwareJpegEncodingPreferredQuirk;

    invoke-virtual {v6, v8}, Landroidx/camera/core/impl/Quirks;->a(Ljava/lang/Class;)Z

    move-result v6

    const/4 v8, 0x5

    const-string v9, "ImageCapture"

    if-eqz v6, :cond_4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v10

    sget-object v11, Landroidx/camera/core/impl/ImageCaptureConfig;->T:Landroidx/camera/core/impl/Config$Option;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v11, v12}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v8, v9}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    invoke-static {v6, v9}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v6

    invoke-interface {v6, v11, v12}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v11, Landroidx/camera/core/impl/ImageCaptureConfig;->T:Landroidx/camera/core/impl/Config$Option;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v11, v12}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v10, :cond_8

    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v10

    invoke-interface {v10}, Landroidx/camera/core/impl/CameraInternal;->g()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v10

    invoke-interface {v10}, Landroidx/camera/core/impl/CameraConfig;->x()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-static {v8, v9}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move v10, v7

    goto :goto_3

    :cond_6
    :goto_2
    move v10, v13

    :goto_3
    sget-object v15, Landroidx/camera/core/impl/ImageCaptureConfig;->Q:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v6, v15, v14}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v15, v3, :cond_7

    invoke-static {v8, v9}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move v10, v7

    :cond_7
    if-nez v10, :cond_9

    invoke-static {v8, v9}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {v6, v11, v12}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    move v10, v7

    :cond_9
    :goto_4
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v6

    sget-object v8, Landroidx/camera/core/impl/ImageCaptureConfig;->Q:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v6, v8, v14}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->g()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraConfig;->x()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_c

    :cond_b
    :goto_5
    move v7, v13

    :cond_c
    const-string v0, "Cannot set non-JPEG buffer format with Extensions enabled."

    invoke-static {v7, v0}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v2, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    if-eqz v10, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v5

    sget-object v6, Landroidx/camera/core/impl/ImageCaptureConfig;->R:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v5, v6, v14}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, v2, v0}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_f
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v5

    invoke-interface {v5, v6, v14}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, v2, v0}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->i:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, v4}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_10
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    invoke-interface {v0, v6, v14}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    const/16 v2, 0x1005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->j:Landroidx/camera/core/impl/Config$Option;

    sget-object v2, Landroidx/camera/core/DynamicRange;->c:Landroidx/camera/core/DynamicRange;

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    if-eqz v10, :cond_12

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_7

    :cond_12
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v5, Landroidx/camera/core/impl/ImageOutputConfig;->r:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v5, v14}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_13

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, v4}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_7

    :cond_13
    invoke-static {v3, v0}, Landroidx/camera/core/ImageCapture;->H(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, v4}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_7

    :cond_14
    invoke-static {v1, v0}, Landroidx/camera/core/ImageCapture;->H(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_15
    :goto_7
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->d()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    return-object v0
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->v:Landroidx/camera/core/internal/ScreenFlashWrapper;

    invoke-virtual {v0}, Landroidx/camera/core/internal/ScreenFlashWrapper;->c()V

    invoke-virtual {v0}, Landroidx/camera/core/internal/ScreenFlashWrapper;->b()V

    iget-object p0, p0, Landroidx/camera/core/ImageCapture;->y:Landroidx/camera/core/imagecapture/TakePictureManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->a()V

    :cond_0
    return-void
.end method

.method public final x(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->w:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->w:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    iget-object p0, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec;->i()Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/StreamSpec$Builder;->d(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec$Builder;->a()Landroidx/camera/core/impl/StreamSpec;

    move-result-object p0

    return-object p0
.end method

.method public final y(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/StreamSpec;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p2, 0x3

    const-string v0, "ImageCapture"

    invoke-static {p2, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->e()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-virtual {p0, p2, v0, p1}, Landroidx/camera/core/ImageCapture;->F(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/ImageCapture;->w:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->p()V

    return-object p1
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->v:Landroidx/camera/core/internal/ScreenFlashWrapper;

    invoke-virtual {v0}, Landroidx/camera/core/internal/ScreenFlashWrapper;->c()V

    invoke-virtual {v0}, Landroidx/camera/core/internal/ScreenFlashWrapper;->b()V

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->y:Landroidx/camera/core/imagecapture/TakePictureManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/imagecapture/TakePictureManager;->a()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/camera/core/ImageCapture;->E(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->d()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/CameraControlInternal;->k(Landroidx/camera/core/ImageCapture$ScreenFlash;)V

    return-void
.end method
