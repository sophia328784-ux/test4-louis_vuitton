.class public abstract Lcom/dynatrace/android/callback/Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public static A()V
    .locals 2

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->SwipeToRefresh:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dynatrace/android/callback/CallbackCore;->f(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Ljava/lang/String;)V

    return-void
.end method

.method public static B()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->SwipeToRefresh:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore;->g(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void
.end method

.method public static C(Ljava/net/URLConnection;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/CallbackCore;->b(Ljava/net/HttpURLConnection;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static D(Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "web request tags already exists: x-dtc="

    :try_start_0
    const-string v1, "x-dtc"

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    const-string v2, "x-dynatrace"

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/dynatrace/android/callback/CallbackCore;->h(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " x-dynatrace="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public static E(Lcom/dynatrace/android/callback/ConnStateParms;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/dynatrace/android/callback/CallbackCore;->j(Lcom/dynatrace/android/callback/ConnStateParms;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public static b(Ljava/net/URLConnection;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public static c(Ljava/net/URLConnection;)I
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result p0

    return p0
.end method

.method public static d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_0
    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/net/URLConnection;)Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    new-instance v0, Lcom/dynatrace/android/callback/ConnStateParms;

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getInputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    sget-object v2, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-direct {v0, p0, v1, v2}, Lcom/dynatrace/android/callback/ConnStateParms;-><init>(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    :try_start_0
    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/Callback;->j(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/ConnStateParms;)V

    sget-object v2, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object v2, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/Callback;->j(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/ConnStateParms;)V

    sget-object p0, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object p0, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "tracked failed \'getInputStream\' method call"

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/Callback;->j(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/ConnStateParms;)V

    sget-object p0, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object p0, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    throw v1
.end method

.method public static h(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .locals 3

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    new-instance v0, Lcom/dynatrace/android/callback/ConnStateParms;

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getOutputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    sget-object v2, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-direct {v0, p0, v1, v2}, Lcom/dynatrace/android/callback/ConnStateParms;-><init>(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    :try_start_0
    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object v1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object v1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "tracked failed \'getOutputStream\' method call"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    iput-object p0, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object v1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    throw p0
.end method

.method public static j(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/ConnStateParms;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->f:Ljava/lang/String;

    iput-object p0, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    :cond_0
    :goto_1
    iput v0, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    return-void
.end method

.method public static k(Ljava/net/HttpURLConnection;)I
    .locals 3

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    new-instance v0, Lcom/dynatrace/android/callback/ConnStateParms;

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getResponseCode:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    sget-object v2, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-direct {v0, p0, v1, v2}, Lcom/dynatrace/android/callback/ConnStateParms;-><init>(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/Callback;->j(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/ConnStateParms;)V

    sget-object p0, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object p0, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    sget-object p0, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object p0, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "tracked failed \'getResponseCode\' method call"

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    iput-object p0, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput v1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object v1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->E(Lcom/dynatrace/android/callback/ConnStateParms;)V

    throw p0
.end method

.method public static l(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/net/HttpURLConnection;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/CallbackCore;->b(Ljava/net/HttpURLConnection;Z)V

    return-void
.end method

.method public static n(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->Clicked:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0, p0}, Lcom/dynatrace/android/callback/CallbackCore;->e(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Landroid/view/View;)V

    return-void
.end method

.method public static o()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->Clicked:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore;->g(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void
.end method

.method public static p(Lcom/vuitton/android/presentation/Hilt_LVApplication;)V
    .locals 6

    invoke-static {}, Lcom/dynatrace/android/agent/conf/ConfigurationPreset;->a()Lcom/dynatrace/android/agent/conf/Configuration;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v3, v1, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    if-eqz v3, :cond_1

    move-object v0, v3

    :cond_1
    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Runtime properties: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_b

    const-string p0, "Isolated service detected. Monitoring deactivated for this process"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_5

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_b

    const-string p0, "Secondary process detected. Monitoring deactivated for this process"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-void

    :cond_5
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    if-nez v0, :cond_6

    :try_start_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    invoke-virtual {v1, v0, p0}, Lcom/dynatrace/android/agent/AdkSettings;->b(Lcom/dynatrace/android/agent/conf/Configuration;Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p0, v1, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/dynatrace/android/agent/Core;->r:Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;->a()V

    :cond_7
    sget-object p0, Lcom/dynatrace/android/callback/CallbackCore;->b:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/Configuration;->i:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/dynatrace/android/agent/Core;->b:Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;

    sget-object v0, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;->b:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    new-instance v1, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;-><init>(Lcom/dynatrace/android/agent/TimeLineProvider;)V

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v0

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v1

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->i:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const-string v2, "null"

    :cond_a
    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;->b:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    iget-object v3, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->b:Lcom/dynatrace/android/lifecycle/appstart/AppStartAggregator;

    invoke-interface {v3, v0, v2}, Lcom/dynatrace/android/lifecycle/appstart/AppStartAggregator;->a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    move-result-object v0

    const/16 v4, 0x1388

    iget-object v5, v0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    invoke-virtual {v5, v4}, Lcom/dynatrace/android/agent/DTXAutoAction;->H(I)V

    new-instance v4, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    invoke-direct {v4, v2, v0, p0}, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;-><init>(Ljava/lang/String;Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;Lcom/dynatrace/android/lifecycle/appstart/AppStartController;)V

    invoke-interface {v3, v4}, Lcom/dynatrace/android/lifecycle/appstart/AppStartAggregator;->b(Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;)V

    new-instance v3, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;

    invoke-direct {v3}, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;-><init>()V

    iput-object v2, v3, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object v0, v3, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->d:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    iput-object v4, v3, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;->e:Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    iput-object v3, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->g:Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->f:Landroid/app/Application;

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->e:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public static q(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->ItemClicked:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0, p0}, Lcom/dynatrace/android/callback/CallbackCore;->e(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Landroid/view/View;)V

    return-void
.end method

.method public static r()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->ItemClicked:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore;->g(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void
.end method

.method public static s(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->ItemSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0, p0}, Lcom/dynatrace/android/callback/CallbackCore;->e(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Landroid/view/View;)V

    return-void
.end method

.method public static t()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->ItemSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore;->g(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void
.end method

.method public static u(Landroid/view/MenuItem;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->MenuItemClick:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0, p0}, Lcom/dynatrace/android/callback/CallbackCore;->d(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Landroid/view/MenuItem;)V

    return-void
.end method

.method public static v()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->MenuItemClick:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore;->g(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void
.end method

.method public static w(Landroid/view/MenuItem;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->OptionsItemSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0, p0}, Lcom/dynatrace/android/callback/CallbackCore;->d(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;Landroid/view/MenuItem;)V

    return-void
.end method

.method public static x()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->OptionsItemSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore;->g(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void
.end method

.method public static y()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->PageSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore;->c(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void
.end method

.method public static z()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->PageSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0}, Lcom/dynatrace/android/callback/CallbackCore;->g(Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;)V

    return-void
.end method
