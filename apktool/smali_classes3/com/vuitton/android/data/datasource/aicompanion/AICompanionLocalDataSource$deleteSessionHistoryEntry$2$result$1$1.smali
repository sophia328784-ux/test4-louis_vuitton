.class final Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;
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
    c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1"
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

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/core/MutablePreferences;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    sget-object v1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    filled-new-array {p1, v1}, [Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object v1, v1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->Companion:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;

    invoke-virtual {v4}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->Companion:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->f(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
