.class public interface abstract Lcom/dynatrace/agent/RumEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008`\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynatrace/agent/RumEventDispatcher;",
        "",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lorg/json/JSONObject;Z)V
.end method

.method public abstract b(Lorg/json/JSONObject;JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/agent/storage/preference/MetricsData;)V
.end method

.method public abstract c(Lorg/json/JSONObject;JJLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/agent/events/enrichment/WebContext;)V
.end method

.method public abstract d(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V
.end method
