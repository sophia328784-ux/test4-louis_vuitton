.class LZjTIAZ/USrWvK$agXqxh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/USrWvK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSqa/MjE/FSp;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LZjTIAZ/USrWvK;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/USrWvK$agXqxh;->ZRQiWB:LZjTIAZ/USrWvK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object p0, p0, LZjTIAZ/USrWvK$agXqxh;->ZRQiWB:LZjTIAZ/USrWvK;

    sget v0, LZjTIAZ/USrWvK;->v:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :catch_0
    :goto_0
    :try_start_2
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebViewClient;

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :try_start_3
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    sget-object v3, LZjTIAZ/USrWvK;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    :try_start_4
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    sget-object v3, LZjTIAZ/USrWvK;->m0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_3
    :try_start_5
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    sget-object v3, LZjTIAZ/USrWvK;->i0:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_4
    :try_start_6
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_5
    :try_start_7
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_6
    :try_start_8
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearFormData()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_7
    :try_start_9
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearSslPreferences()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_8
    :try_start_a
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_9
    :try_start_b
    iget-object v2, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :catch_a
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_c
    iput-object v1, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    throw v2

    :catch_b
    :goto_1
    iput-object v1, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_0
    iget-object v1, p0, LZjTIAZ/USrWvK;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v2, LZjTIAZ/USrWvK$XDqkTi;->DESTROYED:LZjTIAZ/USrWvK$XDqkTi;

    iput-object v2, p0, LZjTIAZ/USrWvK;->b:LZjTIAZ/USrWvK$XDqkTi;

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    iget-object p0, p0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    :catchall_2
    move-exception p0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw p0

    :goto_2
    :try_start_f
    sget-object v3, LZjTIAZ/USrWvK;->W:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LZjTIAZ/USrWvK;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v2}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    iput-object v1, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    iget-object v1, p0, LZjTIAZ/USrWvK;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    sget-object v2, LZjTIAZ/USrWvK$XDqkTi;->DESTROYED:LZjTIAZ/USrWvK$XDqkTi;

    iput-object v2, p0, LZjTIAZ/USrWvK;->b:LZjTIAZ/USrWvK$XDqkTi;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    iget-object p0, p0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget p0, LZjTIAZ/USrWvK;->v:I

    xor-int/lit16 p0, p0, 0x252d

    if-eqz p0, :cond_3

    :goto_3
    sget p0, LZjTIAZ/USrWvK;->v:I

    add-int/lit16 v0, p0, 0xa9

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_2

    const/16 p0, 0xd7

    if-eq v0, p0, :cond_1

    goto :goto_3

    :cond_1
    :goto_4
    sget p0, LZjTIAZ/USrWvK;->v:I

    rem-int/lit8 p0, p0, 0x49

    rem-int/lit8 p0, p0, 0x26

    sput p0, LZjTIAZ/USrWvK;->v:I

    goto :goto_4

    :cond_2
    :goto_5
    sget v0, LZjTIAZ/USrWvK;->v:I

    add-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x57

    xor-int/lit16 v0, v0, 0x941

    sput v0, LZjTIAZ/USrWvK;->v:I

    goto :goto_5

    :cond_3
    :goto_6
    return-void

    :catchall_3
    move-exception p0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw p0

    :goto_7
    iget-object v2, p0, LZjTIAZ/USrWvK;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    sget-object v3, LZjTIAZ/USrWvK$XDqkTi;->DESTROYED:LZjTIAZ/USrWvK$XDqkTi;

    iput-object v3, p0, LZjTIAZ/USrWvK;->b:LZjTIAZ/USrWvK$XDqkTi;

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    iget-object p0, p0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    :catchall_4
    move-exception p0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw p0
.end method
