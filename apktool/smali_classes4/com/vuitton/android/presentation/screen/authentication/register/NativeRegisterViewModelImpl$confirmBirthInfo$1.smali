.class final Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$confirmBirthInfo$1"
    f = "NativeRegisterViewModelImpl.kt"
    l = {
        0x18c
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

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;->b:I

    invoke-static {v4, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_3

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Hc()V

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmBirthInfoSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmBirthInfoSuccess;

    invoke-virtual {v4, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    :cond_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8

    instance-of p1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    if-eqz p1, :cond_8

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListExceptionUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;->b:Ljava/util/List;

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPassword;

    if-eqz v1, :cond_4

    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->a:Landroidx/compose/runtime/MutableState;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPassword;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPassword;->b:Ljava/lang/String;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooShort;

    if-nez v1, :cond_6

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooLong;

    if-nez v1, :cond_6

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalid;

    if-nez v1, :cond_6

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalidCountry;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140967

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Fc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto :goto_1

    :cond_7
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;

    invoke-direct {v0, p0, v4, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
