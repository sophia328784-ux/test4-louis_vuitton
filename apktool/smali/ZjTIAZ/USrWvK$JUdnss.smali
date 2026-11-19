.class LZjTIAZ/USrWvK$JUdnss;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/USrWvK;


# direct methods
.method public constructor <init>(LZjTIAZ/USrWvK;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/USrWvK$JUdnss;->ZRQiWB:LZjTIAZ/USrWvK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object p0, p0, LZjTIAZ/USrWvK$JUdnss;->ZRQiWB:LZjTIAZ/USrWvK;

    sget v0, LZjTIAZ/USrWvK;->v:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_0

    sget-object v0, LZjTIAZ/USrWvK;->W:Ljava/lang/String;

    sget-object v2, LZjTIAZ/USrWvK;->p0:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v2, LZjTIAZ/USrWvK;->t0:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LZjTIAZ/USrWvK;->j(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, LZjTIAZ/USrWvK;->c:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :goto_0
    new-instance v3, Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    move-object v0, v2

    :cond_3
    invoke-direct {v3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v2, LZjTIAZ/USrWvK;->W:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/USrWvK;->f0:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    const/4 v3, 0x0

    :goto_1
    iput-object v3, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v2, LZjTIAZ/USrWvK;->a0:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LZjTIAZ/USrWvK;->j(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_4
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setWillNotDraw(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :try_start_4
    invoke-virtual {p0}, LZjTIAZ/USrWvK;->n()V

    invoke-virtual {p0}, LZjTIAZ/USrWvK;->p()V

    iget-object v4, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    iget-object v5, p0, LZjTIAZ/USrWvK;->d:Ljava/lang/String;

    sget-object v6, LZjTIAZ/USrWvK;->N:Ljava/lang/String;

    sget-object v7, LZjTIAZ/USrWvK;->Q:Ljava/lang/String;

    sget-object v8, LZjTIAZ/USrWvK;->E:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadDataWithBaseURL(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :goto_2
    sget-object v2, LZjTIAZ/USrWvK;->W:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/USrWvK;->h0:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, LZjTIAZ/USrWvK;->j(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method
