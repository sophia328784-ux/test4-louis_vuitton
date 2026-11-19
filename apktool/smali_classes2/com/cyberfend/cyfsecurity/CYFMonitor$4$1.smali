.class Lcom/cyberfend/cyfsecurity/CYFMonitor$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFMonitor$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNKB/GsJ/KVH;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFMonitor$4;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFMonitor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFMonitor$4;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;->a:Landroid/app/Application;

    sget v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget-object v1, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v1, :cond_1

    iget-object v3, v1, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v1, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget-object v3, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v3, :cond_3

    iget-object v4, v3, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, v3, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    :cond_2
    if-nez v2, :cond_3

    sget-boolean v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->d:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x17

    iput v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/cyberfend/cyfsecurity/CYFMonitor$5;

    invoke-direct {v2}, Lcom/cyberfend/cyfsecurity/CYFMonitor$5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b(Landroid/app/Application;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    const-string v1, "M|S~\\\\FT~C"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KWg\\A\u0012FN1RENgSCJP\u0010\u000b"

    invoke-static {p0, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method
