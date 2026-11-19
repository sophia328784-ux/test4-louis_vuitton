.class public Lcom/networkbench/agent/impl/asyncaction/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;

.field private static final b:Ljava/lang/String; = "nbsHandler"

.field private static final c:Ljava/lang/String; = "handleMessage"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/l;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;",
            ")V"
        }
    .end annotation

    .line 77
    const-string p0, "nbsHandler"

    const-string v0, "getField nbsHandler failed"

    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 79
    :try_start_1
    sget-object v2, Lcom/networkbench/agent/impl/asyncaction/l;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_0
    const/4 p0, 0x1

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 82
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 83
    sget-object p1, Lcom/networkbench/agent/impl/asyncaction/l;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "set nbsHandler failed"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private b()Z
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/l;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "ui is closed"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/q;->e()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/l;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "traceEngine or currentContextTrace is null, skip async hook"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return v1
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/asyncaction/q;
    .locals 0

    .line 76
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/l;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke source: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "configInstrumentHandler to instrumentObj:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    instance-of v1, p1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/l;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "handler not rewrite handleMessage, skip"

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;-><init>(Lcom/networkbench/agent/impl/asyncaction/q;)V

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;)V

    :cond_1
    return-void
.end method
