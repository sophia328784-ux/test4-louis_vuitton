.class public final Lcom/dynatrace/agent/events/enrichment/TimeMetricsSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/events/enrichment/TimeMetricsSupplier;",
        "Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;",
        "Lcom/dynatrace/agent/events/enrichment/TimeMetrics;",
        "metrics",
        "<init>",
        "(Lcom/dynatrace/agent/events/enrichment/TimeMetrics;)V",
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


# instance fields
.field public final a:Lcom/dynatrace/agent/events/enrichment/TimeMetrics;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/events/enrichment/TimeMetrics;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/TimeMetricsSupplier;->a:Lcom/dynatrace/agent/events/enrichment/TimeMetrics;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/collections/builders/ListBuilder;
    .locals 3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/dynatrace/agent/events/enrichment/TimeMetricsSupplier;->a:Lcom/dynatrace/agent/events/enrichment/TimeMetrics;

    iget-wide v1, p0, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start_time"

    invoke-static {v0, v2, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;->b:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "duration"

    invoke-static {v0, v1, p0}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method
