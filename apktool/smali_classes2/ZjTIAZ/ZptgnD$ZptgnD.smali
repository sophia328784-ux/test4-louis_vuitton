.class LZjTIAZ/ZptgnD$ZptgnD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static JavuPd:Ljava/lang/String;

.field static JmZaaq:Ljava/lang/String;

.field static erqsgh:Ljava/lang/String;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/ZptgnD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LZjTIAZ/ZptgnD$ZptgnD;->sd(Z)V

    return-void
.end method

.method public constructor <init>(LZjTIAZ/ZptgnD;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic sd(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LZjTIAZ/ZptgnD$ZptgnD;->sd(Z)V

    :cond_0
    const-string p0, "JLgVPF\u000fwtScUPA\u0017J\\DEMOBJ\u0010GCJHPTB\u0012\u0018"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/ZptgnD$ZptgnD;->JavuPd:Ljava/lang/String;

    const-string p0, "}@aq^BeSWTA_]eCY[^NH\rK]BNP\u0019\u0004"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/ZptgnD$ZptgnD;->JmZaaq:Ljava/lang/String;

    const-string p0, "}@apC@eSWTA_]eCY[^NH\rK]BNP\u0019\u0004"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/ZptgnD$ZptgnD;->erqsgh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, LZjTIAZ/USrWvK;

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v3, v0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    iget-object v4, v0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v5, v0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v6, v0, LZjTIAZ/ZptgnD;->i:Ljava/lang/String;

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v7, v0, LZjTIAZ/ZptgnD;->k:Ljava/lang/String;

    sget-wide v8, LZjTIAZ/ZxDSl;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;

    invoke-direct {v9, p0}, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;-><init>(LZjTIAZ/ZptgnD$ZptgnD;)V

    invoke-direct/range {v2 .. v9}, LZjTIAZ/USrWvK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LZjTIAZ/USrWvK$DRxlEm;)V

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v3, v0, LZjTIAZ/ZptgnD;->B:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iput-object v2, v0, LZjTIAZ/ZptgnD;->A:LZjTIAZ/USrWvK;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, LZjTIAZ/ZptgnD;->n()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v3, 0xe

    if-eqz v0, :cond_0

    :try_start_3
    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iput v3, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v4, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LZjTIAZ/ZptgnD$ZptgnD;->JmZaaq:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-static {v4, v0, v5}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    :cond_0
    :goto_0
    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {v0}, LZjTIAZ/ZptgnD;->b()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_1

    :try_start_6
    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iput v3, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_8
    sget-object v3, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LZjTIAZ/ZptgnD$ZptgnD;->erqsgh:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v3, v0, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :catch_4
    :cond_1
    :goto_1
    invoke-virtual {v2}, LZjTIAZ/USrWvK;->m()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :goto_2
    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/ZptgnD$ZptgnD;->JavuPd:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v0, v0, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v0, v0, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {v0}, LZjTIAZ/ZptgnD;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {v0}, LZjTIAZ/ZptgnD;->c()V

    :cond_2
    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {v0}, LZjTIAZ/ZptgnD;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {v0}, LZjTIAZ/ZptgnD;->x()V

    :cond_3
    iget-object p0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->j()V

    const/4 p0, 0x6

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e(I)V

    :goto_3
    return-void
.end method
