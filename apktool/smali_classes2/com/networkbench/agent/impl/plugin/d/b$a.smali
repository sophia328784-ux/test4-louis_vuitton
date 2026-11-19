.class public Lcom/networkbench/agent/impl/plugin/d/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/d/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "MTRPlugin NBSThreadExecutor.isExecutorServiceStop()"

    const-string v1, "MTRPlugin error: "

    const-string v2, "MTRPlugin errorDesc: "

    const-string v3, "dnsServer:"

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/networkbench/agent/impl/util/v;->a(Landroid/content/Context;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    if-nez v6, :cond_1

    :try_start_1
    const-string v3, "No network"

    invoke-static {v7, v3}, Lcom/networkbench/agent/impl/plugin/d/b;->a(Lcom/networkbench/agent/impl/plugin/d/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iput-boolean v4, v3, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    const-string v3, " MTRRunnable  error :  \u65ad\u7f51 \u8fd4\u56de...."

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iput-boolean v5, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    sget-object v1, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/d/b;->d(Lcom/networkbench/agent/impl/plugin/d/b;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v6, v7, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    sget-object v6, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v7, "MTRPlugin begin run"

    invoke-interface {v6, v7}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/networkbench/agent/impl/plugin/d/b;->a(Lcom/networkbench/agent/impl/plugin/d/b;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/networkbench/agent/impl/plugin/d/b;->b(Lcom/networkbench/agent/impl/plugin/d/b;Ljava/lang/String;)Ljava/lang/String;

    sget-object v6, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-static {v3}, Lcom/networkbench/agent/impl/plugin/d/b;->a(Lcom/networkbench/agent/impl/plugin/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/networkbench/agent/impl/plugin/d/c;

    invoke-direct {v3}, Lcom/networkbench/agent/impl/plugin/d/c;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iget-object v7, v7, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-static {v7}, Lcom/networkbench/agent/impl/plugin/d/b;->b(Lcom/networkbench/agent/impl/plugin/d/b;)I

    move-result v7

    sput v7, Lcom/networkbench/agent/impl/plugin/d/e;->a:I

    new-instance v7, Lcom/networkbench/agent/impl/plugin/d/b$a$1;

    invoke-direct {v7, p0}, Lcom/networkbench/agent/impl/plugin/d/b$a$1;-><init>(Lcom/networkbench/agent/impl/plugin/d/b$a;)V

    invoke-static {v6, v3, v7}, Lcom/networkbench/agent/impl/plugin/d/e;->a(Ljava/util/List;Lcom/networkbench/agent/impl/plugin/d/c;Lcom/networkbench/agent/impl/plugin/d/e$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :goto_1
    :try_start_3
    instance-of v6, v3, Ljava/lang/InterruptedException;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iput-boolean v5, v6, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_2
    instance-of v6, v3, Ljava/io/IOException;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/networkbench/agent/impl/plugin/d/b;->a(Lcom/networkbench/agent/impl/plugin/d/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iput-boolean v4, v6, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    sget-object v4, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-static {v2}, Lcom/networkbench/agent/impl/plugin/d/b;->c(Lcom/networkbench/agent/impl/plugin/d/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isEndSuccess:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iget-boolean v2, v2, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :goto_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iput-boolean v5, v2, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    sget-object v2, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/d/b;->d(Lcom/networkbench/agent/impl/plugin/d/b;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    throw v1
.end method
