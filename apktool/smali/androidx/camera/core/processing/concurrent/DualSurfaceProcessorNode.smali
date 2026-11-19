.class public Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;,
        Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Node<",
        "Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;",
        "Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/camera/core/processing/SurfaceProcessorInternal;

.field public final b:Landroidx/camera/core/impl/CameraInternal;

.field public final c:Landroidx/camera/core/impl/CameraInternal;

.field public d:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

.field public e:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->b:Landroidx/camera/core/impl/CameraInternal;

    iput-object p2, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->c:Landroidx/camera/core/impl/CameraInternal;

    iput-object p3, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->a:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V
    .locals 7

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "DualSurfaceProcessorNode"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p3, Landroidx/camera/core/processing/SurfaceEdge;->g:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v0

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {v1}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->a()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/processing/util/OutConfig;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean p3, p3, Landroidx/camera/core/processing/SurfaceEdge;->c:Z

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {p3}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->a()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/core/processing/util/OutConfig;->c()I

    move-result p3

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {v4}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->a()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/processing/util/OutConfig;->g()Z

    move-result v4

    invoke-static {v0, v1, p1, p3, v4}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->f(Landroid/util/Size;Landroid/graphics/Rect;Landroidx/camera/core/impl/CameraInternal;IZ)Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    move-result-object v5

    iget-object p1, p4, Landroidx/camera/core/processing/SurfaceEdge;->g:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object p1

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {p3}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->b()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/core/processing/util/OutConfig;->a()Landroid/graphics/Rect;

    move-result-object p3

    iget-boolean p4, p4, Landroidx/camera/core/processing/SurfaceEdge;->c:Z

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v3

    :goto_1
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {p4}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->b()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/camera/core/processing/util/OutConfig;->c()I

    move-result p4

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {v0}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->b()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/processing/util/OutConfig;->g()Z

    move-result v0

    invoke-static {p1, p3, p2, p4, v0}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->f(Landroid/util/Size;Landroid/graphics/Rect;Landroidx/camera/core/impl/CameraInternal;IZ)Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    move-result-object v6

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->a()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->b()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {v2}, Landroidx/camera/core/processing/SurfaceEdge;->b()V

    iget-boolean p1, v2, Landroidx/camera/core/processing/SurfaceEdge;->j:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const-string p3, "Consumer can only be linked once."

    invoke-static {p3, p1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-boolean p2, v2, Landroidx/camera/core/processing/SurfaceEdge;->j:Z

    iget-object v3, v2, Landroidx/camera/core/processing/SurfaceEdge;->l:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Landroidx/camera/core/processing/d;

    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/processing/d;-><init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;ILandroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    invoke-static {p1, v1, p2}, Landroidx/camera/core/impl/utils/futures/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;

    invoke-direct {p2, p0, v2}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;-><init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;Landroidx/camera/core/processing/SurfaceEdge;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v2, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->a:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;

    iget-object v4, v3, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->a:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v4, v3, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->b:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v4, 0x3

    const-string v5, "DualSurfaceProcessorNode"

    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v3, v3, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v6, "SurfaceProcessorNode"

    invoke-static {v4, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    iput-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->e:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    new-instance v1, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    invoke-direct {v1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;-><init>()V

    iput-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->d:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    iget-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->e:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    move-object v3, v1

    check-cast v3, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;

    iget-object v3, v3, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->a:Landroidx/camera/core/processing/SurfaceEdge;

    move-object v4, v1

    check-cast v4, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;

    iget-object v4, v4, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->b:Landroidx/camera/core/processing/SurfaceEdge;

    check-cast v1, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;

    iget-object v1, v1, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    iget-object v9, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->d:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    invoke-virtual {v6}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->a()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->a()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->c()I

    move-result v12

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->g()Z

    move-result v13

    new-instance v14, Landroid/graphics/Matrix;

    iget-object v15, v3, Landroidx/camera/core/processing/SurfaceEdge;->b:Landroid/graphics/Matrix;

    invoke-direct {v14, v15}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->d()Landroid/util/Size;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/impl/utils/TransformUtils;->j(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v15, v7, v12, v13}, Landroidx/camera/core/impl/utils/TransformUtils;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-static {v11}, Landroidx/camera/core/impl/utils/TransformUtils;->g(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v7

    invoke-static {v7, v12}, Landroidx/camera/core/impl/utils/TransformUtils;->i(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->d()Landroid/util/Size;

    move-result-object v11

    invoke-static {v7, v8, v11}, Landroidx/camera/core/impl/utils/TransformUtils;->e(Landroid/util/Size;ZLandroid/util/Size;)Z

    move-result v7

    invoke-static {v7}, Landroidx/core/util/Preconditions;->a(Z)V

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->d()Landroid/util/Size;

    move-result-object v7

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v11, v8, v8, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, v3, Landroidx/camera/core/processing/SurfaceEdge;->g:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->i()Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v7

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->d()Landroid/util/Size;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroidx/camera/core/impl/StreamSpec$Builder;->f(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec$Builder;->a()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v17

    move-object/from16 v18, v14

    new-instance v14, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->e()I

    move-result v15

    invoke-virtual {v10}, Landroidx/camera/core/processing/util/OutConfig;->b()I

    move-result v16

    iget v7, v3, Landroidx/camera/core/processing/SurfaceEdge;->i:I

    sub-int v21, v7, v12

    iget-boolean v7, v3, Landroidx/camera/core/processing/SurfaceEdge;->e:Z

    if-eq v7, v13, :cond_1

    const/16 v23, 0x1

    goto :goto_2

    :cond_1
    move/from16 v23, v8

    :goto_2
    const/16 v19, 0x0

    const/16 v22, -0x1

    move-object/from16 v20, v11

    invoke-direct/range {v14 .. v23}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    invoke-virtual {v9, v6, v14}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    iget-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->b:Landroidx/camera/core/impl/CameraInternal;

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v6}, Landroidx/camera/core/processing/SurfaceEdge;->d(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    move-result-object v1

    :try_start_0
    invoke-interface {v2, v1}, Landroidx/camera/core/SurfaceProcessor;->a(Landroidx/camera/core/SurfaceRequest;)V
    :try_end_0
    .catch Landroidx/camera/core/ProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-static {v5}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    :goto_3
    iget-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->c:Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {v4, v1, v8}, Landroidx/camera/core/processing/SurfaceEdge;->d(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    move-result-object v1

    :try_start_1
    invoke-interface {v2, v1}, Landroidx/camera/core/SurfaceProcessor;->a(Landroidx/camera/core/SurfaceRequest;)V
    :try_end_1
    .catch Landroidx/camera/core/ProcessingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    invoke-static {v5}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    :goto_4
    iget-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->d:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->b:Landroidx/camera/core/impl/CameraInternal;

    iget-object v2, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->c:Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->a(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/camera/core/processing/SurfaceEdge;

    new-instance v0, Led;

    const/4 v7, 0x1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Led;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    invoke-virtual {v9, v1}, Landroidx/camera/core/processing/SurfaceEdge;->a(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_3
    iget-object v0, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->d:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    return-object v0
.end method
