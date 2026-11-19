.class final Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$redirectToEarlierStep$1"
    f = "NativeRegisterViewModelImpl.kt"
    l = {
        0x251,
        0x258,
        0x264,
        0x26d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->d:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->d:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->b:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->c:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_3

    move-object v6, p1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeBlocked;

    if-nez v8, :cond_5

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeToBeBlocked;

    if-eqz v7, :cond_4

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->d:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    if-eqz v1, :cond_7

    move-object v7, p1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;

    instance-of v9, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPassword;

    if-nez v9, :cond_9

    instance-of v9, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordRules;

    if-nez v9, :cond_9

    instance-of v9, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsName;

    if-nez v9, :cond_9

    instance-of v9, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsEmail;

    if-nez v9, :cond_9

    instance-of v9, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidEmail;

    if-nez v9, :cond_9

    instance-of v9, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UserAlreadyExists;

    if-nez v9, :cond_9

    instance-of v8, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$EmailAndUsernameNotMatch;

    if-eqz v8, :cond_8

    :cond_9
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->CREDENTIALS:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    iput v5, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->b:I

    invoke-interface {p1, v2, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_16

    goto/16 :goto_5

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidTitle;

    if-nez v8, :cond_d

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;

    if-eqz v7, :cond_c

    :cond_d
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->PERSONAL_INFO:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    iput v4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->b:I

    invoke-interface {p1, v2, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_16

    goto/16 :goto_5

    :cond_e
    :goto_3
    if-eqz v1, :cond_f

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_4

    :cond_f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;

    instance-of v7, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooShort;

    if-nez v7, :cond_11

    instance-of v7, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooLong;

    if-nez v7, :cond_11

    instance-of v7, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalid;

    if-nez v7, :cond_11

    instance-of v7, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalidCountry;

    if-nez v7, :cond_11

    instance-of v7, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$BirthdateInconsistent;

    if-nez v7, :cond_11

    instance-of v7, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPhone;

    if-nez v7, :cond_11

    instance-of v5, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCallingCode;

    if-eqz v5, :cond_10

    :cond_11
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->BIRTH_INFO:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->b:I

    invoke-interface {p1, v2, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_16

    goto :goto_5

    :cond_12
    :goto_4
    if-eqz v1, :cond_13

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_6

    :cond_13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPostalCode;

    if-nez v3, :cond_15

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidState;

    if-nez v3, :cond_15

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCity;

    if-nez v3, :cond_15

    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;

    if-eqz v1, :cond_14

    :cond_15
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->REGISTRATION_ADDRESS:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iput v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;->b:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_16

    :goto_5
    return-object v0

    :cond_16
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
