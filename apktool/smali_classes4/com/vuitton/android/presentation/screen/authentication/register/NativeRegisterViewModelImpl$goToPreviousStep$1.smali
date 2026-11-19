.class final Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$goToPreviousStep$1"
    f = "NativeRegisterViewModelImpl.kt"
    l = {
        0x10c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->REGISTRATION_ADDRESS:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v3, v0, :cond_2

    add-int/lit8 v3, p1, -0x2

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->CREDENTIALS:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-lt v3, p1, :cond_3

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v3}, Ljava/lang/Integer;-><init>(I)V

    iput v4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;->b:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
