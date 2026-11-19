.class public LZjTIAZ/XBnaCg;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/net/ConnectivityManager$NetworkCallback;

.field public static b:Landroid/app/Application;

.field public static c:Landroid/net/LinkProperties;

.field public static final d:Landroid/os/Handler;

.field public static final e:Ljava/lang/Runnable;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, LZjTIAZ/XBnaCg;->d:Landroid/os/Handler;

    new-instance v0, LZjTIAZ/XBnaCg$Gkmnlv;

    invoke-direct {v0}, LZjTIAZ/XBnaCg$Gkmnlv;-><init>()V

    sput-object v0, LZjTIAZ/XBnaCg;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 6

    sget-object v0, LZjTIAZ/XBnaCg;->b:Landroid/app/Application;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "oKqA\\[K\u000eaTGQ\\EDQFD\u0005mnmjcr}maqqhzsEHH\\JZ"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, LZjTIAZ/XBnaCg;->b:Landroid/app/Application;

    const-string v3, "mJ{]VQ[IgXAE"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    :goto_0
    return v1

    :goto_1
    const-string v3, "M|Sw`qaEeFZN^cCQE"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gVV\\]\\JCeTQhZ\u007fYLLXEIY\u0006\u0006\u0010DPQKW\u001c\u0007"

    invoke-static {v0, v5, v4}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v3, v0, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1
.end method

.method public static b()V
    .locals 5

    sget-object v0, LZjTIAZ/XBnaCg;->b:Landroid/app/Application;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, LZjTIAZ/ZptgnD;->v()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_1
    move v2, v0

    :goto_0
    :try_start_2
    monitor-exit v1

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    sget-object v1, LZjTIAZ/XBnaCg;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, LZjTIAZ/XBnaCg$Gnixwn;

    invoke-direct {v1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    sput-object v1, LZjTIAZ/XBnaCg;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_1
    sget-object v1, LZjTIAZ/XBnaCg;->b:Landroid/app/Application;

    const-string v2, "mJ{]VQ[IgXAE"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_4

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    sget-object v3, LZjTIAZ/XBnaCg;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_4
    :goto_2
    return-void

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    const-string v2, "M|Sw`qaEeFZN^cCQE"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|@rZ@FJRW^GrPB@W[AhMABMQBI\u0003AWTHZ\u0002:"

    invoke-static {v1, v4, v3}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v2, v1, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c()V
    .locals 5

    sget-object v0, LZjTIAZ/XBnaCg;->b:Landroid/app/Application;

    if-eqz v0, :cond_2

    sget-object v1, LZjTIAZ/XBnaCg;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "mJ{]VQ[IgXAE"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    sget-object v2, LZjTIAZ/XBnaCg;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sput-object v1, LZjTIAZ/XBnaCg;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void

    :goto_1
    :try_start_1
    const-string v2, "M|Sw`qaEeFZN^cCQE"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{KgVT[\\TtCv]YZuYJA\u000bI_\\@B\u001b\u0002"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-static {v2, v0, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v1, LZjTIAZ/XBnaCg;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void

    :goto_2
    sput-object v1, LZjTIAZ/XBnaCg;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    throw v0

    :cond_2
    :goto_3
    return-void
.end method
