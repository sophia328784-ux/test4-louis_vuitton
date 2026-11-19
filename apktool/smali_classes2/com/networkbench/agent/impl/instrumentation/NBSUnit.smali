.class public Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CHILD_COUNT:I = 0x64

.field protected static final b:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field protected volatile a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public className:Ljava/lang/String;

.field public entryTimestamp:J

.field public exitTimestamp:J

.field public isComplete:Z

.field public isRootUnit:Z

.field public metricName:Ljava/lang/String;

.field public myUUID:Ljava/util/UUID;

.field public parentUUID:Ljava/util/UUID;

.field public shouldPushPop:Z

.field public threadId:J

.field public threadName:Ljava/lang/String;

.field public unitType:Lcom/networkbench/agent/impl/data/type/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isComplete:Z

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    const-string v0, "main"

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isRootUnit:Z

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->shouldPushPop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadName:Ljava/lang/String;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/r;->l:Lcom/networkbench/agent/impl/data/type/r;

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isUnitCanAdd(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "children size is too large, skip add child uuid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->a:Ljava/util/Set;

    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calcDurationWithEndStamp(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    iget-wide p0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public complete()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isComplete:Z

    return-void
.end method

.method public getChildren()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->a:Ljava/util/Set;

    return-object p0
.end method

.method public getDuration()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public ifEqualsMetricName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->className:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isComplete:Z

    return p0
.end method

.method public isUnitCanAdd(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ge p1, p2, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    sget-object p1, Lcom/networkbench/agent/impl/data/type/r;->l:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/networkbench/agent/impl/data/type/r;->k:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/networkbench/agent/impl/data/type/r;->p:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setUnitThreadWithUIThread()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unit get thread error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSUnit{hashCode ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "entryTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", exitTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", metricName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", parentUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", threadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadName:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
