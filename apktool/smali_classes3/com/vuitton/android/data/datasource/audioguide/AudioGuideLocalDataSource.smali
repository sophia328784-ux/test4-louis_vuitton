.class public final Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\rB/\u0008\u0007\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;",
        "",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "dataStore",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutinesDispatchers",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Landroidx/datastore/core/DataStore;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/foundation/logger/Logger;)V",
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
.field public static final f:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final g:Landroidx/datastore/preferences/core/Preferences$Key;


# instance fields
.field public final a:Landroidx/datastore/core/DataStore;

.field public final b:Lkotlinx/serialization/json/Json;

.field public final c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final d:Lcom/vuitton/foundation/logger/Logger;

.field public e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "data_store_audioguide_access_data_key"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "data_store_audioguide_completed_tracks_key"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/core/DataStore;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;",
            "Lkotlinx/serialization/json/Json;",
            "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
            "Lcom/vuitton/foundation/logger/Logger;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p4, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->d:Lcom/vuitton/foundation/logger/Logger;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$2;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$clearAccessData$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$2;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getCompletedTracks$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;->d:I

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

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$1;->d:I

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

.method public final e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;->d:I

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

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$2;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveCompletedTrack$1;->d:I

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
