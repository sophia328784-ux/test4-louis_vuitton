.class public final Lcom/dynatrace/agent/events/enrichment/CachedMetricsSupplier;
.super Lcom/dynatrace/agent/events/enrichment/BaseMetricsSupplier;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/events/enrichment/CachedMetricsSupplier;",
        "Lcom/dynatrace/agent/events/enrichment/BaseMetricsSupplier;",
        "Lcom/dynatrace/agent/storage/preference/MetricsData;",
        "metricsCache",
        "Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;",
        "dataCollectionLevel",
        "<init>",
        "(Lcom/dynatrace/agent/storage/preference/MetricsData;Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V",
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
.field public final a:Lcom/dynatrace/agent/storage/preference/MetricsData;

.field public final b:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/preference/MetricsData;Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/dynatrace/agent/events/enrichment/BaseMetricsSupplier;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/CachedMetricsSupplier;->a:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iput-object p2, p0, Lcom/dynatrace/agent/events/enrichment/CachedMetricsSupplier;->b:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/collections/builders/ListBuilder;
    .locals 10

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/agent/events/enrichment/CachedMetricsSupplier;->a:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget v4, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    if-ltz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    const-string v5, "device.screen.width"

    invoke-static {v0, v5, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "device.screen.height"

    invoke-static {v0, v2, v4}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    const-string v4, "unknown"

    if-nez v2, :cond_3

    move-object v2, v4

    :cond_3
    const-string v5, "device.manufacturer"

    invoke-static {v0, v5, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v4

    :cond_4
    const-string v5, "device.model.identifier"

    invoke-static {v0, v5, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "device.is_rooted"

    invoke-static {v0, v5, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v2, v5, :cond_6

    if-eq v2, v6, :cond_5

    move-object v2, v3

    goto :goto_2

    :cond_5
    const-string v2, "landscape"

    goto :goto_2

    :cond_6
    const-string v2, "portrait"

    :goto_2
    const-string v5, "device.orientation"

    invoke-static {v0, v5, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->b(Lkotlin/collections/builders/ListBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lkotlin/ranges/IntRange;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-direct {v7, v8, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v7, v2}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v3, v5

    :cond_7
    const-string v2, "device.battery.level"

    invoke-static {v0, v2, v3}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->b(Lkotlin/collections/builders/ListBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "os.name"

    iget-object v3, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v4, v2

    :goto_3
    const-string v2, "os.version"

    invoke-static {v0, v2, v4}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    if-eqz v2, :cond_9

    iget-wide v3, v2, Lcom/dynatrace/agent/metrics/AppVersion;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app.version"

    invoke-static {v0, v4, v3}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "app.short_version"

    iget-object v2, v2, Lcom/dynatrace/agent/metrics/AppVersion;->b:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    const-string v2, "app.bundle"

    iget-object v3, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/dynatrace/agent/events/enrichment/CachedMetricsSupplier;->b:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    sget-object v2, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    if-ne p0, v2, :cond_a

    iget-object p0, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    iget-object v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    if-eqz p0, :cond_a

    if-eqz v2, :cond_a

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v3, v6, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "geo.location.latitude"

    invoke-static {v0, v4, v3}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v6, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v2, "geo.location.longitude"

    invoke-static {v0, v2, p0}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    sget-object p0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->Companion:Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;

    iget-object v1, v1, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;->a(Ljava/lang/String;)Lcom/dynatrace/agent/common/connectivity/NetworkType;

    move-result-object p0

    const-string v1, "network.connection.type"

    invoke-virtual {p0}, Lcom/dynatrace/agent/common/connectivity/NetworkType;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method
