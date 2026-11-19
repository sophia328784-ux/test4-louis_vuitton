.class public final synthetic Ljr;
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

    iput p3, p0, Ljr;->b:I

    iput-object p1, p0, Ljr;->c:Ljava/lang/Object;

    iput-object p2, p0, Ljr;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Ljr;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Ljr;->d:Ljava/lang/Object;

    iget-object p0, p0, Ljr;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/Map$Entry;

    check-cast v3, Landroidx/camera/core/impl/LiveDataObservable$Result;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/Observable$Observer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Landroidx/camera/core/impl/LiveDataObservable$Result;->a:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/Observable$Observer;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable;

    check-cast v3, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Landroidx/camera/core/impl/LiveDataObservable;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable$Result;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Observable has not yet been initialized with a value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/impl/LiveDataObservable$Result;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable;

    check-cast v3, Landroidx/camera/core/impl/Observable$Observer;

    iget-object p0, p0, Landroidx/camera/core/impl/LiveDataObservable;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable$Result;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/core/impl/LiveDataObservable$Result;->a:Ljava/lang/Object;

    invoke-interface {v3, p0}, Landroidx/camera/core/impl/Observable$Observer;->a(Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    check-cast v3, Lcom/lightup/sdk/device/enums/PairOrientation;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;->H0(Lcom/lightup/sdk/device/enums/PairOrientation;)V

    :cond_2
    return-void

    :pswitch_3
    check-cast p0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    check-cast v3, Landroidx/camera/core/LegacySessionConfig;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object p0, v3, Landroidx/camera/core/SessionConfig;->g:Lot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;

    check-cast v3, Ljava/util/ArrayList;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->V()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;

    :cond_4
    if-eqz v1, :cond_5

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    return-void

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;

    check-cast v3, Lcom/lp/ble/entity/LPBluetoothDevice;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->W()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lf50;

    invoke-direct {v1, p0, v2}, Lf50;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lf50;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lf50;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$onBLEDeviceClick$1$1;

    invoke-direct {v0, p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$onBLEDeviceClick$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;Lcom/lp/ble/entity/LPBluetoothDevice;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lp/ble/manager/LPBLEManager;->getInstance()Lcom/lp/ble/manager/LPBLEManager;

    move-result-object p0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkBLEHelper$connectToBLE$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkBLEHelper$connectToBLE$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$onBLEDeviceClick$1$1;)V

    invoke-virtual {p0, v3, v1}, Lcom/lp/ble/manager/LPBLEManager;->connectBLE(Lcom/lp/ble/entity/LPBluetoothDevice;Lcom/lp/ble/manager/LPConnectBLEListener;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    check-cast v3, Landroid/app/job/JobParameters;

    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_7
    check-cast p0, Lr71;

    check-cast v3, Landroid/media/ImageWriter;

    invoke-virtual {p0, v3}, Lr71;->onImageReleased(Landroid/media/ImageWriter;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/google/firebase/messaging/ImageDownload;

    check-cast v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/ImageDownload;->h()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    :goto_2
    return-void

    :pswitch_9
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    check-cast v3, Lkotlinx/coroutines/android/HandlerContext;

    sget v0, Lkotlinx/coroutines/android/HandlerContext;->f:I

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p0, v3, v0}, Lkotlinx/coroutines/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void

    :pswitch_a
    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :pswitch_b
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    :goto_3
    return-void

    :pswitch_c
    check-cast p0, Ljava/util/Map$Entry;

    check-cast v3, Lcom/google/firebase/events/Event;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/events/EventHandler;

    invoke-interface {p0, v3}, Lcom/google/firebase/events/EventHandler;->a(Lcom/google/firebase/events/Event;)V

    return-void

    :pswitch_d
    check-cast p0, Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;

    check-cast v3, Landroid/view/Surface;

    invoke-interface {p0, v3}, Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;->a(Landroid/view/Surface;)V

    return-void

    :pswitch_e
    check-cast p0, Landroidx/camera/core/impl/Observable$Observer;

    check-cast v3, Landroidx/camera/video/internal/BufferProvider$State;

    invoke-interface {p0, v3}, Landroidx/camera/core/impl/Observable$Observer;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    check-cast p0, Ljava/util/Map$Entry;

    check-cast v3, Landroidx/camera/video/internal/BufferProvider$State;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/Observable$Observer;

    invoke-interface {p0, v3}, Landroidx/camera/core/impl/Observable$Observer;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_10
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    check-cast v3, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_11
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    check-cast v3, Landroidx/camera/core/SurfaceOutput;

    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Laj;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v3, v2}, Laj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v0, v1}, Landroidx/camera/core/SurfaceOutput;->R0(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->b:Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;

    invoke-virtual {v1, v0}, Landroidx/camera/core/processing/OpenGlRenderer;->g(Landroid/view/Surface;)V

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->i:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_12
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    check-cast v3, Landroidx/camera/core/SurfaceRequest;

    iget v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->f:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->b:Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;

    iget-boolean v4, v3, Landroidx/camera/core/SurfaceRequest;->f:Z

    iget-object v5, v3, Landroidx/camera/core/SurfaceRequest;->b:Landroid/util/Size;

    iget-object v6, v1, Landroidx/camera/core/processing/OpenGlRenderer;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v6, v2}, Landroidx/camera/core/processing/util/GLUtils;->d(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    iget-object v2, v1, Landroidx/camera/core/processing/OpenGlRenderer;->c:Ljava/lang/Thread;

    invoke-static {v2}, Landroidx/camera/core/processing/util/GLUtils;->c(Ljava/lang/Thread;)V

    if-eqz v4, :cond_8

    iget v1, v1, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->n:I

    goto :goto_4

    :cond_8
    iget v1, v1, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->o:I

    :goto_4
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->d:Ljava/util/concurrent/Executor;

    new-instance v5, Lfv;

    invoke-direct {v5, p0, v0, v1}, Lfv;-><init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    invoke-virtual {v3, v1, v2, v5}, Landroidx/camera/core/SurfaceRequest;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    if-eqz v4, :cond_9

    iput-object v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->j:Landroid/graphics/SurfaceTexture;

    goto :goto_5

    :cond_9
    iput-object v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->k:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    :goto_5
    return-void

    :pswitch_13
    check-cast p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    check-cast v3, Landroidx/camera/core/SurfaceRequest;

    iget v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->j:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->b:Landroidx/camera/core/processing/OpenGlRenderer;

    iget-object v4, v1, Landroidx/camera/core/processing/OpenGlRenderer;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v4, v2}, Landroidx/camera/core/processing/util/GLUtils;->d(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    iget-object v2, v1, Landroidx/camera/core/processing/OpenGlRenderer;->c:Ljava/lang/Thread;

    invoke-static {v2}, Landroidx/camera/core/processing/util/GLUtils;->c(Ljava/lang/Thread;)V

    iget v1, v1, Landroidx/camera/core/processing/OpenGlRenderer;->m:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iget-object v1, v3, Landroidx/camera/core/SurfaceRequest;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Lp3;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v3, v5}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v2, v4}, Landroidx/camera/core/SurfaceRequest;->b(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    new-instance v4, Lbt;

    invoke-direct {v4, p0, v3, v0, v1}, Lbt;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    invoke-virtual {v3, v1, v2, v4}, Landroidx/camera/core/SurfaceRequest;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :pswitch_14
    check-cast p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    check-cast v3, Landroidx/camera/core/SurfaceOutput;

    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Laj;

    invoke-direct {v1, p0, v3, v2}, Laj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v0, v1}, Landroidx/camera/core/SurfaceOutput;->R0(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->b:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {v1, v0}, Landroidx/camera/core/processing/OpenGlRenderer;->g(Landroid/view/Surface;)V

    iget-object p0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->i:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_15
    check-cast p0, Landroidx/fragment/app/DefaultSpecialEffectsController;

    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    sget v0, Landroidx/fragment/app/DefaultSpecialEffectsController;->h:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/SpecialEffectsController;->a(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    return-void

    :pswitch_16
    check-cast p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;

    check-cast v3, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;->h()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, v3}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_17
    check-cast p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;

    check-cast v3, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;->h()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, v3}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_18
    check-cast p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;->h()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_19
    check-cast p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;

    check-cast v3, Landroidx/credentials/GetCredentialResponse;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;->h()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, v3}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :pswitch_1a
    check-cast p0, Landroidx/credentials/CredentialManagerCallback;

    check-cast v3, Landroidx/credentials/GetCredentialResponse;

    invoke-interface {p0, v3}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :pswitch_1b
    check-cast p0, Landroidx/credentials/CredentialManagerCallback;

    check-cast v3, Landroidx/credentials/exceptions/GetCredentialException;

    invoke-interface {p0, v3}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_1c
    check-cast p0, Landroidx/credentials/playservices/controllers/GetRestoreCredential/CredentialProviderGetDigitalCredentialController;

    check-cast v3, Landroidx/credentials/GetCredentialResponse;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetRestoreCredential/CredentialProviderGetDigitalCredentialController;->f()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, v3}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

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
