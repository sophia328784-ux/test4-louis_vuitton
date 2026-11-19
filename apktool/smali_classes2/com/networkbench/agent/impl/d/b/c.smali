.class public Lcom/networkbench/agent/impl/d/b/c;
.super Lcom/networkbench/agent/impl/d/b;
.source "SourceFile"


# instance fields
.field c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

.field d:Lcom/networkbench/agent/impl/a/a/b;

.field private e:Lcom/networkbench/agent/impl/d/b/a;

.field private f:Lcom/networkbench/agent/impl/d/b/b;

.field private g:Lcom/networkbench/agent/impl/a/a/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/d/f;->h:Lcom/networkbench/agent/impl/d/f;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/d/b;-><init>(Lcom/networkbench/agent/impl/d/f;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/c;->c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getTransactionData()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/c;->d:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isNetworkExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/c;->g:Lcom/networkbench/agent/impl/a/a/a;

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/d/b/c;->f()V

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/networkbench/agent/impl/d/b/c;->d:Lcom/networkbench/agent/impl/a/a/b;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/d/b/c;->d:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/a/a/b;->B()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/a/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/d/b/c;->g:Lcom/networkbench/agent/impl/a/a/a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/d/b/b;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/c;->c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v2, p0, Lcom/networkbench/agent/impl/d/b/c;->g:Lcom/networkbench/agent/impl/a/a/a;

    iget-object v3, v2, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/networkbench/agent/impl/a/a/a;->b:Ljava/util/Map;

    iget-object v2, v2, Lcom/networkbench/agent/impl/a/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/networkbench/agent/impl/d/b/b;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/c;->f:Lcom/networkbench/agent/impl/d/b/b;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/c;->d:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/b/b;->a(I)V

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/d/b/a;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/c;->d:Lcom/networkbench/agent/impl/a/a/b;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/c;->e:Lcom/networkbench/agent/impl/d/b/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->b(Lcom/networkbench/agent/impl/d/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/c;->f:Lcom/networkbench/agent/impl/d/b/b;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/b/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/c;->d:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->r()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public d()Lcom/networkbench/agent/impl/d/b/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/c;->e:Lcom/networkbench/agent/impl/d/b/a;

    return-object p0
.end method

.method public e()Lcom/networkbench/agent/impl/d/b/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/c;->f:Lcom/networkbench/agent/impl/d/b/b;

    return-object p0
.end method
