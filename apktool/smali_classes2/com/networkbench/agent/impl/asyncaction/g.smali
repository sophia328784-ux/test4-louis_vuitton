.class public Lcom/networkbench/agent/impl/asyncaction/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/g;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/g;->b()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p0

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/i;

    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;-><init>(Lcom/networkbench/agent/impl/asyncaction/q;)V

    invoke-direct {v0, p1, v1}, Lcom/networkbench/agent/impl/asyncaction/i;-><init>(Ljava/lang/Runnable;Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/g;->b()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "createProxyRunnable traceEngine is null, skip proxy runnable"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/h;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/asyncaction/h;-><init>()V

    new-instance v2, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    invoke-direct {v2, v0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;-><init>(Lcom/networkbench/agent/impl/asyncaction/q;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/asyncaction/h;->a(Lcom/networkbench/agent/impl/asyncaction/d;)V

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/asyncaction/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/asyncaction/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "proxyObj is not instanceOf Runnable proxyObj class:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", class loader is different"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    const-string v0, "use wrapper instead proxy"

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/g;->b()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p0

    if-nez p0, :cond_0

    .line 81
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "createProxyCallable traceEngine is null, skip proxy callable"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/h;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/h;-><init>()V

    .line 83
    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;-><init>(Lcom/networkbench/agent/impl/asyncaction/q;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/h;->a(Lcom/networkbench/agent/impl/asyncaction/d;)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    .line 86
    check-cast p0, Ljava/util/concurrent/Callable;

    return-object p0

    .line 87
    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/g;->a:Lcom/networkbench/agent/impl/c/e;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "proxyObj is not instanceOf Callable proxyObj class:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-object p1
.end method

.method public a()Z
    .locals 2

    .line 90
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "ui is closed"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/g;->b()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/q;->e()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public b()Lcom/networkbench/agent/impl/asyncaction/q;
    .locals 0

    .line 15
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p0

    return-object p0
.end method
