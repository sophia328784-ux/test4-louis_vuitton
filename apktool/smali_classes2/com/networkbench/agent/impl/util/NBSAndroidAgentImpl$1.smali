.class Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 5

    const-string v0, "NBSAndroidAgentImpl  has an error : "

    const-string v1, "saveState : "

    const-string v2, "getVersion : "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->r()Lcom/networkbench/agent/impl/c/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->r()Lcom/networkbench/agent/impl/c/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)Lcom/networkbench/agent/impl/util/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/af;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)Lcom/networkbench/agent/impl/util/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/af;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/r;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)Lcom/networkbench/agent/impl/util/af;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->l(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)Lcom/networkbench/agent/impl/util/af;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/af;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)Lcom/networkbench/agent/impl/util/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/af;->r()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2.15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)Lcom/networkbench/agent/impl/util/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/af;->r()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2.16"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/r;->b(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/r;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)Lcom/networkbench/agent/impl/util/af;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/util/af;->l(Ljava/lang/String;)V

    throw v0
.end method
