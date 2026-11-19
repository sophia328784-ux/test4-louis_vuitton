.class public Landroidx/camera/core/streamsharing/StreamSharing;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/streamsharing/StreamSharing$Control;
    }
.end annotation


# instance fields
.field public A:Landroidx/camera/core/impl/SessionConfig$Builder;

.field public B:Landroidx/camera/core/impl/SessionConfig$Builder;

.field public C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

.field public final q:Landroidx/camera/core/streamsharing/StreamSharingConfig;

.field public final r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

.field public final s:Landroidx/camera/core/CompositionSettings;

.field public final t:Landroidx/camera/core/CompositionSettings;

.field public u:Landroidx/camera/core/processing/SurfaceProcessorNode;

.field public v:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

.field public w:Landroidx/camera/core/processing/SurfaceEdge;

.field public x:Landroidx/camera/core/processing/SurfaceEdge;

.field public y:Landroidx/camera/core/processing/SurfaceEdge;

.field public z:Landroidx/camera/core/processing/SurfaceEdge;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Ljava/util/Set;Landroidx/camera/core/impl/UseCaseConfigFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/CompositionSettings;",
            "Landroidx/camera/core/CompositionSettings;",
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")V"
        }
    .end annotation

    invoke-static {p5}, Landroidx/camera/core/streamsharing/StreamSharing;->K(Ljava/util/Set;)Landroidx/camera/core/streamsharing/StreamSharingConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    invoke-static {p5}, Landroidx/camera/core/streamsharing/StreamSharing;->K(Ljava/util/Set;)Landroidx/camera/core/streamsharing/StreamSharingConfig;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->q:Landroidx/camera/core/streamsharing/StreamSharingConfig;

    iput-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing;->s:Landroidx/camera/core/CompositionSettings;

    iput-object p4, p0, Landroidx/camera/core/streamsharing/StreamSharing;->t:Landroidx/camera/core/CompositionSettings;

    move-object p3, p2

    move-object p2, p1

    new-instance p1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    move-object p4, p5

    move-object p5, p6

    new-instance p6, Landroidx/camera/core/streamsharing/a;

    invoke-direct {p6, p0}, Landroidx/camera/core/streamsharing/a;-><init>(Landroidx/camera/core/streamsharing/StreamSharing;)V

    invoke-direct/range {p1 .. p6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Ljava/util/Set;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/streamsharing/a;)V

    iput-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/UseCase;

    iget-object p1, p1, Landroidx/camera/core/UseCase;->g:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Landroidx/camera/core/UseCase;->g:Ljava/util/HashSet;

    return-void
.end method

.method public static I(Landroidx/camera/core/UseCase;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;

    if-eqz v1, :cond_1

    check-cast p0, Landroidx/camera/core/streamsharing/StreamSharing;

    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    iget-object v1, v1, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->S()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->S()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static K(Ljava/util/Set;)Landroidx/camera/core/streamsharing/StreamSharingConfig;
    .locals 5

    new-instance v0, Landroidx/camera/core/streamsharing/StreamSharingBuilder;

    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->d0()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/streamsharing/StreamSharingBuilder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/UseCase;

    iget-object v3, v2, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->E:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v3, v4}, Landroidx/camera/core/impl/ReadableConfig;->b(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->S()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/camera/core/streamsharing/StreamSharingConfig;->N:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v1, p0, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    sget-object p0, Landroidx/camera/core/impl/ImageOutputConfig;->n:Landroidx/camera/core/impl/Config$Option;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    sget-object p0, Landroidx/camera/core/impl/UseCaseConfig;->I:Landroidx/camera/core/impl/Config$Option;

    sget-object v0, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

    invoke-virtual {v1, p0, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    new-instance p0, Landroidx/camera/core/streamsharing/StreamSharingConfig;

    invoke-static {v1}, Landroidx/camera/core/impl/OptionsBundle;->c0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/streamsharing/StreamSharingConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object p0
.end method


# virtual methods
.method public final E()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->w:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->c()V

    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->w:Landroidx/camera/core/processing/SurfaceEdge;

    :cond_1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->x:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->c()V

    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->x:Landroidx/camera/core/processing/SurfaceEdge;

    :cond_2
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->y:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->c()V

    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->y:Landroidx/camera/core/processing/SurfaceEdge;

    :cond_3
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->z:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->c()V

    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->z:Landroidx/camera/core/processing/SurfaceEdge;

    :cond_4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->u:Landroidx/camera/core/processing/SurfaceProcessorNode;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->b()V

    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->u:Landroidx/camera/core/processing/SurfaceProcessorNode;

    :cond_5
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->v:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    if-eqz v0, :cond_6

    iget-object v2, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->a:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-interface {v2}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->release()V

    new-instance v2, Let;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, Landroidx/camera/core/impl/utils/Threads;->c(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->v:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    :cond_6
    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v6, v0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez p5, :cond_3

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/core/streamsharing/StreamSharing;->G(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v1

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/camera/core/processing/SurfaceProcessorNode;

    invoke-virtual/range {p4 .. p4}, Landroidx/camera/core/impl/StreamSpec;->b()Landroidx/camera/core/DynamicRange;

    move-result-object v2

    new-instance v3, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    invoke-direct {v3, v2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;)V

    invoke-direct {v7, v0, v3}, Landroidx/camera/core/processing/SurfaceProcessorNode;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    iput-object v7, v12, Landroidx/camera/core/streamsharing/StreamSharing;->u:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v0, v12, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->l()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v6, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/UseCase;

    move-object v4, v1

    move-object v1, v2

    iget-object v2, v6, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->l:Landroidx/camera/core/streamsharing/ResolutionsMerger;

    iget-object v3, v6, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->g:Landroidx/camera/core/impl/CameraInternal;

    move-object v15, v6

    move v6, v0

    move-object v0, v15

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->s(Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/ResolutionsMerger;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;IZ)Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v2

    move-object v13, v0

    iget-object v0, v13, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->g:Landroidx/camera/core/impl/CameraInternal;

    iget-object v3, v1, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v3, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {v3, v11}, Landroidx/camera/core/impl/ImageOutputConfig;->G(I)I

    move-result v3

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->b()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0, v3}, Landroidx/camera/core/CameraInfo;->t(I)I

    move-result v0

    iget-object v3, v13, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/streamsharing/VirtualCamera;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Landroidx/camera/core/streamsharing/VirtualCamera;->d:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    iput v0, v3, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->c:I

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    move v0, v6

    move-object v6, v13

    goto :goto_1

    :cond_1
    move-object v4, v1

    move-object v13, v6

    move v6, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v0}, Landroidx/camera/core/processing/SurfaceProcessorNode$In;->c(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)Landroidx/camera/core/processing/SurfaceProcessorNode$In;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->c(Landroidx/camera/core/processing/SurfaceProcessorNode$In;)Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/UseCase;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v13, v4, v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->v(Landroidx/camera/core/processing/SurfaceEdge;Z)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->y(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, v12, Landroidx/camera/core/streamsharing/StreamSharing;->A:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v12, v0

    move-object v13, v6

    invoke-virtual/range {p0 .. p5}, Landroidx/camera/core/streamsharing/StreamSharing;->G(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v14

    new-instance v0, Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v4, v12, Landroidx/camera/core/UseCase;->l:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->i()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v1

    iget-object v2, v12, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    :goto_3
    move-object v6, v2

    goto :goto_4

    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v2, v11, v11, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :goto_4
    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->i()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v1, v11}, Landroidx/camera/core/UseCase;->h(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result v7

    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->i()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v1}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v9

    const/4 v1, 0x3

    const/16 v2, 0x22

    const/4 v8, -0x1

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    iput-object v0, v12, Landroidx/camera/core/streamsharing/StreamSharing;->x:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->i()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v12, Landroidx/camera/core/streamsharing/StreamSharing;->z:Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v0, v12, Landroidx/camera/core/streamsharing/StreamSharing;->x:Landroidx/camera/core/processing/SurfaceEdge;

    move-object/from16 v4, p3

    invoke-virtual {v12, v0, v4, v3}, Landroidx/camera/core/streamsharing/StreamSharing;->H(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v7

    iput-object v7, v12, Landroidx/camera/core/streamsharing/StreamSharing;->B:Landroidx/camera/core/impl/SessionConfig$Builder;

    iget-object v0, v12, Landroidx/camera/core/streamsharing/StreamSharing;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    :cond_5
    new-instance v8, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    new-instance v0, Landroidx/camera/core/streamsharing/b;

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object v6, v3

    move-object v1, v12

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/streamsharing/b;-><init>(Landroidx/camera/core/streamsharing/StreamSharing;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    invoke-direct {v8, v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    iput-object v8, v12, Landroidx/camera/core/streamsharing/StreamSharing;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SessionConfig$Builder;->p(Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;)V

    iget-object v7, v12, Landroidx/camera/core/streamsharing/StreamSharing;->z:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->i()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    invoke-virtual/range {p4 .. p4}, Landroidx/camera/core/impl/StreamSpec;->b()Landroidx/camera/core/DynamicRange;

    move-result-object v3

    new-instance v4, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    iget-object v5, v12, Landroidx/camera/core/streamsharing/StreamSharing;->s:Landroidx/camera/core/CompositionSettings;

    iget-object v6, v12, Landroidx/camera/core/streamsharing/StreamSharing;->t:Landroidx/camera/core/CompositionSettings;

    invoke-direct {v4, v3, v5, v6}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;)V

    invoke-direct {v2, v0, v1, v4}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    iput-object v2, v12, Landroidx/camera/core/streamsharing/StreamSharing;->v:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    iget-object v0, v12, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    move v6, v10

    goto :goto_5

    :cond_6
    move v6, v11

    :goto_5
    invoke-virtual {v12}, Landroidx/camera/core/UseCase;->l()I

    move-result v5

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v13, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/core/UseCase;

    iget-object v2, v13, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->l:Landroidx/camera/core/streamsharing/ResolutionsMerger;

    iget-object v3, v13, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->g:Landroidx/camera/core/impl/CameraInternal;

    move-object v0, v13

    move-object v4, v14

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->s(Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/ResolutionsMerger;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;IZ)Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v10

    move-object v13, v4

    iget-object v2, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->m:Landroidx/camera/core/streamsharing/ResolutionsMerger;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->h:Landroidx/camera/core/impl/CameraInternal;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->s(Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/ResolutionsMerger;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;IZ)Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v2

    iget-object v3, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->g:Landroidx/camera/core/impl/CameraInternal;

    iget-object v7, v1, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v7, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {v7, v11}, Landroidx/camera/core/impl/ImageOutputConfig;->G(I)I

    move-result v7

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->b()Landroidx/camera/core/CameraInfo;

    move-result-object v3

    invoke-interface {v3, v7}, Landroidx/camera/core/CameraInfo;->t(I)I

    move-result v3

    iget-object v7, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/streamsharing/VirtualCamera;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v7, Landroidx/camera/core/streamsharing/VirtualCamera;->d:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    iput v3, v7, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->c:I

    invoke-static {v10, v2}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->c(Landroidx/camera/core/processing/util/OutConfig;Landroidx/camera/core/processing/util/OutConfig;)Landroidx/camera/core/processing/concurrent/DualOutConfig;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    move-object v14, v13

    move-object v13, v0

    goto :goto_6

    :cond_7
    move-object v4, v7

    move-object v0, v13

    move-object v13, v14

    iget-object v1, v12, Landroidx/camera/core/streamsharing/StreamSharing;->v:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v4, v2}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->d(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/ArrayList;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->b(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/UseCase;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    invoke-virtual {v0, v13, v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->v(Landroidx/camera/core/processing/SurfaceEdge;Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->y(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, v12, Landroidx/camera/core/streamsharing/StreamSharing;->A:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    iget-object v1, v12, Landroidx/camera/core/streamsharing/StreamSharing;->B:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_8
    if-ge v11, v2, :cond_9

    aget-object v3, v0, v11

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_9
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/processing/SurfaceEdge;
    .locals 12

    new-instance v2, Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v6, p0, Landroidx/camera/core/UseCase;->l:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v0

    iget-object v3, p0, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v3, v4, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Landroidx/camera/core/UseCase;->h(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result v9

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v11

    const/4 v3, 0x3

    const/16 v4, 0x22

    const/4 v10, -0x1

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v11}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    iput-object v2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->w:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->y:Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->w:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p0, v0, p3, v5}, Landroidx/camera/core/streamsharing/StreamSharing;->H(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v7

    iput-object v7, p0, Landroidx/camera/core/streamsharing/StreamSharing;->A:Landroidx/camera/core/impl/SessionConfig$Builder;

    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    :cond_1
    new-instance v8, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    new-instance v0, Landroidx/camera/core/streamsharing/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/streamsharing/b;-><init>(Landroidx/camera/core/streamsharing/StreamSharing;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    invoke-direct {v8, v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    iput-object v8, p0, Landroidx/camera/core/streamsharing/StreamSharing;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SessionConfig$Builder;->p(Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;)V

    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->y:Landroidx/camera/core/processing/SurfaceEdge;

    return-object v0
.end method

.method public final H(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 8

    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->m(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p2

    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object v1, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/UseCase;

    iget-object v4, v4, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v4}, Landroidx/camera/core/impl/UseCaseConfig;->Q()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v4

    iget-object v4, v4, Landroidx/camera/core/impl/SessionConfig;->g:Landroidx/camera/core/impl/CaptureConfig;

    iget v4, v4, Landroidx/camera/core/impl/CaptureConfig;->c:I

    sget-object v5, Landroidx/camera/core/impl/SessionConfig;->j:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-lt v6, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    if-eq v3, v2, :cond_2

    invoke-virtual {p2, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->w(I)V

    :cond_2
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v1

    iget-object v3, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/UseCase;

    iget-object v4, v4, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-static {v4, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->m(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v4

    iget-object v5, v4, Landroidx/camera/core/impl/SessionConfig;->g:Landroidx/camera/core/impl/CaptureConfig;

    iget-object v6, v5, Landroidx/camera/core/impl/CaptureConfig;->e:Ljava/util/List;

    invoke-virtual {p2, v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->b(Ljava/util/Collection;)V

    iget-object v6, v4, Landroidx/camera/core/impl/SessionConfig;->e:Ljava/util/List;

    check-cast v6, Ljava/util/List;

    invoke-virtual {p2, v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->a(Ljava/util/List;)V

    iget-object v6, v4, Landroidx/camera/core/impl/SessionConfig;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p2, v7}, Landroidx/camera/core/impl/SessionConfig$Builder;->h(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    goto :goto_2

    :cond_3
    iget-object v4, v4, Landroidx/camera/core/impl/SessionConfig;->c:Ljava/util/List;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {p2, v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->d(Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    goto :goto_3

    :cond_4
    iget-object v4, v5, Landroidx/camera/core/impl/CaptureConfig;->b:Landroidx/camera/core/impl/OptionsBundle;

    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->b()V

    iget-boolean v1, p1, Landroidx/camera/core/processing/SurfaceEdge;->j:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v4, "Consumer can only be linked once."

    invoke-static {v4, v1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-boolean v3, p1, Landroidx/camera/core/processing/SurfaceEdge;->j:Z

    iget-object p1, p1, Landroidx/camera/core/processing/SurfaceEdge;->l:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->b()Landroidx/camera/core/DynamicRange;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->i(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;I)V

    iget-object p1, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->i:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->g(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    :cond_6
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->g()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->v(I)V

    invoke-virtual {p0, p2, p3}, Landroidx/camera/core/UseCase;->a(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/StreamSpec;)V

    return-object p2
.end method

.method public final J()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    return-object p0
.end method

.method public final f(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->q:Landroidx/camera/core/streamsharing/StreamSharingConfig;

    invoke-interface {v0}, Landroidx/camera/core/impl/UseCaseConfig;->S()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Landroidx/camera/core/impl/UseCaseConfigFactory;->a(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_0

    iget-object p1, v0, Landroidx/camera/core/streamsharing/StreamSharingConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    invoke-static {p2, p1}, Landroidx/camera/core/impl/Config;->U(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/core/streamsharing/StreamSharing;->m(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/streamsharing/StreamSharingBuilder;

    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/StreamSharingBuilder;->d()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    return-object p0
.end method

.method public final j(Landroidx/camera/core/impl/CameraInfoInternal;)Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-virtual {v0, p1}, Landroidx/camera/core/UseCase;->j(Landroidx/camera/core/impl/CameraInfoInternal;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final k()Ljava/util/HashSet;
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final m(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 0

    new-instance p0, Landroidx/camera/core/streamsharing/StreamSharingBuilder;

    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->e0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/core/streamsharing/StreamSharingBuilder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-object p0
.end method

.method public final s()V
    .locals 5

    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    iget-object v2, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/streamsharing/VirtualCamera;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->f:Landroidx/camera/core/impl/UseCaseConfigFactory;

    invoke-virtual {v1, v3, v4}, Landroidx/camera/core/UseCase;->f(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroidx/camera/core/UseCase;->b(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->t()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 17

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object v2, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->j:Ljava/util/HashSet;

    iget-object v3, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->l:Landroidx/camera/core/streamsharing/ResolutionsMerger;

    iget-object v4, v3, Landroidx/camera/core/streamsharing/ResolutionsMerger;->f:Landroidx/camera/core/impl/CameraInfoInternal;

    const/16 v5, 0x22

    invoke-interface {v4, v5}, Landroidx/camera/core/impl/CameraInfoInternal;->k(I)Ljava/util/List;

    move-result-object v4

    iget-object v6, v3, Landroidx/camera/core/streamsharing/ResolutionsMerger;->d:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v8}, Landroidx/camera/core/impl/UseCaseConfig;->p()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    instance-of v9, v8, Landroidx/camera/core/impl/ImageOutputConfig;

    if-eqz v9, :cond_0

    check-cast v8, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {v8}, Landroidx/camera/core/impl/ImageOutputConfig;->k()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    goto :goto_0

    :cond_2
    sget-object v7, Landroidx/camera/core/impl/ImageOutputConfig;->r:Landroidx/camera/core/impl/Config$Option;

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Landroidx/camera/core/impl/Config;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Landroid/util/Size;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_1
    iget-object v5, v3, Landroidx/camera/core/streamsharing/ResolutionsMerger;->c:Landroid/util/Rational;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-virtual {v3, v11}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->c(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Size;

    sget-object v12, Landroidx/camera/core/impl/utils/AspectRatioUtil;->a:Landroid/util/Rational;

    sget-object v12, Landroidx/camera/core/internal/utils/SizeUtil;->c:Landroid/util/Size;

    invoke-static {v10, v5, v12}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->a(Landroid/util/Size;Landroid/util/Rational;Landroid/util/Size;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v9, v3, Landroidx/camera/core/streamsharing/ResolutionsMerger;->b:Landroid/util/Rational;

    invoke-virtual {v3, v9, v4, v11}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->g(Landroid/util/Rational;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_9

    move-object/from16 p0, v8

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-virtual {v3, v10}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->c(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v13, v11

    move v14, v13

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Size;

    sget-object v16, Landroidx/camera/core/impl/utils/AspectRatioUtil;->a:Landroid/util/Rational;

    move-object/from16 p0, v8

    sget-object v8, Landroidx/camera/core/internal/utils/SizeUtil;->c:Landroid/util/Size;

    invoke-static {v15, v5, v8}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->a(Landroid/util/Size;Landroid/util/Rational;Landroid/util/Size;)Z

    move-result v8

    if-eqz v8, :cond_a

    move v13, v12

    :cond_a
    if-eqz v14, :cond_b

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    if-nez v8, :cond_c

    move v14, v12

    :cond_c
    move-object/from16 v8, p0

    goto :goto_4

    :cond_d
    move-object/from16 p0, v8

    if-nez v13, :cond_e

    goto :goto_5

    :cond_e
    move-object/from16 v8, p0

    goto :goto_3

    :cond_f
    move-object/from16 p0, v8

    move v9, v11

    :goto_5
    invoke-virtual {v3, v5, v4, v11}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->g(Landroid/util/Rational;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v7, v9, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v3, v4, v11}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->f(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const-string v6, "ResolutionsMerger"

    if-eqz v5, :cond_10

    const/4 v5, 0x5

    invoke-static {v5, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {v3, v4, v12}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->f(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    sget-object v4, Landroidx/camera/core/impl/ImageOutputConfig;->t:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v4, v7}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->y:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v11

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v7}, Landroidx/camera/core/impl/UseCaseConfig;->M()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_6

    :cond_11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v6}, Landroidx/camera/core/impl/ImageInputConfig;->I()Landroidx/camera/core/DynamicRange;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    goto/16 :goto_c

    :cond_13
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/DynamicRange;

    iget v7, v6, Landroidx/camera/core/DynamicRange;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v6, v6, Landroidx/camera/core/DynamicRange;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move v8, v12

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1e

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/DynamicRange;

    iget v10, v9, Landroidx/camera/core/DynamicRange;->a:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    :goto_9
    move-object v7, v10

    goto :goto_a

    :cond_14
    invoke-virtual {v10, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    goto :goto_a

    :cond_15
    invoke-virtual {v7, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v10, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    goto :goto_9

    :cond_16
    invoke-virtual {v10, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-virtual {v7, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v7, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_a

    :cond_18
    move-object/from16 v7, p0

    :goto_a
    iget v9, v9, Landroidx/camera/core/DynamicRange;->b:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    move-object v6, v9

    goto :goto_b

    :cond_19
    invoke-virtual {v9, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_b

    :cond_1a
    invoke-virtual {v6, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    goto :goto_b

    :cond_1b
    move-object/from16 v6, p0

    :goto_b
    if-eqz v7, :cond_1d

    if-nez v6, :cond_1c

    goto :goto_c

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_1d
    :goto_c
    move-object/from16 v4, p0

    goto :goto_d

    :cond_1e
    new-instance v4, Landroidx/camera/core/DynamicRange;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    :goto_d
    if-eqz v4, :cond_24

    sget-object v5, Landroidx/camera/core/impl/ImageInputConfig;->j:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v5, v4}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->A:Landroidx/camera/core/impl/Config$Option;

    sget-object v5, Landroidx/camera/core/impl/StreamSpec;->a:Landroid/util/Range;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v6, v5}, Landroidx/camera/core/impl/UseCaseConfig;->y(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Landroidx/camera/core/impl/StreamSpec;->a:Landroid/util/Range;

    invoke-virtual {v7, v5}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    move-object v5, v6

    goto :goto_e

    :cond_1f
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const-string v2, "VirtualCameraAdapter"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {v5, v6}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    :cond_20
    invoke-interface {v0, v4, v5}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    iget-object v4, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->w()I

    move-result v4

    if-eqz v4, :cond_22

    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->G:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->w()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_22
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->B()I

    move-result v4

    if-eqz v4, :cond_21

    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->F:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->B()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_f

    :cond_23
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->d()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    return-object v0

    :cond_24
    const-string v0, "Failed to merge child dynamic ranges, can not find a dynamic range that satisfies all children."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/core/UseCase;->a:Z

    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->v()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/UseCase;->a:Z

    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->w()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->A:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->A:Landroidx/camera/core/impl/SessionConfig$Builder;

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
    .locals 8

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "StreamSharing"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->i()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->i()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v5, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/camera/core/streamsharing/StreamSharing;->F(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    invoke-virtual {v2}, Landroidx/camera/core/UseCase;->p()V

    return-object v6
.end method

.method public final z()V
    .locals 3

    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->E()V

    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->r:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    iget-object v2, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/streamsharing/VirtualCamera;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/camera/core/UseCase;->C(Landroidx/camera/core/impl/CameraInternal;)V

    goto :goto_0

    :cond_0
    return-void
.end method
