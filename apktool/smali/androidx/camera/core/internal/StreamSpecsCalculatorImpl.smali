.class public final Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/StreamSpecsCalculator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;",
        "Landroidx/camera/core/internal/StreamSpecsCalculator;",
        "Landroidx/camera/core/impl/UseCaseConfigFactory;",
        "useCaseConfigFactory",
        "Landroidx/camera/core/impl/CameraDeviceSurfaceManager;",
        "cameraDeviceSurfaceManager",
        "<init>",
        "(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V",
        "camera-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroidx/camera/core/impl/UseCaseConfigFactory;

.field public c:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->b:Landroidx/camera/core/impl/UseCaseConfigFactory;

    iput-object p2, p0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->c:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;-><init>(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/camera/core/impl/CameraConfig;Landroid/util/Range;Z)Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInfoInternal;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v12, 0x0

    const-string v13, "Required value was null."

    if-eqz v3, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroidx/camera/core/UseCase;

    iget-object v15, v14, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    if-eqz v15, :cond_5

    iget-object v3, v0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->c:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    if-eqz v3, :cond_4

    iget-object v4, v14, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v4}, Landroidx/camera/core/impl/ImageInputConfig;->m()I

    move-result v6

    iget-object v4, v14, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v4

    move-object v7, v4

    goto :goto_1

    :cond_0
    move-object v7, v12

    :goto_1
    if-eqz v7, :cond_3

    iget-object v4, v14, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v4}, Landroidx/camera/core/impl/UseCaseConfig;->R()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v8

    move/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager;->a(ILjava/lang/String;ILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v16

    iget-object v3, v14, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v3}, Landroidx/camera/core/impl/ImageInputConfig;->m()I

    move-result v17

    iget-object v3, v14, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_2

    :cond_1
    move-object/from16 v18, v12

    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Landroidx/camera/core/impl/StreamSpec;->b()Landroidx/camera/core/DynamicRange;

    move-result-object v19

    invoke-static {v14}, Landroidx/camera/core/streamsharing/StreamSharing;->I(Landroidx/camera/core/UseCase;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual {v15}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object v21

    iget-object v3, v14, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->T()I

    move-result v22

    iget-object v3, v14, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    sget-object v4, Landroidx/camera/core/impl/StreamSpec;->a:Landroid/util/Range;

    invoke-interface {v3, v4}, Landroidx/camera/core/impl/UseCaseConfig;->y(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v23

    if-eqz v23, :cond_2

    iget-object v3, v14, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->C()Z

    move-result v24

    invoke-static/range {v16 .. v24}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->a(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroidx/camera/core/DynamicRange;Ljava/util/List;Landroidx/camera/core/impl/Config;ILandroid/util/Range;Z)Landroidx/camera/core/impl/AttachedSurfaceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v13}, Lmd;->n(Ljava/lang/String;)V

    return-object v12

    :cond_3
    const-string v0, "Attached surface resolution cannot be null for already attached use cases."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v12

    :cond_4
    invoke-static {v13}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_5
    const-string v0, "Attached stream spec cannot be null for already attached use cases."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v12

    :cond_6
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/util/Map;

    invoke-interface/range {p5 .. p5}, Landroidx/camera/core/impl/CameraConfig;->i()Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object v4

    iget-object v5, v0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->b:Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-static {v6, v4, v5, v7}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->w(Ljava/util/ArrayList;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroid/util/Range;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInfoInternal;->b()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInfoInternal;->f()Landroid/graphics/Rect;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object v9, v12

    :goto_3
    new-instance v10, Landroidx/camera/core/internal/SupportedOutputSizesSorter;

    if-eqz v9, :cond_7

    invoke-static {v9}, Landroidx/camera/core/impl/utils/TransformUtils;->g(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v9

    goto :goto_4

    :cond_7
    move-object v9, v12

    :goto_4
    invoke-direct {v10, v1, v9}, Landroidx/camera/core/internal/SupportedOutputSizesSorter;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroid/util/Size;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    move/from16 v22, v11

    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/core/UseCase;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_9

    check-cast v14, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;

    iget-object v15, v14, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->a:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v14, v14, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->b:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-virtual {v11, v1, v15, v14}, Landroidx/camera/core/UseCase;->o(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Landroidx/camera/core/internal/SupportedOutputSizesSorter;->b(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v8, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14}, Landroidx/camera/core/impl/UseCaseConfig;->B()I

    move-result v11

    const/4 v14, 0x2

    if-ne v11, v14, :cond_8

    const/16 v22, 0x1

    goto :goto_5

    :cond_9
    invoke-static {v13}, Lmd;->n(Ljava/lang/String;)V

    return-object v12

    :cond_a
    iget-object v0, v0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->c:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    if-eqz v0, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->B(Ljava/util/AbstractCollection;)Z

    move-result v23

    move/from16 v18, p1

    move/from16 v24, p7

    move-object/from16 v17, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v8

    invoke-interface/range {v17 .. v24}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager;->e(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;ZZZ)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0

    iget-object v1, v0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->a:Ljava/util/Map;

    iget-object v4, v0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->b:Ljava/util/Map;

    iget v0, v0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->c:I

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    invoke-static {v13}, Lmd;->n(Ljava/lang/String;)V

    return-object v12

    :cond_c
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    invoke-static {v13}, Lmd;->n(Ljava/lang/String;)V

    return-object v12

    :cond_f
    invoke-static {v13}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_10
    const v0, 0x7fffffff

    :cond_11
    new-instance v1, Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-direct {v1, v5, v0}, Landroidx/camera/core/internal/StreamSpecQueryResult;-><init>(Ljava/util/Map;I)V

    new-instance v0, Landroidx/camera/core/internal/StreamSpecQueryResult;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/Map;

    iget-object v3, v1, Landroidx/camera/core/internal/StreamSpecQueryResult;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->k(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget v1, v1, Landroidx/camera/core/internal/StreamSpecQueryResult;->b:I

    invoke-direct {v0, v2, v1}, Landroidx/camera/core/internal/StreamSpecQueryResult;-><init>(Ljava/util/Map;I)V

    return-object v0
.end method
