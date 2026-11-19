.class public final Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;",
        "determineFeatureStatusFromConfigsUseCase",
        "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;",
        "userPreferencesRepository",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

.field public final c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->a:Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;-><init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;->b:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;->b:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$isAvailable$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->a:Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;

    invoke-virtual {p2, p1, v0}, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->a(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->d()Z

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    if-eq p1, p2, :cond_5

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SNEAKERS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v0

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v3

    :goto_3
    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    move p0, v0

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move p0, v3

    :goto_4
    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    move v3, v0

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z
    .locals 2

    new-instance v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;-><init>([Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;-><init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->f:I

    iget p2, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->e:I

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->d:I

    iget-boolean v6, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->c:Z

    iget-object v7, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v8, v2

    move-object v2, v0

    move v0, v6

    move v6, v8

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget p1, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->f:I

    iget p2, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->e:I

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->d:I

    iget-boolean v3, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->c:Z

    iget-object v6, v0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v8, v2

    move-object v2, v0

    move v0, v3

    move v3, v8

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    array-length p3, p1

    move-object v2, v0

    move v3, v5

    move v0, p2

    move-object p2, p1

    move p1, p3

    move p3, v3

    :goto_1
    if-ge p3, p1, :cond_6

    aget-object v6, p2, p3

    iput-object p2, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    iput-boolean v0, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->c:Z

    iput v3, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->d:I

    iput p3, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->e:I

    iput p1, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->f:I

    iput v4, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->i:I

    invoke-virtual {p0, v6, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->a(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_4

    goto :goto_5

    :cond_4
    move-object v8, v6

    move-object v6, p2

    move p2, p3

    move-object p3, v8

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 p3, p2, 0x1

    move-object p2, v6

    goto :goto_1

    :cond_6
    :goto_3
    move v4, v5

    goto :goto_7

    :cond_7
    array-length p3, p1

    move-object v2, v0

    move v6, v5

    move v0, p2

    move-object p2, p1

    move p1, p3

    move p3, v6

    :goto_4
    if-ge p3, p1, :cond_a

    aget-object v7, p2, p3

    iput-object p2, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    iput-boolean v0, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->c:Z

    iput v6, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->d:I

    iput p3, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->e:I

    iput p1, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->f:I

    iput v3, v2, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->i:I

    invoke-virtual {p0, v7, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->a(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_8

    :goto_5
    return-object v1

    :cond_8
    move-object v8, v7

    move-object v7, p2

    move p2, p3

    move-object p3, v8

    :goto_6
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 p3, p2, 0x1

    move-object p2, v7

    goto :goto_4

    :cond_a
    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
