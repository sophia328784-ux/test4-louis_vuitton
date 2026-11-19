.class public Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;
.super Lcom/networkbench/agent/impl/harvest/HarvestAdapter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSTraceEngine"

.field private static final log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestAdapter;-><init>()V

    return-void
.end method

.method public static enterMethod(Ljava/lang/String;I)V
    .locals 1

    .line 54
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/r;->l:Lcom/networkbench/agent/impl/data/type/r;

    invoke-static {p0, p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethod(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has an error : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static enterMethod(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)V
    .locals 2

    .line 52
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethodWithTime(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;J)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has an error : "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->getSegmentType(Ljava/util/List;)Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result p1

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->l:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {v0, p0, p1, v1}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p1

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/q;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;->enterMethod(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/asyncaction/f; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has an error : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    return-void
.end method

.method public static enterMethodWithTime(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;J)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p0

    iput-wide p3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/q;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;->enterMethod(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/asyncaction/f; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "error happend in enterMethod0 :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NBSTraceEngine"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static exitCustomApiMethod(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "exitCustomApiMethod"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/q;->d()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/asyncaction/q;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;->exitMethodCustom(Ljava/lang/String;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/asyncaction/f; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "exitCustomApiMethod has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    return-void
.end method

.method public static exitMethod()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->exitMethodWithTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "exitMethod has an error : "

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static exitMethodWithTime(J)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/q;->d()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/asyncaction/q;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;->exitMethod(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J
    :try_end_0
    .catch Lcom/networkbench/agent/impl/asyncaction/f; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NBSTraceEngine exitMethod has an error :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NBSTraceEngine"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public static getSegmentType(Ljava/util/List;)Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->IMAGE:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->BITMAP:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-object p0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->JSON:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->JSON:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-object p0

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->NETWORK:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->NETWORK:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-object p0

    :cond_2
    const-string v0, "DATABASE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->DATABASE:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-object p0

    :cond_3
    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->CUSTOMEVENT:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->CUSTOM:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-object p0
.end method

.method public static notifyObserverAddNetworkToSegment(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/q;->d()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/asyncaction/q;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;->addNetworkToTraces(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/asyncaction/f; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error happend in notifyObserverAddNetworkToSegment :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :catch_0
    return-void
.end method
