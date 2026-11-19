.class public final Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;",
        "",
        "Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;",
        "baseJsonContainer",
        "",
        "isSessionPropertiesEvent",
        "<init>",
        "(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Z)V",
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
.field public final a:Z

.field public final b:Lorg/json/JSONObject;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

.field public final g:[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

.field public final h:[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Z)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->a:Z

    iget-object v0, p1, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->a:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->b:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->b:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->e:Ld20;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->f:Ld20;

    :goto_0
    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->f:Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

    const/4 p2, 0x2

    new-array v0, p2, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->h:Ld20;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lfw;

    const/16 v4, 0xb

    invoke-direct {v2, v0, v4}, Lfw;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->i:Ld20;

    new-instance v5, Lms;

    const/16 v6, 0x1388

    invoke-direct {v5, v6, p2}, Lms;-><init>(II)V

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

    aput-object v2, v8, v1

    aput-object v0, v8, v3

    aput-object v5, v8, p2

    iput-object v8, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->g:[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

    new-array v2, v3, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

    aput-object p1, v2, v1

    new-instance p1, Lfw;

    invoke-direct {p1, v2, v4}, Lfw;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lms;

    invoke-direct {v2, v6, p2}, Lms;-><init>(II)V

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

    aput-object p1, v4, v1

    sget-object p1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->j:Ld20;

    aput-object p1, v4, v3

    sget-object p1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->k:Ld20;

    aput-object p1, v4, p2

    aput-object v0, v4, v7

    const/4 p1, 0x4

    aput-object v2, v4, p1

    iput-object v4, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->h:[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "event_properties."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "session_properties."

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
