.class final Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase$run$1"
    f = "IsFeatureAvailableUseCase.kt"
    l = {
        0x29,
        0x2b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public final synthetic i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method public constructor <init>([Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->h:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->h:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;-><init>([Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->f:I

    iget v5, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->e:I

    iget v6, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->d:I

    iget-object v7, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v8, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget v1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->f:I

    iget v2, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->e:I

    iget v5, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->d:I

    iget-object v6, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v7, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr v2, v3

    if-ge v2, v1, :cond_4

    aget-object p1, v7, v2

    iput-object v7, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    iput-object v6, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput v5, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->d:I

    iput v2, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->e:I

    iput v1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->f:I

    iput v3, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->g:I

    invoke-virtual {v6, p1, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->a(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_4
    :goto_0
    move v3, v4

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->h:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    array-length v1, p1

    iget-object v5, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object v8, p1

    move v6, v4

    move-object v7, v5

    move v5, v6

    :goto_1
    if-ge v5, v1, :cond_8

    aget-object p1, v8, v5

    iput-object v8, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    iput-object v7, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput v6, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->d:I

    iput v5, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->e:I

    iput v1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->f:I

    iput v2, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$run$1;->g:I

    invoke-virtual {v7, p1, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->a(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    add-int/2addr v5, v3

    goto :goto_1

    :cond_8
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
