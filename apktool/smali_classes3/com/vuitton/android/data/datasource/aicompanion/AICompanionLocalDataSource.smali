.class public Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u0001:\u0001\u000bB\'\u0008\u0007\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;",
        "",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "dataStore",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutinesDispatchers",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Landroidx/datastore/core/DataStore;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final f:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final g:Landroidx/datastore/preferences/core/Preferences$Key;


# instance fields
.field public final a:Landroidx/datastore/core/DataStore;

.field public final b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final c:Lkotlinx/serialization/json/Json;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "data_store_ai_companion_connected_session_history"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "data_store_ai_companion_guest_session_history"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "data_store_ai_companion_video_last_displayed_date"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/core/DataStore;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;",
            "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
            "Lkotlinx/serialization/json/Json;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$deleteSessionHistoryEntry$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getConnectedSessionHistoryList$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$getGuestSessionHistoryList$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$hasVideoBeenDisplayed$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$hasVideoBeenDisplayed$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2;

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final f(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2;

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$2;

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateSessionIdHistoryEntry$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final h(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2;-><init>(Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lkotlin/coroutines/Continuation;Z)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
