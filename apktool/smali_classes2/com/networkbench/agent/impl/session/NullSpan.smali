.class public Lcom/networkbench/agent/impl/session/NullSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/ISpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public finish(Lcom/networkbench/agent/impl/session/SpanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetric(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getParentSpan()Lcom/networkbench/agent/impl/session/ISpan;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0
.end method

.method public getSpanId()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getStatus()Lcom/networkbench/agent/impl/session/SpanStatus;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanStatus;->SPAN_STATUS_UNKNOWN:Lcom/networkbench/agent/impl/session/SpanStatus;

    return-object p0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-object p0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getTransaction()Lcom/networkbench/agent/impl/session/ISpan;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeMetric(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStatus(Lcom/networkbench/agent/impl/session/SpanStatus;)V
    .locals 0

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
    .locals 0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
    .locals 0

    .line 1
    return-object p0
.end method
