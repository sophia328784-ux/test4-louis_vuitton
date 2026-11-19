.class public Lcom/networkbench/agent/impl/asyncaction/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/asyncaction/c;


# static fields
.field private static final a:Ljava/lang/String; = "ClipNetwork"


# instance fields
.field private b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/b;->b:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z
    .locals 1

    .line 49
    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/r;->k:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 50
    const-string p0, "ClipNetwork"

    const-string p1, "local exit network unit exceed root exitTime, clip behind normal unit"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z
    .locals 5

    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->k:Lcom/networkbench/agent/impl/data/type/r;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ClipNetwork"

    if-eqz v0, :cond_1

    const-string p0, "local exit network unit exceed root exitTime, clip this network"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-wide v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    iget-wide p1, p2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    cmp-long p1, v3, p1

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/b;->b:Ljava/lang/ThreadLocal;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const-string p0, "tag local thread has over root exitTime network"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2
.end method
