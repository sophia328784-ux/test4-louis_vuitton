.class public Lcom/networkbench/agent/impl/data/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/networkbench/agent/impl/instrumentation/TraceStack<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/e;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private g()Lcom/networkbench/agent/impl/instrumentation/TraceStack;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    if-nez p0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/TraceStack;-><init>()V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/e;->c:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/e;->g()Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/e;->g()Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/e;->g()Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/e;->g()Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/e;->g()Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/e;->c:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/e;->c()V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/e;->c:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/e;->a:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/TraceStack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    :cond_0
    return-void
.end method
