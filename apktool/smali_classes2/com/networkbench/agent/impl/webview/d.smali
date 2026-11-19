.class public Lcom/networkbench/agent/impl/webview/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/OutputStream;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 147
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 148
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 149
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHttpURLConnectionHeader  key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHttpURLConnectionHeader  value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    const-string p0, "User-Agent"

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->initUserHeaderValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/harvest/d/c;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private a(Ljava/lang/String;Lcom/networkbench/agent/impl/webview/c;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "NBSBrowserRunnable slurp :"

    new-instance v1, Lcom/networkbench/agent/impl/harvest/d/b;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/harvest/d/b;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    invoke-direct {v5, v4, v4, v4}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p2, Lcom/networkbench/agent/impl/webview/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->configureUrlConnectionOfWebView(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p2, Lcom/networkbench/agent/impl/webview/c;->d:Ljava/util/Map;

    invoke-direct {p0, v5, v6}, Lcom/networkbench/agent/impl/webview/d;->a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p2, Lcom/networkbench/agent/impl/webview/c;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/networkbench/agent/impl/webview/d;->a(Ljava/io/OutputStream;[B)V

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v7, Lcom/networkbench/agent/impl/harvest/a/c;

    iget-object p2, p2, Lcom/networkbench/agent/impl/webview/c;->a:Ljava/lang/String;

    invoke-direct {v7, p2, v2}, Lcom/networkbench/agent/impl/harvest/a/c;-><init>(Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    invoke-virtual {v7, p2, v1}, Lcom/networkbench/agent/impl/harvest/a/c;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v1

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/networkbench/agent/impl/harvest/d/c;->a(I)V

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/webview/d;->a(Lcom/networkbench/agent/impl/harvest/d/c;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/m/b;->a()Lcom/networkbench/agent/impl/m/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/m/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p0, v4

    move-object v4, v6

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    return v2

    :catchall_1
    move-object p0, v4

    :goto_1
    :try_start_2
    const-string p1, "error"

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_2
    return v3

    :catchall_2
    move-exception p1

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_7
    throw p1
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/m/b;->a()Lcom/networkbench/agent/impl/m/b;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/m/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/m/b;->a()Lcom/networkbench/agent/impl/m/b;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/m/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/m/b;->a()Lcom/networkbench/agent/impl/m/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/m/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Lcom/networkbench/agent/impl/webview/c;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/networkbench/agent/impl/webview/c;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NBSBrowserRunnable url: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/networkbench/agent/impl/webview/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", body: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/networkbench/agent/impl/webview/c;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/networkbench/agent/impl/webview/d;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/webview/c;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/m/b;->a()Lcom/networkbench/agent/impl/m/b;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/m/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    invoke-static {}, Lcom/networkbench/agent/impl/m/b;->a()Lcom/networkbench/agent/impl/m/b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/networkbench/agent/impl/m/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/networkbench/agent/impl/m/b;->a()Lcom/networkbench/agent/impl/m/b;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/m/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSBrowserRunnable   has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
