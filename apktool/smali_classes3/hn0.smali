.class public final synthetic Lhn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lhn0;->b:I

    iput-object p1, p0, Lhn0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lhn0;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object p0, p0, Lhn0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;->d(Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object p0

    const/16 v0, 0x64

    invoke-interface {p0, v0}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onCaptureProcessProgressed(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->d()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->d()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$ListGroupsCallback;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Doesn\'t have a valid license."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/TagHandler$ListGroupsCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$ListGuidsCallback;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Doesn\'t have a valid license."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/TagHandler$ListGuidsCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Doesn\'t have a valid license."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Doesn\'t have a valid license."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_5
    check-cast p0, Landroidx/camera/view/d;

    invoke-virtual {p0}, Landroidx/camera/view/d;->a()V

    return-void

    :pswitch_6
    check-cast p0, Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object p0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->c:Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->c()V

    goto :goto_1

    :cond_2
    return-void

    :pswitch_7
    check-cast p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;->e()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_5
    iput-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    iput-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    return-void

    :pswitch_8
    check-cast p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;

    invoke-interface {v2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;->e()V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_8
    iput-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    iput-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    return-void

    :pswitch_9
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v0, v0}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;->onComplete(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->u:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->p:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Lgx0;

    invoke-direct {v6, v5, v4, v2}, Lgx0;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;I)V

    invoke-static {v5, v6}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    goto :goto_4

    :cond_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    sget-object v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->q:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    sget-object v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->r:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->j(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    goto :goto_6

    :cond_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    sget-object v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->s:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-interface {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->f()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/template/a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v4, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/a;)V

    goto :goto_7

    :cond_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    sget-object v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->t:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-direct {v5, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;)V

    invoke-virtual {v3, v4, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :pswitch_b
    check-cast p0, Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    invoke-interface {p0, v3}, Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;->a(Z)V

    return-void

    :pswitch_c
    check-cast p0, Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    invoke-interface {p0}, Landroidx/camera/core/ImageCapture$ScreenFlashListener;->onCompleted()V

    return-void

    :pswitch_d
    check-cast p0, Lcom/sightcall/pratik/RunLoop;

    invoke-static {p0}, Lcom/sightcall/pratik/RunLoop;->a(Lcom/sightcall/pratik/RunLoop;)V

    return-void

    :pswitch_e
    check-cast p0, Landroidx/compose/material/ripple/RippleHostView;

    invoke-static {p0}, Landroidx/compose/material/ripple/RippleHostView;->a(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void

    :pswitch_f
    check-cast p0, Landroidx/camera/video/internal/encoder/Encoder;

    sget-object v0, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    const-string v0, "Recorder"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const-class v0, Landroidx/camera/video/internal/compat/quirk/DeactivateEncoderSurfaceBeforeStopEncoderQuirk;

    sget-object v1, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Landroidx/camera/video/Recorder;->r(Landroidx/camera/video/internal/encoder/Encoder;)V

    :cond_f
    return-void

    :pswitch_10
    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Doesn\'t have a valid license."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_11
    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Doesn\'t have a valid license."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_12
    check-cast p0, Ljava/util/LinkedList;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->n()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p0, "ProductMappingDatabase"

    const-string v0, "[insert] insert value is empty"

    invoke-static {p0, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->b:Ljava/util/List;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v1

    :catchall_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :try_start_0
    invoke-static {p0, v0, v2}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->m(Ljava/util/LinkedList;Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :cond_11
    const/16 v1, 0x7d

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->m(Ljava/util/LinkedList;Landroid/database/sqlite/SQLiteDatabase;I)V

    :goto_9
    return-void

    :pswitch_13
    check-cast p0, Landroidx/lifecycle/ProcessLifecycleOwner;

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->g:Landroidx/lifecycle/LifecycleRegistry;

    iget v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->c:I

    if-nez v1, :cond_12

    iput-boolean v3, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->d:Z

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->g(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_12
    iget v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->b:I

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->d:Z

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->g(Landroidx/lifecycle/Lifecycle$Event;)V

    iput-boolean v3, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->e:Z

    :cond_13
    return-void

    :pswitch_14
    check-cast p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->O(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)V

    return-void

    :pswitch_15
    check-cast p0, Landroidx/camera/core/Preview;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->q()V

    return-void

    :pswitch_16
    check-cast p0, Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_17
    check-cast p0, Landroidx/media3/ui/PlayerControlView;

    sget-object v0, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->r()V

    return-void

    :pswitch_18
    check-cast p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->q:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->q:I

    return-void

    :pswitch_19
    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void

    :pswitch_1a
    check-cast p0, Lcom/perfectcorp/perfectlib/internal/c;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/c;->c()V

    return-void

    :pswitch_1b
    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;

    const-string v0, "SDKInitHandler"

    const-string v2, "[resetInitState] start"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    const-string v2, "SDKInitHandler"

    const-string v3, "[resetInitState] enter critical section"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    const-string p0, "SDKInitHandler"

    const-string v2, "[resetInitState] exit critical section"

    invoke-static {v1, p0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string p0, "SDKInitHandler"

    const-string v0, "[resetInitState] end"

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_1c
    check-cast p0, Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;->onReleased()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
