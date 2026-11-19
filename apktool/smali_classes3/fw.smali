.class public final synthetic Lfw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;
.implements Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;
.implements Lcom/cyberlink/clgpuimage/GlInvalidator;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/otaliastudios/cameraview/FileCallback;
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.implements Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$QualityCheckCallback;
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;
.implements Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
.implements Lcom/google/common/collect/Maps$EntryTransformer;
.implements Landroidx/navigationevent/OnBackCompletedFallback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lfw;->b:I

    iput-object p1, p0, Lfw;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 8

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    iget-wide p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    const-wide/16 v0, 0x1

    sub-long v6, p0, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Ll00;

    .line 50
    invoke-virtual {p0, p1}, Ll00;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lfw;->b:I

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCam;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->b(Ljava/lang/Thread;)V

    return-object p1

    :sswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler;->f(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :sswitch_1
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->H:Landroid/util/Range;

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->r(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lfw;->b:I

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->I(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;Landroidx/activity/result/ActivityResult;)V

    return-void

    :sswitch_0
    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->a(Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;Landroid/net/Uri;)V

    return-void

    :sswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->p(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;Landroidx/activity/result/ActivityResult;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Luh;

    invoke-virtual {p0, p2}, Luh;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 2

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/MetadataImageReader;

    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/camera/core/MetadataImageReader;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/camera/core/MetadataImageReader;->c:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroidx/camera/core/MetadataImageReader;->j(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public e(Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;)Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;
    .locals 3

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

    sget-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->a:Lkotlin/text/Regex;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;->a(Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sanitation: key \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is outside of allowed namespace and thus dropped"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public f(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p0}, Landroidx/media3/extractor/CeaUtil;->a(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public h(F)V
    .locals 1

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    const v0, 0x3de147ae    # 0.11f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->v:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->v:I

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->j()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Ljr;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, p1, v2}, Ljr;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " [fetch@"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .locals 1

    iget v0, p0, Lfw;->b:I

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->i:Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;->onDirty(Lcom/perfectcorp/perfectlib/FramebufferRenderer;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/CameraView;

    sget-object v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lfw;->b:I

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Landroidx/media3/common/MediaMetadata;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->o0(Landroidx/media3/common/MediaMetadata;)V

    return-void

    :sswitch_0
    check-cast p0, Landroidx/media3/common/AudioAttributes;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->i0(Landroidx/media3/common/AudioAttributes;)V

    return-void

    :sswitch_1
    check-cast p0, Landroidx/media3/common/TrackSelectionParameters;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->R(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :sswitch_2
    check-cast p0, Landroidx/media3/common/Metadata;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->C(Landroidx/media3/common/Metadata;)V

    return-void

    :sswitch_3
    check-cast p0, Landroidx/media3/common/text/CueGroup;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->B(Landroidx/media3/common/text/CueGroup;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public j()V
    .locals 3

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->G:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "IMAGE_RESULT"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string p0, "file"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public onAnalyze(Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;)V
    .locals 2

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCam$PupilAnalysisCallback;

    new-instance v0, Lcom/perfectcorp/perfectlib/PupilData;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/PupilData;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/PupilQualityCheck;

    invoke-direct {p1, p2}, Lcom/perfectcorp/perfectlib/PupilQualityCheck;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;)V

    new-instance p2, Lb5;

    const/16 v1, 0x10

    invoke-direct {p2, p0, v0, p1, v1}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnalyze(Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;)V
    .locals 2

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCam$QualityCheckCallback;

    .line 25
    new-instance v0, Lcom/perfectcorp/perfectlib/QualityCheck;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/QualityCheck;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;)V

    new-instance p1, Laa0;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v0, v1}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lfw;->b:I

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lem;

    invoke-virtual {p0, p1}, Lem;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Lk0;

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->f(Lk0;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Lgv;

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->e(Lgv;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
