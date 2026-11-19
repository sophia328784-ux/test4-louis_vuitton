.class public abstract Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "com.dynatrace.agent_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;)Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;->e(Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;)Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
