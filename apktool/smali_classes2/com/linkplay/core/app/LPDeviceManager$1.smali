.class Lcom/linkplay/core/app/LPDeviceManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/app/LPDeviceManager;->initProcessLifecycleObserver(Lcom/linkplay/core/clingx/InitUpnpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/app/LPDeviceManager;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/app/LPDeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/app/LPDeviceManager$1;->this$0:Lcom/linkplay/core/app/LPDeviceManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private restartUpnpSearchTask()V
    .locals 1

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager$1;->this$0:Lcom/linkplay/core/app/LPDeviceManager;

    invoke-static {p0}, Lcom/linkplay/core/app/LPDeviceManager;->a(Lcom/linkplay/core/app/LPDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string p1, "LINKPLAY_SDK"

    const-string v0, "App Network onAvailable"

    invoke-static {p1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/app/LPDeviceManager$1;->this$0:Lcom/linkplay/core/app/LPDeviceManager;

    invoke-virtual {p1}, Lcom/linkplay/core/app/LPDeviceManager;->onWifiReconnected()V

    invoke-direct {p0}, Lcom/linkplay/core/app/LPDeviceManager$1;->restartUpnpSearchTask()V

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager$1;->this$0:Lcom/linkplay/core/app/LPDeviceManager;

    invoke-virtual {p0}, Lcom/linkplay/core/app/LPDeviceManager;->runWiFiConnect()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p0, "LINKPLAY_SDK"

    const-string p1, "App Network onLost"

    invoke-static {p0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
