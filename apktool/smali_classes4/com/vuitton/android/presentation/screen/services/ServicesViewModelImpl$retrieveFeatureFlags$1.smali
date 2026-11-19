.class final Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$retrieveFeatureFlags$1"
    f = "ServicesViewModelImpl.kt"
    l = {
        0xc5,
        0xc6,
        0xc7,
        0xc8,
        0xc9
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->h:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->h:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->h:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->g:I

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->f:Z

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->e:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v4, v3

    move v3, v1

    move v1, v4

    move v4, v0

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->e:Z

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iget-boolean v6, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, v3

    move v3, v0

    move-object v0, v10

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_CREATE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v9, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->g:I

    invoke-virtual {v1, p1, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto/16 :goto_4

    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BOOKING_MY_EXPERIENCES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iput v8, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->g:I

    invoke-virtual {v1, v3, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    goto/16 :goto_4

    :cond_7
    move-object v10, v3

    move v3, p1

    move-object p1, v10

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CARE_SERVICES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iput v7, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->g:I

    invoke-virtual {v1, v8, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_8

    goto :goto_4

    :cond_8
    move-object v10, v0

    move v0, p1

    move-object p1, v7

    move-object v7, v10

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->e:Z

    iput v6, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->g:I

    invoke-virtual {v1, v8, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_9

    goto :goto_4

    :cond_9
    move v10, v0

    move v0, p1

    move-object p1, v6

    move v6, v3

    move v3, v10

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CLIENT_QR_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-boolean v6, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->e:Z

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->f:Z

    iput v5, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$retrieveFeatureFlags$1;->g:I

    invoke-virtual {v1, v8, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_a

    :goto_4
    return-object v2

    :cond_a
    move v4, p1

    move v2, v3

    move v1, v6

    move-object p1, p0

    move v3, v0

    move-object p0, v7

    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;-><init>(ZZZZZ)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
