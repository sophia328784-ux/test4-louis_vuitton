.class final Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "preferences",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1"
    f = "AICompanionLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object v0, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/core/MutablePreferences;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->Companion:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    check-cast p1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iget-wide v7, v7, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->c:J

    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    sget-object v8, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8, v7, v4}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v7

    const-wide/16 v9, 0xc

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->d:Ljava/lang/String;

    if-nez v5, :cond_4

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;->d:Ljava/lang/String;

    invoke-static {v4, v2, v6, v5}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->a(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    move-result-object v4

    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->Companion:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
