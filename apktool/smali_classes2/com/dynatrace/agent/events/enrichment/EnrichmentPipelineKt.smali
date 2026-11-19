.class public abstract Lcom/dynatrace/agent/events/enrichment/EnrichmentPipelineKt;
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
.method public static final a(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Ljava/util/concurrent/ConcurrentLinkedQueue;)Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;
    .locals 6

    iget-object v0, p0, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->a:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apply modifications: with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " modifier(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/agent/api/EventModifier;

    :try_start_0
    invoke-interface {v3}, Lcom/dynatrace/agent/api/EventModifier;->a()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "apply modifications: event modifier caused exception. EventModifier: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v5, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "apply modifications: event dropped by event modifier. EventModifier: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    const-string p1, "characteristics.has_session_properties"

    invoke-static {p1, v0}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    invoke-static {p0, v1, v2, p1}, Lcom/dynatrace/agent/events/enrichment/EnrichmentPipelineKt;->b(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Lorg/json/JSONObject;ZZ)Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final b(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Lorg/json/JSONObject;ZZ)Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;

    move-object/from16 v2, p0

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;-><init>(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->b:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "merge modifications: attribute \'"

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v9, v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->a:Z

    if-eqz v9, :cond_1

    const-string v9, "session_properties."

    invoke-static {v6, v9, v7}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_1

    :cond_1
    const-string v9, "event_properties."

    invoke-static {v6, v9, v7}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    :goto_1
    if-eqz v7, :cond_2

    new-instance v7, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v6, v9}, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' has been removed by event modifier"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "merge modifications: removing of protected attribute \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' is not allowed and thus ignored"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->b(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object v2

    new-instance v5, Lkotlin/sequences/SequencesKt___SequencesKt$sorted$1;

    invoke-direct {v5, v2}, Lkotlin/sequences/SequencesKt___SequencesKt$sorted$1;-><init>(Lkotlin/sequences/Sequence;)V

    invoke-virtual {v5}, Lkotlin/sequences/SequencesKt___SequencesKt$sorted$1;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0xb

    const/4 v9, 0x1

    iget-object v10, v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->f:Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    new-instance v12, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v12, v5, v11}, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    iget-object v11, v12, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;->a:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->h:[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

    invoke-static {v12, v5}, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeKt;->a(Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;)Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v4, v5}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->e(Lorg/json/JSONObject;Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v11}, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v13, v12, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;->b:Ljava/lang/Object;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->d:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    instance-of v13, v5, Ljava/util/Collection;

    if-eqz v13, :cond_8

    move-object v13, v5

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v13, 0x2

    new-array v14, v13, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeRetentionRule;

    aput-object v10, v14, v7

    sget-object v10, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->h:Ld20;

    aput-object v10, v14, v9

    new-instance v10, Lfw;

    invoke-direct {v10, v14, v6}, Lfw;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lms;

    invoke-direct {v6, v5, v13}, Lms;-><init>(II)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

    aput-object v10, v5, v7

    sget-object v10, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->i:Ld20;

    aput-object v10, v5, v9

    aput-object v6, v5, v13

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v5, v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->g:[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;

    :goto_5
    invoke-static {v12, v5}, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeKt;->a(Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;[Lcom/dynatrace/agent/events/enrichment/sanitation/AttributeSanitizer;)Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v6, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v11, v9}, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->e(Lorg/json/JSONObject;Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' is overwritten by "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v1, v11}, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->b(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object v0

    new-instance v2, Lk60;

    invoke-direct {v2, v10, v1, v6}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->f(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v2, Lkotlin/sequences/SequencesKt___SequencesKt$sorted$1;

    invoke-direct {v2, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$sorted$1;-><init>(Lkotlin/sequences/Sequence;)V

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->e:Ljava/util/ArrayList;

    const/16 v6, 0x32

    if-le v2, v6, :cond_e

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "merge modifications: dropped some fields after alphabetical sort; total fields: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", limit: 50; dropped keys: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const-string v11, ", "

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "dt.support.api.has_dropped_custom_properties"

    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_f
    iget-object v0, v1, Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "dt.support.api.has_dropped_properties"

    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_10
    new-instance v0, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;

    invoke-direct {v0, v4, v3}, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;-><init>(Lorg/json/JSONObject;Ljava/util/List;)V

    if-eqz p2, :cond_11

    iget-object v1, v0, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->a:Lorg/json/JSONObject;

    const-string v2, "dt.support.api.has_enrich_exception"

    invoke-virtual {v1, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_11
    return-object v0
.end method
