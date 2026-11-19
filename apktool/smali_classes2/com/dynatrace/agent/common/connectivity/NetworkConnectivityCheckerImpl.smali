.class public final Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;",
        "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;",
        "Landroid/content/Context;",
        "context",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "<init>",
        "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V",
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
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Lkotlinx/coroutines/flow/SharedFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;->a:Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;->b:Landroid/net/ConnectivityManager;

    new-instance p1, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;

    invoke-direct {p1, p0, v1}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;-><init>(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->d(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->a(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->z(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;->c:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;->c:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final b()Lcom/dynatrace/agent/common/connectivity/NetworkState;
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;->b:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-eqz v0, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->WIFI:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->CELLULAR:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->ETHERNET:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->OTHER:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    :goto_2
    if-nez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->NONE:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    :cond_7
    new-instance v2, Lcom/dynatrace/agent/common/connectivity/NetworkState;

    invoke-direct {v2, p0, v0}, Lcom/dynatrace/agent/common/connectivity/NetworkState;-><init>(ZLcom/dynatrace/agent/common/connectivity/NetworkType;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "currentNetworkState: security exception while accessing ConnectivityManager: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/dynatrace/agent/common/connectivity/NetworkState;

    sget-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->NONE:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    invoke-direct {p0, v1, v0}, Lcom/dynatrace/agent/common/connectivity/NetworkState;-><init>(ZLcom/dynatrace/agent/common/connectivity/NetworkType;)V

    return-object p0
.end method
