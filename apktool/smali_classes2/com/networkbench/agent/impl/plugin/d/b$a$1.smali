.class Lcom/networkbench/agent/impl/plugin/d/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/plugin/d/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/plugin/d/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/d/b$a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/d/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/d/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/d/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/plugin/d/c;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "MTR NetworkAnalysisTool onFailed failedContent:"

    invoke-static {v0, p2, p1}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/plugin/d/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/d/b$a;

    iget-object p1, p1, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-static {p1}, Lcom/networkbench/agent/impl/plugin/d/b;->c(Lcom/networkbench/agent/impl/plugin/d/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/d/b$a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-static {p0, p2}, Lcom/networkbench/agent/impl/plugin/d/b;->a(Lcom/networkbench/agent/impl/plugin/d/b;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/plugin/d/c;)Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 30
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/d/b$a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    .line 31
    sget-object p0, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "MTRPlugin NBSThreadExecutor.isExecutorServiceStop()"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public b(Lcom/networkbench/agent/impl/plugin/d/c;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/d/b$a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b$a;->a:Lcom/networkbench/agent/impl/plugin/d/b;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->c:Lcom/networkbench/agent/impl/plugin/d/c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    return-void
.end method
