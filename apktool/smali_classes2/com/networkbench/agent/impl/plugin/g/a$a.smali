.class Lcom/networkbench/agent/impl/plugin/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/g/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "tpPlugin errorDesc: "

    const-string v1, "tcpping dnsServer:"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/v;->a(Landroid/content/Context;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    if-nez v4, :cond_1

    :try_start_1
    const-string v1, "No network"

    invoke-static {v5, v1}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    const-string v1, " TcpPingRunnable  error :  \u65ad\u7f51 \u8fd4\u56de...."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iput-boolean v3, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/g/a;->e(Lcom/networkbench/agent/impl/plugin/g/a;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_1
    :try_start_2
    iget-object v4, v5, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Lcom/networkbench/agent/impl/plugin/g/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/networkbench/agent/impl/plugin/g/a;->b(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a;->h()Lcom/networkbench/agent/impl/c/e;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Lcom/networkbench/agent/impl/plugin/g/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object v4, v1, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/g/a;->b(Lcom/networkbench/agent/impl/plugin/g/a;)I

    move-result v1

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-static {v5}, Lcom/networkbench/agent/impl/plugin/g/a;->c(Lcom/networkbench/agent/impl/plugin/g/a;)I

    move-result v5

    new-instance v6, Lcom/networkbench/agent/impl/plugin/g/a/f;

    invoke-direct {v6}, Lcom/networkbench/agent/impl/plugin/g/a/f;-><init>()V

    new-instance v7, Lcom/networkbench/agent/impl/plugin/g/a$a$1;

    invoke-direct {v7, p0}, Lcom/networkbench/agent/impl/plugin/g/a$a$1;-><init>(Lcom/networkbench/agent/impl/plugin/g/a$a;)V

    invoke-static {v4, v1, v5, v6, v7}, Lcom/networkbench/agent/impl/plugin/g/a/e;->a(Ljava/lang/String;IILcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/e$a;)Lcom/networkbench/agent/impl/plugin/g/a/d;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->m(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    const-string v5, ""

    if-nez v1, :cond_2

    :try_start_3
    iget-object v1, v4, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    new-instance v4, Lcom/networkbench/agent/impl/plugin/g/a/f;

    invoke-direct {v4}, Lcom/networkbench/agent/impl/plugin/g/a/f;-><init>()V

    new-instance v6, Lcom/networkbench/agent/impl/plugin/g/a$a$2;

    invoke-direct {v6, p0}, Lcom/networkbench/agent/impl/plugin/g/a$a$2;-><init>(Lcom/networkbench/agent/impl/plugin/g/a$a;)V

    invoke-static {v1, v4, v6}, Lcom/networkbench/agent/impl/plugin/g/a/b;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/b$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    :try_start_4
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-static {v1, v5}, Lcom/networkbench/agent/impl/plugin/g/a;->d(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v4, v5}, Lcom/networkbench/agent/impl/plugin/g/a;->d(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iput-boolean v3, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_4
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/g/a;->e(Lcom/networkbench/agent/impl/plugin/g/a;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    goto :goto_4

    :goto_2
    :try_start_5
    instance-of v4, v1, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iput-boolean v3, v4, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_3
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iput-boolean v2, v4, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a;->j()Lcom/networkbench/agent/impl/c/e;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/g/a;->d(Lcom/networkbench/agent/impl/plugin/g/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isEndSuccess:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a;->k()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v2, "PingRunnable error: "

    invoke-interface {v0, v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :goto_4
    return-void

    :goto_5
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iput-boolean v3, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_7
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/g/a;->e(Lcom/networkbench/agent/impl/plugin/g/a;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    throw v0
.end method
