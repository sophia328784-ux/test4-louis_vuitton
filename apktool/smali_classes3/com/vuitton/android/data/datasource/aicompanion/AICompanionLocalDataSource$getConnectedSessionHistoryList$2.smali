.class final Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$getConnectedSessionHistoryList$2"
    f = "AICompanionLocalDataSource.kt"
    l = {
        0x89,
        0x9c,
        0xa0
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->h:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->h:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->i:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->f:I

    iget v3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->e:I

    iget v6, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->d:I

    iget-object v7, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->b:Ljava/lang/Object;

    check-cast v8, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->f:I

    iget v3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->e:I

    iget v6, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->d:I

    iget-object v7, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->b:Ljava/lang/Object;

    check-cast v8, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->h:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->i:Ljava/lang/String;

    :try_start_3
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v6, p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    new-instance v7, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;

    invoke-direct {v7, p1, v1, v4}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->c:Ljava/lang/String;

    const/4 v8, 0x0

    iput v8, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->d:I

    iput v8, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->e:I

    iput v8, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->f:I

    iput v3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->g:I

    invoke-static {v6, v7, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4

    goto/16 :goto_4

    :cond_4
    move-object v7, v1

    move v1, v8

    move v3, v1

    move v6, v3

    move-object v8, p1

    :goto_0
    iget-object p1, v8, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v8, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->b:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->c:Ljava/lang/String;

    iput v6, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->d:I

    iput v3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->e:I

    iput v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->f:I

    iput v5, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->g:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->r(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    if-eqz p1, :cond_8

    sget-object v9, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v9}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object v9, v8, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->Companion:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->d:Ljava/lang/String;

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object p1, v9

    goto :goto_3

    :cond_8
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_3
    iget-object v7, v8, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    new-instance v8, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2;

    invoke-direct {v8, v5, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->b:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->c:Ljava/lang/String;

    iput v6, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->d:I

    iput v3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->e:I

    iput v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->f:I

    iput v2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;->g:I

    invoke-static {v7, v8, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_4
    return-object v0

    :cond_9
    move-object p0, p1

    :goto_5
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_7

    :cond_a
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_b

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_7
    check-cast p1, Lkotlin/Result;

    new-instance p0, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_b
    throw p0
.end method
