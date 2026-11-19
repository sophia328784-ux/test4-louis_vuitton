.class public Lcom/linkplay/bonjour/wifi/WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LPServiceManager"


# instance fields
.field private iWifiCallback:Lcom/linkplay/bonjour/wifi/IWifiCallback;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/wifi/IWifiCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/linkplay/bonjour/wifi/WifiReceiver;->iWifiCallback:Lcom/linkplay/bonjour/wifi/IWifiCallback;

    return-void
.end method

.method private handlerConnectivityAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private handlerWifiConnectState(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/linkplay/bonjour/wifi/WifiReceiver;->iWifiCallback:Lcom/linkplay/bonjour/wifi/IWifiCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/linkplay/bonjour/wifi/IWifiCallback;->wifiDisconnected()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wifiInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/bonjour/wifi/WifiReceiver;->iWifiCallback:Lcom/linkplay/bonjour/wifi/IWifiCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/linkplay/bonjour/wifi/IWifiCallback;->wifiConnected(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handlerWifiState(Landroid/content/Intent;)V
    .locals 1

    const-string p0, "wifi_state"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/linkplay/bonjour/wifi/WifiReceiver;->handlerWifiConnectState(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/linkplay/bonjour/wifi/WifiReceiver;->handlerConnectivityAction(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/linkplay/bonjour/wifi/WifiReceiver;->handlerWifiState(Landroid/content/Intent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_2
        -0x45e5283a -> :sswitch_1
        -0x147b62d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
