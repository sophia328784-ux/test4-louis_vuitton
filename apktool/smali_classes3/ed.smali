.class public final synthetic Led;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p7, p0, Led;->b:I

    iput-object p1, p0, Led;->c:Ljava/lang/Object;

    iput-object p2, p0, Led;->d:Ljava/lang/Object;

    iput-object p3, p0, Led;->e:Ljava/lang/Object;

    iput-object p4, p0, Led;->f:Ljava/lang/Object;

    iput-object p5, p0, Led;->g:Ljava/lang/Object;

    iput-object p6, p0, Led;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Led;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Led;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Led;->d:Ljava/lang/Object;

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Led;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Led;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Led;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object p0, p0, Led;->h:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;

    sget-object v6, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;

    new-instance v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const-wide/16 v8, -0x1

    iput-wide v8, v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->c:J

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->productId:Ljava/lang/String;

    iput-object v8, v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->a:Ljava/lang/String;

    sget-object v8, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v9, v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->payload:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-virtual {v8, v9}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->b:Ljava/lang/String;

    iget-wide v8, v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->lastModified:J

    iput-wide v8, v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->c:J

    new-instance v5, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    invoke-direct {v5, v7}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;-><init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;)V

    invoke-virtual {v6, v1, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;

    const-string v7, "ProductId"

    invoke-virtual {v6, v1, v7, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    const-string v7, "referenceId"

    invoke-virtual {v6, v1, v7, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "referenceId"

    invoke-virtual {v6, v1, v8, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    sget-object v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->a:Ljava/lang/String;

    const-string v9, "url"

    invoke-virtual {v7, v1, v9, v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;

    new-instance v6, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d$a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v7, v2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->productId:Ljava/lang/String;

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d$a;->a:Ljava/lang/String;

    iput-object v4, v6, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d$a;->b:Ljava/lang/String;

    new-instance v4, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d;

    invoke-direct {v4, v6}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d;-><init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d$a;)V

    invoke-virtual {v5, v1, v4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    monitor-enter p0

    :try_start_1
    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-direct {v4, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;)V

    invoke-virtual {v3, v1, v4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Led;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    iget-object v0, p0, Led;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    iget-object v0, p0, Led;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/camera/core/impl/CameraInternal;

    iget-object v0, p0, Led;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v0, p0, Led;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/camera/core/processing/SurfaceEdge;

    iget-object p0, p0, Led;->h:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ljava/util/Map$Entry;

    invoke-virtual/range {v1 .. v6}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->a(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Led;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p0, Led;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, p0, Led;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Led;->f:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, p0, Led;->g:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Led;->h:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    sget-object p0, Landroidx/compose/foundation/text/BasicText_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const-string p0, "BackgroundTextMeasurement"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_3
    sget-object p0, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g(Lxo0;Lrp0;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v6

    if-nez v2, :cond_7

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_7
    move-object v7, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :goto_6
    new-instance v4, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    invoke-virtual {v4}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()F

    invoke-virtual {v4}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c()F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->w()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult;->a()V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_8

    :goto_7
    :try_start_8
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_8
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
