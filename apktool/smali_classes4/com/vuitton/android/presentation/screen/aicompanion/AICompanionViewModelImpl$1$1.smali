.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;",
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
        "loginState",
        "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;"
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$1$1"
    f = "AICompanionViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$1$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result v2

    const/4 v10, 0x0

    const/16 v11, 0x1fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
