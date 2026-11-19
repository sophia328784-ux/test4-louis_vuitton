.class Lcom/networkbench/agent/impl/plugin/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "DnsRunnable   has an error : "

    const-string v1, "dns plugin dnsHostName:"

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

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    if-nez v4, :cond_1

    :try_start_1
    const-string v1, "No network"

    iput-object v1, v5, Lcom/networkbench/agent/impl/plugin/b;->c:Ljava/lang/String;

    iput-boolean v2, v5, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    const-string v1, " DnsRunnable  error :  \u65ad\u7f51 \u8fd4\u56de...."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iput-boolean v3, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v4, v5, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->m(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    new-instance v5, Lcom/networkbench/agent/impl/plugin/g/a/f;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/plugin/g/a/f;-><init>()V

    new-instance v6, Lcom/networkbench/agent/impl/plugin/b$a$1;

    invoke-direct {v6, p0}, Lcom/networkbench/agent/impl/plugin/b$a$1;-><init>(Lcom/networkbench/agent/impl/plugin/b$a;)V

    invoke-static {v4, v5, v6}, Lcom/networkbench/agent/impl/plugin/g/a/b;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/b$a;)V

    sget-object v4, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  cname:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ip:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dnsTime:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-wide v6, v1, Lcom/networkbench/agent/impl/plugin/b;->d:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorDesc:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/b;->c:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :goto_1
    :try_start_3
    instance-of v4, v1, Ljava/lang/InterruptedException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    if-eqz v4, :cond_3

    :try_start_4
    iput-boolean v3, v5, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/networkbench/agent/impl/plugin/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iput-boolean v2, v4, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :goto_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iput-boolean v3, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_4
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    throw v0
.end method
