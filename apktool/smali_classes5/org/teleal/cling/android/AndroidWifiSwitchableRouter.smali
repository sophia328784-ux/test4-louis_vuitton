.class public Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;
.super Lorg/teleal/cling/transport/SwitchableRouterImpl;
.source "SourceFile"


# instance fields
.field public final f:Landroid/net/wifi/WifiManager;

.field public final g:Landroid/net/ConnectivityManager;

.field public final h:Lio/reactivex/disposables/CompositeDisposable;

.field public i:Z

.field public j:Z

.field public final k:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/transport/SwitchableRouterImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V

    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->h:Lio/reactivex/disposables/CompositeDisposable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->i:Z

    iput-boolean p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->j:Z

    new-instance p1, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$2;

    invoke-direct {p1, p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$2;-><init>(Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;)V

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->k:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p3, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->f:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->g:Landroid/net/ConnectivityManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->j:Z

    sget-object p1, Landroidx/lifecycle/ProcessLifecycleOwner;->i:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/lifecycle/ProcessLifecycleOwner;->j:Landroidx/lifecycle/ProcessLifecycleOwner;

    iget-object p1, p1, Landroidx/lifecycle/ProcessLifecycleOwner;->g:Landroidx/lifecycle/LifecycleRegistry;

    new-instance p2, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$1;

    invoke-direct {p2, p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$1;-><init>(Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LifecycleRegistry;->a(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->g()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public final j()V
    .locals 4

    iget-boolean v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "AndroidWifiSwitchRouter:enable: UPnP start ++++"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->h:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->h:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Ll6;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0

    :cond_0
    return-void
.end method
