.class public final Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    invoke-direct {v2}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;-><init>()V

    invoke-static {}, Lcom/dynatrace/agent/events/TracestateHeader;->c()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iput-object v4, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a:Ljava/lang/String;

    iput-object v4, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    const-string v0, "not_initialized"

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->c:Ljava/lang/String;

    new-instance v0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;

    invoke-direct {v0, v2, v4, v4}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;-><init>(Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iput-object v4, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a:Ljava/lang/String;

    iput-object v4, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    const-string v0, "disabled"

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->c:Ljava/lang/String;

    new-instance v0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;

    invoke-direct {v0, v2, v4, v4}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;-><init>(Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x30

    if-eqz v0, :cond_7

    sget-object v9, Lcom/dynatrace/agent/events/TraceparentHeader;->e:Lcom/dynatrace/agent/events/TraceparentHeader$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/dynatrace/agent/events/TraceparentHeader;->f:Lkotlin/text/Regex;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v10}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v9, "The provided traceparent header does not match the format:\'00-<trace-id-32-HEXDIG>-<parent-id-16-HEXDIG>-<trace-flags-2-HEXDIG>\'"

    invoke-static {v9}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {v9}, Lkotlin/text/MatchResult;->b()Lkotlin/text/MatchResult$Destructured;

    move-result-object v9

    iget-object v9, v9, Lkotlin/text/MatchResult$Destructured;->a:Lkotlin/text/MatchResult;

    invoke-interface {v9}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Ljava/lang/String;

    invoke-interface {v9}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    invoke-interface {v9}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    move v9, v7

    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_6

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    move v9, v7

    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    new-instance v11, Lcom/dynatrace/agent/events/TraceparentHeader;

    const-string v12, "00"

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/dynatrace/agent/events/TraceparentHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_5
    const-string v9, "Parent ID in traceparent header must not be all zeros"

    invoke-static {v9}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v9, "Trace ID in traceparent header must not be all zeros"

    invoke-static {v9}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_7
    :goto_2
    move-object v11, v4

    :goto_3
    if-nez v11, :cond_e

    if-eqz v0, :cond_e

    sget-object v9, Lcom/dynatrace/agent/events/TraceparentHeader;->e:Lcom/dynatrace/agent/events/TraceparentHeader$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x37

    if-ge v10, v11, :cond_8

    const-string v3, "Higher-version traceparent header is shorter than 55 characters, restarting trace"

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_4
    move-object v11, v4

    goto/16 :goto_7

    :cond_8
    sget-object v10, Lcom/dynatrace/agent/events/TraceparentHeader;->g:Lkotlin/text/Regex;

    invoke-virtual {v10, v9}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v9

    if-nez v9, :cond_9

    const-string v3, "Higher-version traceparent header does not match the expected format:\'<version-2-HEXDIG>-<trace-id-32-HEXDIG>-<parent-id-16-HEXDIG>-<flags-2-HEXDIG>\'"

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-interface {v9}, Lkotlin/text/MatchResult;->b()Lkotlin/text/MatchResult$Destructured;

    move-result-object v9

    iget-object v9, v9, Lkotlin/text/MatchResult$Destructured;->a:Lkotlin/text/MatchResult;

    invoke-interface {v9}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    invoke-interface {v9}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    invoke-interface {v9}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    move v3, v7

    :goto_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_d

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v7, v3, :cond_c

    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    new-instance v10, Lcom/dynatrace/agent/events/TraceparentHeader;

    const-string v11, "00"

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/dynatrace/agent/events/TraceparentHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v10

    goto :goto_7

    :cond_c
    const-string v3, "Parent ID in higher-version traceparent header must not be all zeros"

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    const-string v3, "Trace ID in higher-version traceparent header must not be all zeros"

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    :goto_7
    if-eqz v11, :cond_f

    iget-object v0, v11, Lcom/dynatrace/agent/events/TraceparentHeader;->b:Ljava/lang/String;

    iget-object v3, v11, Lcom/dynatrace/agent/events/TraceparentHeader;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    const-string v0, "external"

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/dynatrace/agent/events/TracestateHeader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;

    invoke-direct {v1, v2, v4, v0}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;-><init>(Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    const/16 v3, 0x8

    const/16 v5, 0x10

    if-nez v0, :cond_11

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {v5}, Lcom/dynatrace/agent/util/HexGenerator;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/dynatrace/agent/util/HexGenerator;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    const-string v0, "set"

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/agent/events/TracestateHeader;->a:Lcom/dynatrace/agent/events/TracestateHeader$TracestateContext;

    iget-object v1, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/dynatrace/agent/events/TracestateHeader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;

    invoke-direct {v3, v2, v0, v1}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;-><init>(Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_11
    :goto_8
    invoke-static {v5}, Lcom/dynatrace/agent/util/HexGenerator;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/dynatrace/agent/util/HexGenerator;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    const-string v0, "invalid_set"

    iput-object v0, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/agent/events/TracestateHeader;->a:Lcom/dynatrace/agent/events/TracestateHeader$TracestateContext;

    iget-object v1, v2, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/dynatrace/agent/events/TracestateHeader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;

    invoke-direct {v3, v2, v0, v1}, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;-><init>(Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
