.class public final synthetic Lr6;
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

    iput p3, p0, Lr6;->b:I

    iput-object p1, p0, Lr6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lr6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lr6;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/CredentialManagerCallback;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/credentials/CreateRestoreCredentialResponse;

    invoke-interface {v0, p0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/CredentialProviderCreatePublicKeyCredentialController;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/credentials/CreatePublicKeyCredentialResponse;

    iget-object v0, v0, Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/CredentialProviderCreatePublicKeyCredentialController;->f:Landroidx/credentials/CredentialManagerCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/credentials/CreatePasswordResponse;

    iget-object v0, v0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;->f:Landroidx/credentials/CredentialManagerCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/credentials/exceptions/CreateCredentialException;

    iget-object v0, v0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;->f:Landroidx/credentials/CredentialManagerCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_3
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/CredentialManagerCallback;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;->g()Landroidx/credentials/CredentialManagerCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;->g()Landroidx/credentials/CredentialManagerCallback;

    move-result-object v0

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/credentials/GetCredentialResponse;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;->g()Landroidx/credentials/CredentialManagerCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->j(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/a;

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/a;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/constraints/ConstraintListener;

    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->e:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/work/impl/constraints/ConstraintListener;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void

    :pswitch_9
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/ConstantObservable;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/Observable$Observer;

    sget-object v1, Landroidx/camera/core/impl/ConstantObservable;->b:Landroidx/camera/core/impl/ConstantObservable;

    :try_start_0
    iget-object v0, v0, Landroidx/camera/core/impl/ConstantObservable;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/Observable$Observer;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/Observable$Observer;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_a
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    sget v2, Landroidx/activity/ComponentActivity;->g:I

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v3, Lbn;

    invoke-direct {v3, p0, v0, v1}, Lbn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Landroidx/work/impl/utils/CancelWorkRunnable;->a(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/CameraX;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v1, v0, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraFactory;->shutdown()V

    iget-object v1, v0, Landroidx/camera/core/CameraX;->f:Landroid/os/HandlerThread;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/camera/core/CameraX;->d:Ljava/util/concurrent/Executor;

    instance-of v2, v1, Landroidx/camera/core/CameraExecutor;

    if-eqz v2, :cond_5

    check-cast v1, Landroidx/camera/core/CameraExecutor;

    iget-object v2, v1, Landroidx/camera/core/CameraExecutor;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v4, v1, Landroidx/camera/core/CameraExecutor;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v1, v1, Landroidx/camera/core/CameraExecutor;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_4
    iget-object v0, v0, Landroidx/camera/core/CameraX;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_6
    invoke-virtual {p0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void

    :pswitch_d
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/CameraRepository;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/CameraInternal;

    iget-object v1, v0, Landroidx/camera/core/impl/CameraRepository;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Landroidx/camera/core/impl/CameraRepository;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Landroidx/camera/core/impl/CameraRepository;->c:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Landroidx/camera/core/impl/CameraRepository;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Landroidx/camera/core/impl/CameraRepository;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    iput-object v3, v0, Landroidx/camera/core/impl/CameraRepository;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object v3, v0, Landroidx/camera/core/impl/CameraRepository;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_7
    :goto_5
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_e
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Lzi;

    sget v1, Landroidx/camera/core/impl/CameraPresenceProvider;->l:I

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/CameraInternal;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/Observer;

    sget v1, Landroidx/camera/core/impl/CameraPresenceProvider;->l:I

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/internal/Camera2PresenceSource;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    sget v0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->i:I

    :try_start_3
    iget-object v0, v2, Landroidx/camera/camera2/internal/Camera2PresenceSource;->f:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    iget-object v0, v0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->a:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v0

    :goto_7
    if-ge v1, v5, :cond_8

    aget-object v6, v0, v1

    sget-object v7, Landroidx/camera/core/CameraIdentifier;->c:Landroidx/camera/core/CameraIdentifier$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v3, v3}, Landroidx/camera/core/CameraIdentifier$Companion;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->g(Ljava/util/ArrayList;Landroidx/camera/core/CameraUnavailableException;)V

    invoke-virtual {p0, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :goto_8
    invoke-static {v0}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->a(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->g(Ljava/util/ArrayList;Landroidx/camera/core/CameraUnavailableException;)V

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    :goto_9
    return-void

    :pswitch_11
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/SessionConfig;

    sget-object v1, Landroidx/camera/core/impl/SessionConfig$SessionError;->SESSION_ERROR_SURFACE_NEEDS_RESET:Landroidx/camera/core/impl/SessionConfig$SessionError;

    invoke-interface {v0, p0, v1}, Landroidx/camera/core/impl/SessionConfig$ErrorListener;->a(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->x()J

    move-result-wide v1

    new-instance v3, Lmi;

    invoke-direct {v3, v0, v1, v2}, Lmi;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;J)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/base/Function;

    iget-object v1, v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->e:Ljava/lang/Object;

    invoke-interface {p0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->e:Ljava/lang/Object;

    new-instance v1, Lnc;

    invoke-direct {v1, v0, p0, v2}, Lnc;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;I)V

    iget-object p0, v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper;->h()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    invoke-interface {p0, v1}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    :goto_a
    return-void

    :pswitch_15
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/audio/AudioSource;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    iget-wide v0, v0, Landroidx/camera/video/internal/audio/AudioSource;->t:D

    invoke-interface {p0, v0, v1}, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;->b(D)V

    return-void

    :pswitch_17
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/audio/AudioSource;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/encoder/Encoder$ByteBufferInput;

    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->g:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v2, :cond_b

    const/4 p0, 0x2

    if-eq v1, p0, :cond_a

    goto :goto_b

    :cond_a
    const-string p0, "AudioSource is released"

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    goto :goto_b

    :cond_b
    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->l:Landroidx/camera/video/internal/BufferProvider;

    if-eq v1, p0, :cond_c

    invoke-virtual {v0, p0}, Landroidx/camera/video/internal/audio/AudioSource;->b(Landroidx/camera/video/internal/encoder/Encoder$ByteBufferInput;)V

    :cond_c
    :goto_b
    return-void

    :pswitch_18
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/CodecParameters;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->v(Landroidx/media3/exoplayer/CodecParameters;)V

    return-void

    :pswitch_19
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->g(Ljava/lang/String;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ConditionVariable;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Landroidx/media3/common/audio/AudioManagerCompat;->a:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    return-void

    :pswitch_1b
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/common/network/ProgressCallback;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadReport;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_1c
    iget-object v0, p0, Lr6;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    iget-object p0, p0, Lr6;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->c(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;Lkotlin/jvm/functions/Function0;)V

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
