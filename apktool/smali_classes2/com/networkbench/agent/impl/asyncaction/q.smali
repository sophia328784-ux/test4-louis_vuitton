.class public Lcom/networkbench/agent/impl/asyncaction/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "TraceEngineAdapter"

.field private static e:Lcom/networkbench/agent/impl/asyncaction/q;


# instance fields
.field protected final a:Lcom/networkbench/agent/impl/asyncaction/p;

.field protected b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/q;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/q;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/q;->e:Lcom/networkbench/agent/impl/asyncaction/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/p;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->c:Ljava/lang/String;

    return-void
.end method

.method private a(J)I
    .locals 2

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public static a()Lcom/networkbench/agent/impl/asyncaction/q;
    .locals 1

    .line 107
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/q;->e:Lcom/networkbench/agent/impl/asyncaction/q;

    return-object v0
.end method

.method private a(Lcom/networkbench/agent/impl/data/type/r;Ljava/lang/String;)Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 6

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Lcom/networkbench/agent/impl/data/type/r;)Z

    move-result v0

    const-string v1, "TraceEngineAdapter"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/q;->i()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "get activityRoot for unitType:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/q;->b(Lcom/networkbench/agent/impl/data/type/r;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/p;->b()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object p1

    iget-object p2, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iget-wide v4, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    cmp-long p2, v2, v4

    if-lez p2, :cond_4

    const-string p1, "find rootUnit is near then context trace"

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rootUnits.size():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TraceEngineAdapter"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 110
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v0, :cond_0

    .line 111
    iget-object v3, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    sget-object v4, Lcom/networkbench/agent/impl/data/type/r;->o:Lcom/networkbench/agent/impl/data/type/r;

    if-ne v3, v4, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->ifEqualsMetricName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "result unitType:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method private a(Lcom/networkbench/agent/impl/data/type/r;)Z
    .locals 0

    .line 114
    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->c:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->d:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->e:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->f:Lcom/networkbench/agent/impl/data/type/r;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/networkbench/agent/impl/data/type/r;)Z
    .locals 0

    .line 38
    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->j:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->i:Lcom/networkbench/agent/impl/data/type/r;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private i()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rootUnits.size():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TraceEngineAdapter"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    sget-object v4, Lcom/networkbench/agent/impl/data/type/r;->n:Lcom/networkbench/agent/impl/data/type/r;

    if-ne v3, v4, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "result unitType:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;
    .locals 7

    .line 100
    invoke-direct {p0, p3, p1}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Lcom/networkbench/agent/impl/data/type/r;Ljava/lang/String;)Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget-wide v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    .line 102
    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/asyncaction/q;->a(J)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>(Ljava/lang/String;IIJ)V

    .line 103
    iget-object p1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    iput-object p1, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    .line 104
    iput-object p3, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    .line 105
    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->addChild(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    .line 106
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/p;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    return-object v1
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/p;->a(Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V
    .locals 2

    .line 93
    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->c:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Lcom/networkbench/agent/impl/data/type/r;Ljava/lang/String;)Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    iput-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    .line 96
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->addChild(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/p;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    .line 98
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rootUnits add:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", roots size is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TraceEngineAdapter"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/p;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string p0, ""

    return-object p0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rootUnits remove:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TraceEngineAdapter"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/p;->b(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Z

    move-result p0

    return p0
.end method

.method public c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/asyncaction/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/p;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/asyncaction/f;

    const-string v0, "current metric listener is empty"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/f;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/p;->b()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->a()V

    return-object v0
.end method

.method public e()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->b()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->a()V

    return-void
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->e()I

    move-result p0

    return p0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/q;->a:Lcom/networkbench/agent/impl/asyncaction/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/p;->d()V

    return-void
.end method
