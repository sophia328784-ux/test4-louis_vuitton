.class final Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$confirmCredentials$1"
    f = "NativeRegisterViewModelImpl.kt"
    l = {
        0x16d,
        0x174
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->d:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->d:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->d:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->c:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {p1, v4, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->c:I

    invoke-virtual {v4, p1, p0}, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_5

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;)Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v4

    :cond_5
    :goto_1
    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_8

    move-object v4, p1

    check-cast v4, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;->a:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    if-ne v4, v6, :cond_7

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    iput-boolean v6, v4, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->a:Z

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->A:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen$BottomSheetAccount;->a:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen$BottomSheetAccount;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->b:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;->c:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_6

    :goto_2
    return-object v3

    :cond_6
    move-object p0, p1

    :goto_3
    move-object p1, p0

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Hc()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmCredentialSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmCredentialSuccess;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    :cond_8
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140a5a

    invoke-direct {p1, v1, v7, v5, v7}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Fc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V

    const-string p1, "NativeRegisterViewModelImpl"

    const-string v0, "Unable to get account status"

    sget-object v1, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v1, p1, v0, p0}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
