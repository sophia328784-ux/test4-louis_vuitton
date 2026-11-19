.class Lcom/networkbench/agent/impl/i/f$2;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/i/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/i/f;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/i/f;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-static {v0}, Lcom/networkbench/agent/impl/i/f;->a(Lcom/networkbench/agent/impl/i/f;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-static {v0}, Lcom/networkbench/agent/impl/i/f;->a(Lcom/networkbench/agent/impl/i/f;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-static {v0}, Lcom/networkbench/agent/impl/i/f;->b(Lcom/networkbench/agent/impl/i/f;)Lcom/networkbench/agent/impl/i/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-static {v0}, Lcom/networkbench/agent/impl/i/f;->b(Lcom/networkbench/agent/impl/i/f;)Lcom/networkbench/agent/impl/i/g;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-static {v1}, Lcom/networkbench/agent/impl/i/f;->a(Lcom/networkbench/agent/impl/i/f;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/i/g;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page match 8060 or timeout, pageStatus is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-static {v1}, Lcom/networkbench/agent/impl/i/f;->b(Lcom/networkbench/agent/impl/i/f;)Lcom/networkbench/agent/impl/i/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/i/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageVisibleTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-static {v1}, Lcom/networkbench/agent/impl/i/f;->b(Lcom/networkbench/agent/impl/i/f;)Lcom/networkbench/agent/impl/i/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/i/g;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSViewStatusScan"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/i/f$2;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-static {p0}, Lcom/networkbench/agent/impl/i/f;->c(Lcom/networkbench/agent/impl/i/f;)V

    :cond_1
    :goto_0
    return-void
.end method
