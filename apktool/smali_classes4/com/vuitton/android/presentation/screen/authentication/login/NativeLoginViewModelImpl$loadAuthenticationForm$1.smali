.class final Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1$WhenMappings;
    }
.end annotation

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
    c = "com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$loadAuthenticationForm$1"
    f = "NativeLoginViewModelImpl.kt"
    l = {
        0xc2
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {v1, v4}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1$1;

    invoke-direct {v5, v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lg3;

    const/4 v6, 0x3

    invoke-direct {v2, v6, v1}, Lg3;-><init>(ILjava/util/Set;)V

    new-instance v1, Ln50;

    invoke-direct {v1, v0}, Ln50;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;)V

    new-instance v6, Lmf0;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lmf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;I)V

    new-instance v8, Lmf0;

    invoke-direct {v8, v0, v3}, Lmf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;I)V

    new-instance v9, Lbe0;

    const/16 v0, 0xf

    invoke-direct {v9, v0}, Lbe0;-><init>(I)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;->b:I

    move-object v0, v4

    const/4 v4, 0x0

    move-object v3, v1

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v11, 0x58

    move-object v10, p0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_2

    return-object v13

    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v12, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
