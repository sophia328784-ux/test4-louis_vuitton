.class public final Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\rB/\u0008\u0007\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;",
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
.field public static final e:Landroidx/datastore/preferences/core/Preferences$Key;


# instance fields
.field public final a:Landroidx/datastore/core/DataStore;

.field public final b:Lkotlinx/serialization/json/Json;

.field public final c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final d:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "data_store_profile_key"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->e:Landroidx/datastore/preferences/core/Preferences$Key;

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

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p4, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->d:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$2;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$clearProfile$1;->d:I

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

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$2;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$getProfile$1;->d:I

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

.method public final c(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;->d:I

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

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$1;->d:I

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

.method public final d(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->b:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->b:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iput-object p2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->b:Ljava/util/List;

    iput v4, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    const v2, 0x7feff

    invoke-static {p2, p1, v5, v2}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;Ljava/lang/Boolean;I)Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-result-object p1

    iput-object v5, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->b:Ljava/util/List;

    iput v3, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateAddressList$1;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->c(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0

    :cond_6
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public final e(Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->b:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->b:Ljava/lang/Boolean;

    iput v4, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    const v2, 0x7bfff

    invoke-static {p2, v5, p1, v2}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;Ljava/lang/Boolean;I)Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-result-object p1

    iput-object v5, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->b:Ljava/lang/Boolean;

    iput v3, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$updateKisaConsent$1;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->c(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0

    :cond_6
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method
