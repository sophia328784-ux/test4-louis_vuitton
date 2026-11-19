.class public Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private b:Ljava/lang/StringBuilder;

.field private c:Lcom/networkbench/agent/impl/plugin/traceroute/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->a:Lcom/networkbench/agent/impl/c/e;

    :try_start_0
    const-string v0, "nbstraceroute"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "load traceroute so Exception"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "load traceroute so UnsatisfiedLinkError"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/networkbench/agent/impl/plugin/traceroute/b;
    .locals 2

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-string v1, "traceroute"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object p1

    new-instance p2, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute$1;

    invoke-direct {p2, p0, v0}, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute$1;-><init>(Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->a(Ljava/util/ArrayList;)Lcom/networkbench/agent/impl/plugin/traceroute/b;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/networkbench/agent/impl/plugin/traceroute/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/networkbench/agent/impl/plugin/traceroute/b;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/agent/impl/plugin/traceroute/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/traceroute/b;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "begin execute by so file"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->execute([Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lcom/networkbench/agent/impl/plugin/traceroute/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error invoke execute"

    invoke-interface {v1, v2, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget p1, v0, Lcom/networkbench/agent/impl/plugin/traceroute/b;->b:I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->b:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/networkbench/agent/impl/plugin/traceroute/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->c:Lcom/networkbench/agent/impl/plugin/traceroute/a;

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/plugin/traceroute/a;->a(Lcom/networkbench/agent/impl/plugin/traceroute/b;)V

    goto :goto_1

    :cond_0
    const-string v1, "execute traceroute failed."

    iput-object v1, v0, Lcom/networkbench/agent/impl/plugin/traceroute/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->c:Lcom/networkbench/agent/impl/plugin/traceroute/a;

    invoke-interface {p0, p1, v1}, Lcom/networkbench/agent/impl/plugin/traceroute/a;->a(ILjava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public a(Lcom/networkbench/agent/impl/plugin/traceroute/a;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->c:Lcom/networkbench/agent/impl/plugin/traceroute/a;

    return-void
.end method

.method public appendResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->b:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->b:Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->c:Lcom/networkbench/agent/impl/plugin/traceroute/a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/plugin/traceroute/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public clearResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/traceroute/TraceRoute;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public native execute([Ljava/lang/Object;)I
.end method
