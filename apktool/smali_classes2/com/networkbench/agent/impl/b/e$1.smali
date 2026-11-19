.class Lcom/networkbench/agent/impl/b/e$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/b/e;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/b/e;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/e$1;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/b/e;->d()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v1, "stackService.start"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/e$1;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-static {v0}, Lcom/networkbench/agent/impl/b/e;->a(Lcom/networkbench/agent/impl/b/e;)Lcom/networkbench/agent/impl/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/e$1;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-static {p0}, Lcom/networkbench/agent/impl/b/e;->a(Lcom/networkbench/agent/impl/b/e;)Lcom/networkbench/agent/impl/b/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/a/a;->a()V

    :cond_0
    return-void
.end method
