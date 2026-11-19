.class public interface abstract Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addNetworkToTraces(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
.end method

.method public abstract enterMethod(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
.end method

.method public abstract exitMethod(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
.end method

.method public abstract exitMethodCustom(Ljava/lang/String;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
.end method

.method public abstract getStartTime()J
.end method
