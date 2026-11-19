.class public final Lcom/dynatrace/agent/events/enrichment/StoredMetricsSupplier;
.super Lcom/dynatrace/agent/events/enrichment/BaseMetricsSupplier;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/events/enrichment/StoredMetricsSupplier;",
        "Lcom/dynatrace/agent/events/enrichment/BaseMetricsSupplier;",
        "Lcom/dynatrace/agent/storage/preference/MetricsData;",
        "metricsData",
        "<init>",
        "(Lcom/dynatrace/agent/storage/preference/MetricsData;)V",
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


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/preference/MetricsData;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/dynatrace/agent/events/enrichment/BaseMetricsSupplier;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/StoredMetricsSupplier;->a:Lcom/dynatrace/agent/storage/preference/MetricsData;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/collections/builders/ListBuilder;
    .locals 9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/dynatrace/agent/events/enrichment/StoredMetricsSupplier;->a:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    if-ltz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const-string v4, "device.screen.width"

    invoke-static {v0, v4, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "device.screen.height"

    invoke-static {v0, v1, v3}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    const-string v3, "unknown"

    if-nez v1, :cond_3

    move-object v1, v3

    :cond_3
    const-string v4, "device.manufacturer"

    invoke-static {v0, v4, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    const-string v4, "device.model.identifier"

    invoke-static {v0, v4, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "device.is_rooted"

    invoke-static {v0, v4, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v1, v4, :cond_6

    if-eq v1, v5, :cond_5

    move-object v1, v2

    goto :goto_2

    :cond_5
    const-string v1, "landscape"

    goto :goto_2

    :cond_6
    const-string v1, "portrait"

    :goto_2
    const-string v4, "device.orientation"

    invoke-static {v0, v4, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->b(Lkotlin/collections/builders/ListBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lkotlin/ranges/IntRange;

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-direct {v6, v7, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v6, v1}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v2, v4

    :cond_7
    const-string v1, "device.battery.level"

    invoke-static {v0, v1, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->b(Lkotlin/collections/builders/ListBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "os.name"

    iget-object v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v3, v1

    :goto_3
    const-string v1, "os.version"

    invoke-static {v0, v1, v3}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    if-eqz v1, :cond_9

    iget-wide v2, v1, Lcom/dynatrace/agent/metrics/AppVersion;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.version"

    invoke-static {v0, v3, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "app.short_version"

    iget-object v1, v1, Lcom/dynatrace/agent/metrics/AppVersion;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    const-string v1, "app.bundle"

    iget-object v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    iget-object v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v3, v5, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "geo.location.latitude"

    invoke-static {v0, v4, v3}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v5, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "geo.location.longitude"

    invoke-static {v0, v2, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    sget-object v1, Lcom/dynatrace/agent/common/connectivity/NetworkType;->Companion:Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;->a(Ljava/lang/String;)Lcom/dynatrace/agent/common/connectivity/NetworkType;

    move-result-object p0

    const-string v1, "network.connection.type"

    invoke-virtual {p0}, Lcom/dynatrace/agent/common/connectivity/NetworkType;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method
