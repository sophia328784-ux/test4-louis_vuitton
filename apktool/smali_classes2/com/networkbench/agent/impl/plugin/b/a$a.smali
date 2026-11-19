.class Lcom/networkbench/agent/impl/plugin/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/b/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "DownloadPlugin error: "

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    new-instance v4, Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    invoke-static {v5}, Lcom/networkbench/agent/impl/plugin/b/a;->a(Lcom/networkbench/agent/impl/plugin/b/a;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    invoke-static {v6}, Lcom/networkbench/agent/impl/plugin/b/a;->b(Lcom/networkbench/agent/impl/plugin/b/a;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/networkbench/agent/impl/plugin/b/b;-><init>(Ljava/lang/String;I)V

    invoke-static {v3, v4}, Lcom/networkbench/agent/impl/plugin/b/a;->a(Lcom/networkbench/agent/impl/plugin/b/a;Lcom/networkbench/agent/impl/plugin/b/b;)Lcom/networkbench/agent/impl/plugin/b/b;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/v;->a(Landroid/content/Context;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    if-nez v3, :cond_1

    :try_start_1
    invoke-static {v4}, Lcom/networkbench/agent/impl/plugin/b/a;->c(Lcom/networkbench/agent/impl/plugin/b/a;)Lcom/networkbench/agent/impl/plugin/b/b;

    move-result-object v3

    const-string v4, "No network"

    iput-object v4, v3, Lcom/networkbench/agent/impl/plugin/b/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    iput-boolean v1, v3, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    const-string v3, " DownloadRunnable  error :  \u65ad\u7f51 \u8fd4\u56de...."

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    iput-boolean v2, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/b/a;->d(Lcom/networkbench/agent/impl/plugin/b/a;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-static {v4}, Lcom/networkbench/agent/impl/plugin/b/a;->a(Lcom/networkbench/agent/impl/plugin/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    invoke-static {v3}, Lcom/networkbench/agent/impl/plugin/b/a;->c(Lcom/networkbench/agent/impl/plugin/b/a;)Lcom/networkbench/agent/impl/plugin/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/plugin/b/b;->a()V

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    iput-boolean v1, v3, Lcom/networkbench/agent/impl/plugin/h;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/networkbench/agent/impl/plugin/b/a;->h()Lcom/networkbench/agent/impl/c/e;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/b/a;->c(Lcom/networkbench/agent/impl/plugin/b/a;)Lcom/networkbench/agent/impl/plugin/b/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/b/a;->c(Lcom/networkbench/agent/impl/plugin/b/a;)Lcom/networkbench/agent/impl/plugin/b/b;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/networkbench/agent/impl/plugin/b/b;->a:Ljava/lang/String;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    instance-of v0, v3, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    iput-boolean v2, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_5
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/b/a;->d(Lcom/networkbench/agent/impl/plugin/b/a;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b/a$a;->a:Lcom/networkbench/agent/impl/plugin/b/a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    throw v0
.end method
