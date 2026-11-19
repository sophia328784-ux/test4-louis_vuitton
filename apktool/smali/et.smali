.class public final synthetic Let;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    const/16 p2, 0xc

    iput p2, p0, Let;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Let;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Let;->b:I

    iput-object p1, p0, Let;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    .line 11
    const/16 p1, 0xd

    iput p1, p0, Let;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Let;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Let;->b:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const v3, 0x1020002

    const/4 v4, 0x1

    iget-object p0, p0, Let;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->u:Lcom/vuitton/android/presentation/screen/options/OptionsActivity$Companion;

    const v0, 0x7f140d81

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    check-cast p0, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/linkplay/core/device/LPDevice;

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->a(Lcom/linkplay/core/device/LPDevice;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/media3/session/MediaSessionService;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_3
    check-cast p0, Landroidx/media3/session/MediaController;

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->release()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButton;->a(Lcom/google/android/material/button/MaterialButton;)V

    return-void

    :pswitch_5
    check-cast p0, Lio/reactivex/rxjava3/android/MainThreadDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;->onDispose()V

    return-void

    :pswitch_6
    check-cast p0, Lcom/airbnb/lottie/LottieTask;

    sget-object v0, Lcom/airbnb/lottie/LottieTask;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieTask;->c()V

    return-void

    :pswitch_7
    check-cast p0, Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->L:Ljava/util/concurrent/Semaphore;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->o:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->r(F)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p0

    :goto_0
    return-void

    :pswitch_8
    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v0, v0}, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;->onComplete(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;

    invoke-static {p0}, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->a(Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;)V

    return-void

    :pswitch_a
    check-cast p0, Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    return-void

    :pswitch_b
    check-cast p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    return-void

    :pswitch_c
    check-cast p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->b()V

    return-void

    :pswitch_d
    check-cast p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;

    invoke-static {p0}, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->b(Lcom/sightcall/livetranslation/history/HistoryViewHolder;)V

    return-void

    :pswitch_e
    check-cast p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->a(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;)V

    return-void

    :pswitch_f
    check-cast p0, Landroidx/fragment/app/strictmode/Violation;

    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    throw p0

    :pswitch_10
    check-cast p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    iget-object p0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->b:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    invoke-interface {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;->a()V

    return-void

    :pswitch_11
    check-cast p0, Landroidx/fragment/app/FragmentManager;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->o:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    return-void

    :pswitch_12
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/fragment/app/Fragment;->o(Landroidx/fragment/app/Fragment;)V

    return-void

    :pswitch_13
    check-cast p0, Lcom/lightup/sdk/device/features/FeatureStore;

    iget-object v0, p0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/features/Feature;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/features/Feature;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f140967

    invoke-static {p0, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_15
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->d:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->c()V

    goto :goto_4

    :cond_5
    return-void

    :pswitch_16
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    iput-boolean v4, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->g:Z

    invoke-virtual {p0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->d()V

    return-void

    :pswitch_17
    check-cast p0, Lcom/perfectcorp/common/network/DownloadHandle;

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v0, "DownloadTaskCancelable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[toDisposable] cancel handle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/common/network/DownloadHandle;->cancel()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "handle.isCancelled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/perfectcorp/common/network/DownloadHandle;->isCancelled()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f14096d

    invoke-static {p0, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_19
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :pswitch_1a
    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->q()V

    return-void

    :pswitch_1b
    check-cast p0, Landroidx/media3/ui/DefaultTimeBar;

    sget v0, Landroidx/media3/ui/DefaultTimeBar;->Q:I

    invoke-virtual {p0, v1}, Landroidx/media3/ui/DefaultTimeBar;->f(Z)V

    return-void

    :pswitch_1c
    check-cast p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    sget v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->K:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->e(Z)V

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
