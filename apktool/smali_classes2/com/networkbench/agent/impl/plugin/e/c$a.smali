.class Lcom/networkbench/agent/impl/plugin/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/e/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, ""

    const-string v1, "ping sceneSubject onResponse"

    const-string v2, "pingPlugin NBSThreadExecutor.isExecutorServiceStop()"

    const-string v3, "PingPlugin error: "

    const-string v4, "pingPlugin errorDesc: "

    const-string v5, "PingPlugin getErrorData:"

    const-string v6, "dnsServer:"

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    const-string v9, "PingRunnable run ..."

    invoke-static {v9}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v9

    invoke-virtual {v9}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/networkbench/agent/impl/util/v;->a(Landroid/content/Context;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v10, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    if-nez v9, :cond_1

    :try_start_1
    const-string v0, "No network"

    invoke-static {v10, v0}, Lcom/networkbench/agent/impl/plugin/e/c;->a(Lcom/networkbench/agent/impl/plugin/e/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iput-boolean v7, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    const-string v0, " PingRunnable  error :  \u65ad\u7f51 \u8fd4\u56de...."

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iput-boolean v8, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/e/c;->m()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/e/c;->f(Lcom/networkbench/agent/impl/plugin/e/c;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    :try_start_2
    iget-object v9, v10, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/e/c;->h()Lcom/networkbench/agent/impl/c/e;

    move-result-object v9

    const-string v10, "PingPlugin begin run"

    invoke-interface {v9, v10}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v10

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/networkbench/agent/impl/plugin/e/c;->a(Lcom/networkbench/agent/impl/plugin/e/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/networkbench/agent/impl/plugin/e/c;->b(Lcom/networkbench/agent/impl/plugin/e/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/e/c;->i()Lcom/networkbench/agent/impl/c/e;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v6}, Lcom/networkbench/agent/impl/plugin/e/c;->a(Lcom/networkbench/agent/impl/plugin/e/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iget-object v6, v6, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v9, "-c"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v11}, Lcom/networkbench/agent/impl/plugin/e/c;->b(Lcom/networkbench/agent/impl/plugin/e/c;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "-s"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v11}, Lcom/networkbench/agent/impl/plugin/e/c;->c(Lcom/networkbench/agent/impl/plugin/e/c;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/e/c;->d(Lcom/networkbench/agent/impl/plugin/e/c;)Lcom/networkbench/agent/impl/plugin/e/b;

    move-result-object v0

    iget-object v9, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iget-object v10, v9, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v9}, Lcom/networkbench/agent/impl/plugin/e/c;->b(Lcom/networkbench/agent/impl/plugin/e/c;)I

    move-result v9

    invoke-virtual {v0, v10, v6, v9}, Lcom/networkbench/agent/impl/plugin/e/b;->a(Ljava/lang/String;Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/e/c;->d(Lcom/networkbench/agent/impl/plugin/e/c;)Lcom/networkbench/agent/impl/plugin/e/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/plugin/e/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/networkbench/agent/impl/plugin/e/c;->a(Lcom/networkbench/agent/impl/plugin/e/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/e/c;->d(Lcom/networkbench/agent/impl/plugin/e/c;)Lcom/networkbench/agent/impl/plugin/e/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/plugin/e/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/networkbench/agent/impl/plugin/e/c;->c(Lcom/networkbench/agent/impl/plugin/e/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/e/c;->j()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v5}, Lcom/networkbench/agent/impl/plugin/e/c;->e(Lcom/networkbench/agent/impl/plugin/e/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iput-boolean v7, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iput-boolean v8, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :goto_2
    :try_start_3
    instance-of v5, v0, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iput-boolean v8, v5, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    instance-of v5, v0, Ljava/io/IOException;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/networkbench/agent/impl/plugin/e/c;->a(Lcom/networkbench/agent/impl/plugin/e/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iput-boolean v7, v5, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/e/c;->k()Lcom/networkbench/agent/impl/c/e;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v4}, Lcom/networkbench/agent/impl/plugin/e/c;->e(Lcom/networkbench/agent/impl/plugin/e/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isEndSuccess:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iget-boolean v4, v4, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/networkbench/agent/impl/plugin/e/c;->l()Lcom/networkbench/agent/impl/c/e;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :goto_4
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iput-boolean v8, v3, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/e/c;->m()Lcom/networkbench/agent/impl/c/e;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_5
    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/e/c;->f(Lcom/networkbench/agent/impl/plugin/e/c;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c$a;->a:Lcom/networkbench/agent/impl/plugin/e/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    throw v0
.end method
