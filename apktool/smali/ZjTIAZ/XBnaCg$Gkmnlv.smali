.class LZjTIAZ/XBnaCg$Gkmnlv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    sget-object v0, LZjTIAZ/XBnaCg;->c:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2

    invoke-static {}, LZjTIAZ/XBnaCg;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LZjTIAZ/XBnaCg;->c:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LZjTIAZ/XBnaCg;->b:Landroid/app/Application;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LZjTIAZ/ZptgnD;->v()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    :try_start_2
    monitor-exit v0

    if-nez v1, :cond_1

    sget-object v0, LZjTIAZ/XBnaCg;->b:Landroid/app/Application;

    invoke-static {v0, v2}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b(Landroid/app/Application;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_2
    sget-object v0, LZjTIAZ/XBnaCg;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, LZjTIAZ/XBnaCg;->c()V

    return-void

    :cond_2
    sget-object v0, LZjTIAZ/XBnaCg;->d:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method
