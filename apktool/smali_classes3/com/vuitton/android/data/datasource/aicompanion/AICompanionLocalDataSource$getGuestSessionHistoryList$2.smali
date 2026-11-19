.class final Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;
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
    c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$getGuestSessionHistoryList$2"
    f = "AICompanionLocalDataSource.kt"
    l = {
        0xa7,
        0xb9
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

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

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->h:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->h:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->i:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->f:I

    iget v2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->e:I

    iget v4, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->d:I

    iget-object v5, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p1, v2

    move v2, v1

    move-object v1, v5

    move v5, v4

    move v4, p1

    move-object p1, v6

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->h:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->i:Ljava/lang/String;

    :try_start_2
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v5, p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    new-instance v6, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2$1$1;

    invoke-direct {v6, p1, v1, v2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2$1$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->d:I

    iput v2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->e:I

    iput v2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->f:I

    iput v4, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->g:I

    invoke-static {v5, v6, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    move v5, v4

    :goto_0
    iget-object v6, p1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    invoke-interface {v6}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput-object v1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->c:Ljava/lang/String;

    iput v5, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->d:I

    iput v4, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->e:I

    iput v2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->f:I

    iput v3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;->g:I

    invoke-static {v6, p0}, Lkotlinx/coroutines/flow/FlowKt;->r(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v1

    :goto_2
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    if-eqz p1, :cond_6

    sget-object v1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->Companion:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_7
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_5
    check-cast p0, Lkotlin/Result;

    new-instance p1, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_9
    throw p1
.end method
