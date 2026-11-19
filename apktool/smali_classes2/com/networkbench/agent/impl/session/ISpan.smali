.class public interface abstract Lcom/networkbench/agent/impl/session/ISpan;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract finish()V
.end method

.method public abstract finish(Lcom/networkbench/agent/impl/session/SpanStatus;)V
.end method

.method public abstract getData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getMetric(Ljava/lang/String;)Ljava/util/Map;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOperation()Ljava/lang/String;
.end method

.method public abstract getParentSpan()Lcom/networkbench/agent/impl/session/ISpan;
.end method

.method public abstract getSpanId()Ljava/lang/String;
.end method

.method public abstract getStatus()Lcom/networkbench/agent/impl/session/SpanStatus;
.end method

.method public abstract getTag(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public abstract getTraceId()Ljava/lang/String;
.end method

.method public abstract getTransaction()Lcom/networkbench/agent/impl/session/ISpan;
.end method

.method public abstract isFinished()Z
.end method

.method public abstract removeData(Ljava/lang/String;)V
.end method

.method public abstract removeMetric(Ljava/lang/String;)V
.end method

.method public abstract removeTag(Ljava/lang/String;)V
.end method

.method public abstract setData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setMetric(Ljava/lang/String;Ljava/lang/Number;)V
.end method

.method public abstract setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOperation(Ljava/lang/String;)V
.end method

.method public abstract setStatus(Lcom/networkbench/agent/impl/session/SpanStatus;)V
.end method

.method public abstract setStatusCode(Ljava/lang/String;)V
.end method

.method public abstract setTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setThrowable(Ljava/lang/Throwable;)V
.end method

.method public abstract startChild(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
.end method

.method public abstract startChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
.end method
