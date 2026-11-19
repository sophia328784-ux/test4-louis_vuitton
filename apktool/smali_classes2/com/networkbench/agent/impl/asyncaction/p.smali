.class public Lcom/networkbench/agent/impl/asyncaction/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "TraceEngine"


# instance fields
.field protected a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/networkbench/agent/impl/instrumentation/TraceStack<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->c:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->e:I

    return-void
.end method

.method private f()Z
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->e:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private g()Lcom/networkbench/agent/impl/instrumentation/TraceStack;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    if-nez p0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/TraceStack;-><init>()V

    :cond_0
    return-object p0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->a:Ljava/lang/ThreadLocal;

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->a:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TraceEngine"

    const-string v1, "traceStackThreadLocal is empty, please check"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->h()V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V
    .locals 2

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isRootUnit:Z

    .line 60
    iget-boolean v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->shouldPushPop:Z

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/p;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    .line 62
    :cond_0
    iget p1, p0, Lcom/networkbench/agent/impl/asyncaction/p;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/networkbench/agent/impl/asyncaction/p;->e:I

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 2

    .line 50
    const-string v0, "TraceEngine"

    if-nez p1, :cond_0

    .line 51
    const-string p0, "traceEngine pushTraceContext unit is null, please check"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->g()Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 53
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 56
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_3
    const-string p0, "trace stack is null, please check"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    return-object p0
.end method

.method public b(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Z
    .locals 2

    iget v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->e:I

    iget-boolean p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->shouldPushPop:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->d()V

    return v1

    :cond_1
    const-string p0, "TraceEngine"

    const-string p1, "rootUnit is not equals real rootUnitTrace, skip end"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    return-object p0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/p;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
