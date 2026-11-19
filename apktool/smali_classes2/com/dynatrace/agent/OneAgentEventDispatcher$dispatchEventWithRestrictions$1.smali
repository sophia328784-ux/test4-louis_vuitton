.class final synthetic Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithRestrictions$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/json/JSONObject;",
        "Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithRestrictions$1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithRestrictions$1;

    const-string v4, "sanitizeRumEvent(Lorg/json/JSONObject;)Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;"

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-class v2, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationStrategiesKt;

    const-string v3, "sanitizeRumEvent"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithRestrictions$1;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithRestrictions$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x2

    new-array v0, p0, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

    sget-object v1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->g:Ld20;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->f:Ld20;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lfw;

    const/16 v4, 0xb

    invoke-direct {v1, v0, v4}, Lfw;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lms;

    const/16 v4, 0x1388

    invoke-direct {v0, v4, p0}, Lms;-><init>(II)V

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

    aput-object v1, v4, v2

    sget-object v1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->j:Ld20;

    aput-object v1, v4, v3

    sget-object v1, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->k:Ld20;

    aput-object v1, v4, p0

    sget-object p0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->i:Ld20;

    const/4 v1, 0x3

    aput-object p0, v4, v1

    const/4 p0, 0x4

    aput-object v0, v4, p0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7, v4}, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeKt;->a(Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;)Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {p0, v8}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->e(Lorg/json/JSONObject;Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;)V

    goto :goto_0

    :cond_0
    const-string v8, "event_properties."

    invoke-static {v6, v8, v2}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "session_properties."

    invoke-static {v6, v8, v2}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;

    invoke-direct {p1, p0, v0, v1}, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;-><init>(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p1, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;->a:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->b(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object v0

    new-instance v1, Lx20;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lx20;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->f(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$sorted$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$sorted$1;-><init>(Lkotlin/sequences/Sequence;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;->c:Ljava/util/List;

    const/16 v4, 0x32

    if-le v1, v4, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v5, v6}, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sanitation: json contains too many attributes in event_properties. namespace : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; dropped attributes: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v0, p1, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "dt.support.api.has_dropped_properties"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "dt.support.api.has_dropped_custom_properties"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_7
    return-object p1
.end method
