.class public final Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BQ\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;",
        "getAccountActivationFormUseCase",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "accountActivationFormSupervisor",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;",
        "passwordValidationRules",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;",
        "accountActivationInitiateUseCase",
        "Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;",
        "accountActivationValidateUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "analyticsTracker",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V",
        "presentation"
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
.field public final a:Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;

.field public final b:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

.field public final d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final e:Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;

.field public final g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final i:Ljava/lang/String;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final o:Lkotlinx/coroutines/flow/SharedFlow;

.field public final p:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final q:Lkotlinx/coroutines/flow/Flow;

.field public final r:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V
    .locals 13
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v1, p4

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    move-object/from16 v1, p5

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v1, p6

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;

    move-object/from16 v1, p7

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;

    move-object/from16 v1, p8

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p9

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-string v1, "EXTRA_CID"

    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v1, "EXTRA_TRACKING_ORIGIN"

    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->i:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-direct {p1}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;-><init>()V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v5, v6, v2, v7}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v8

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->n:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v8

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->o:Lkotlinx/coroutines/flow/SharedFlow;

    const/4 v8, 0x7

    invoke-static {v5, v8, v2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v8

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->p:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->q:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-array v7, v7, [Lkotlinx/coroutines/flow/Flow;

    aput-object p1, v7, v5

    aput-object v1, v7, v6

    const/4 p1, 0x2

    aput-object v3, v7, p1

    const/4 p1, 0x3

    aput-object v4, v7, p1

    const/4 v1, 0x4

    aput-object v0, v7, v1

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v0, v7}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;

    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->r:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivateYourAccountClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivateYourAccountClick;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->s8(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$1;

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;->d:I

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v11, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v11, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->NEW_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {p1, v1}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object v4, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$2;

    invoke-direct {v2, p0, v4}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    move v4, v3

    new-instance v3, Lg3;

    const/4 v5, 0x0

    invoke-direct {v3, v5, p1}, Lg3;-><init>(ILjava/util/Set;)V

    new-instance v9, Lc1;

    const/4 p1, 0x4

    invoke-direct {v9, p0, p1}, Lc1;-><init>(Ljava/lang/Object;I)V

    new-instance v10, Lp;

    const/16 p0, 0xb

    invoke-direct {v10, p0}, Lp;-><init>(I)V

    iput v4, v11, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$loadPasswordForm$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v12, 0x7c

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final C3()V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ResendCodeClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ResendCodeClick;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->s8(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$resendCode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$resendCode$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final K2()V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ContinuePasswordClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ContinuePasswordClick;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->s8(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$confirmPassword$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$confirmPassword$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final V7()V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ConfirmActivationClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ConfirmActivationClick;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->s8(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$confirmActivation$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$confirmActivation$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->r:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->q:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lrq;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lrq;-><init>(I)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->a:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->c()V

    :cond_0
    return-void
.end method

.method public final getEvent()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->o:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final s8(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;)V
    .locals 13

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$PasswordStepScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$PasswordStepScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v9, 0x1

    move-object v8, v10

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string v5, "account_creation_password_step"

    const-string v6, "account_creation_steps"

    const-string v7, "mylv_native_authentification"

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivationCodeStepScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivationCodeStepScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v9, 0x1

    move-object v8, v10

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string v5, "account_creation_activation_code_step"

    const-string v6, "account_creation_steps"

    const-string v7, "mylv_native_authentification"

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivateYourAccountClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivateYourAccountClick;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v3, "activate_your_account_cta"

    const-string v4, "mylv_native"

    const-string v5, "click"

    const-string v6, "mylv_native_authentification"

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ContinuePasswordClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ContinuePasswordClick;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "account_creation_password_step"

    const-string v6, "continue_password"

    const-string v7, "account"

    const-string v8, "click"

    const-string v9, "mylv_native_authentification"

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ResendCodeClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ResendCodeClick;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "account_creation_activation_code_step"

    const-string v6, "resend_code"

    const-string v7, "account"

    const-string v8, "click"

    const-string v9, "mylv_native_authentification"

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ConfirmActivationClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ConfirmActivationClick;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "account_creation_activation_code_step"

    const-string v6, "confirm_activation"

    const-string v7, "account"

    const-string v8, "account_creation"

    const-string v9, "mylv_native_authentification"

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$CloseClick;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$CloseClick;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$CloseClick;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v6, "close"

    const-string v7, "account"

    const-string v8, "click"

    const-string v9, "mylv_native_authentification"

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void
.end method
