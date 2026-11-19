.class public final synthetic Laa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Laa0;->b:I

    iput-object p1, p0, Laa0;->c:Ljava/lang/Object;

    iput-object p2, p0, Laa0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Laa0;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Llv/nfc/reader/TagNfcExecutorCallback;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Llv/nfc/reader/data/models/LVTagResult;

    invoke-static {v0, p0}, Llv/nfc/reader/TagNfcExecutor;->b(Llv/nfc/reader/TagNfcExecutorCallback;Llv/nfc/reader/data/models/LVTagResult;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/SurfaceTexture;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    iput-object v3, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    iget-object p0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;->z(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/SurfaceTexture;

    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p0, v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    iput-object v3, v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    iget-object p0, v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;->a()V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_5
    return-void

    :pswitch_3
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->f:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->j(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/a;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->guid:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v2, Lyp;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Lyp;-><init>(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    sget-object v1, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/b;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/b;

    invoke-virtual {v1, v0, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->c(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    sget-object v1, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationType;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationType;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/Processor;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v2, v0, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Landroidx/work/impl/Processor;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/ExecutionListener;

    invoke-interface {v3, p0, v1}, Landroidx/work/impl/ExecutionListener;->c(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_6
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_c
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/Preview$SurfaceProvider;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    sget-object v1, Landroidx/camera/core/Preview;->x:Landroidx/camera/core/Preview$Defaults;

    invoke-interface {v0, p0}, Landroidx/camera/core/Preview$SurfaceProvider;->a(Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/PlayerView;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Landroidx/media3/ui/PlayerView;->a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/VideoSize;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->b(Landroidx/media3/common/VideoSize;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->u:Lcom/vuitton/android/presentation/screen/options/OptionsActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is copied on clipboard"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_10
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/MetadataImageReader;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->d(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/Consumer;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    invoke-interface {v0, p0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/media/metrics/PlaybackStateEvent;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackStateEvent;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/media/metrics/PlaybackMetrics;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackMetrics;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/media/metrics/PlaybackErrorEvent;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->g(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void

    :pswitch_15
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/media/metrics/NetworkEvent;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/NetworkEvent;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/media/metrics/TrackChangeEvent;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/TrackChangeEvent;)V

    return-void

    :pswitch_17
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/FormatHolder;

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0, p0, v3, v1}, Landroidx/media3/exoplayer/BaseRenderer;->T(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :pswitch_18
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LiveData;

    invoke-static {v0, p0}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->d(Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Landroidx/lifecycle/LiveData;)V

    return-void

    :pswitch_19
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCam$QualityCheckCallback;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/QualityCheck;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/MakeupCam$QualityCheckCallback;->onAnalyze(Lcom/perfectcorp/perfectlib/QualityCheck;)V

    return-void

    :pswitch_1b
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadReport;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;->progress(D)V

    return-void

    :pswitch_1c
    iget-object v0, p0, Laa0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p0, p0, Laa0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d1:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->a()V

    :cond_7
    return-void

    nop

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
