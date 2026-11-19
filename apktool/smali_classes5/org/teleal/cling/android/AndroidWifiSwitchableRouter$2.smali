.class Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$2;->a:Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 6

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getIpAddressByWifi()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getGatewayByWifi()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", IP="

    const-string v3, ", gatewayIP="

    const-string v4, "SSID="

    invoke-static {v4, v1, v2, p1, v3}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AndroidWifiSwitchRouter:onAvailable: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": WiFiAvailable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LINKPLAY_SDK"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$2;->a:Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    iget-object p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    const-string v3, ",BSSID="

    const-string v4, ":SSIDInfo, RSSI="

    const-string v5, "AndroidWifiSwitchRouter:onAvailable: SSID="

    invoke-static {v5, v1, v3, v2, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",preSSID=null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->i:Z

    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->j()V

    iget-object p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->h:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lm6;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Ll6;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->h:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    const-wide/16 v0, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lm6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Ll6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string p1, "LINKPLAY_SDK"

    const-string v0, "AndroidWifiSwitchRouter:onLost: WiFiNotAvailable"

    invoke-static {p1, v0}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$2;->a:Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    iput-boolean p1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->i:Z

    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->g()Z

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/app/LPDeviceManager;->runWiFiDisconnect()V

    return-void
.end method
