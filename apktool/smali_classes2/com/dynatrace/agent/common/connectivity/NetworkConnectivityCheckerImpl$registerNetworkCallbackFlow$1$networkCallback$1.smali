.class public final Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1;->a:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/dynatrace/agent/common/connectivity/NetworkType;->WIFI:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lcom/dynatrace/agent/common/connectivity/NetworkType;->CELLULAR:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/dynatrace/agent/common/connectivity/NetworkType;->ETHERNET:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/dynatrace/agent/common/connectivity/NetworkType;->OTHER:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    :goto_0
    new-instance v0, Lcom/dynatrace/agent/common/connectivity/NetworkState;

    invoke-direct {v0, p1, p2}, Lcom/dynatrace/agent/common/connectivity/NetworkState;-><init>(ZLcom/dynatrace/agent/common/connectivity/NetworkType;)V

    iget-object p0, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1;->a:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
