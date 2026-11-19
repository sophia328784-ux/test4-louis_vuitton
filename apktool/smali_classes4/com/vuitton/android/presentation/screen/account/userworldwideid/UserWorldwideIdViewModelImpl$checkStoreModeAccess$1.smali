.class final Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;
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
    c = "com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModelImpl$checkStoreModeAccess$1"
    f = "UserWorldwideIdViewModelImpl.kt"
    l = {
        0x54,
        0x55,
        0x5e,
        0x6b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlin/jvm/internal/Ref$IntRef;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->f:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->f:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;-><init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->f:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v1

    goto :goto_0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->c:Ljava/lang/Object;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    :goto_0
    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    const/16 v8, 0xd

    if-ge v1, v8, :cond_d

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->e:I

    invoke-static {v5, p0}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    goto/16 :goto_6

    :cond_6
    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->c:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->e:I

    invoke-virtual {v8, p1, p0}, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto/16 :goto_6

    :cond_7
    :goto_2
    move-object v8, p1

    move-object v9, v1

    goto :goto_3

    :cond_8
    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, v8}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, v8, Lkotlin/Result$Failure;

    if-nez p1, :cond_b

    move-object p1, v8

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeAffiliation;

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeAffiliation;->a:Ljava/lang/String;

    if-eqz p1, :cond_a

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/models/StoreModeAffiliationUiModel;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/models/StoreModeAffiliationUiModel;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/models/StoreModeAffiliationUiModel;->a:Ljava/lang/String;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->j:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v10, Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation$Success;

    invoke-direct {v10, p1}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation$Success;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->c:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->e:I

    invoke-virtual {v1, v10, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v1, v5

    goto :goto_4

    :cond_9
    iget p1, v9, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    add-int/lit8 v1, p1, 0x1

    iput v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_5

    :cond_a
    new-instance p1, Lcom/vuitton/foundation/model/domain/error/storemode/StoreModeException$NullRmsCodeException;

    invoke-direct {p1}, Lcom/vuitton/foundation/model/domain/error/storemode/StoreModeException$NullRmsCodeException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, v9, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    add-int/lit8 v1, p1, 0x1

    iput v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    :cond_b
    :goto_5
    move-object v1, v9

    invoke-static {v8}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_c

    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    add-int/2addr p1, v6

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    :cond_c
    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->c:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->d:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;->e:I

    const-wide/16 v8, 0x3a98

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    :goto_6
    return-object v0

    :cond_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
