.class public Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;
.super Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
.source "SourceFile"


# instance fields
.field public callType:I

.field public nodeType:I

.field public segmentType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->nodeType:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    iput v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;-><init>()V

    .line 15
    iput p3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    .line 16
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    .line 18
    iput-wide p4, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSTraceUnit{segmentType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nodeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->nodeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entryTimestamp="

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

    const-string v1, "\'} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
