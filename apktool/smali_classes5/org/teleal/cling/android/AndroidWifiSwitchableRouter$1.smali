.class Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final synthetic b:Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$1;->b:Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    return-void
.end method


# virtual methods
.method public onAppBackground()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$1;->b:Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    iput-boolean v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->j:Z

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->g:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->k:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->h:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Ll6;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onAppForeground()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$1;->b:Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->j:Z

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->g:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->k:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
