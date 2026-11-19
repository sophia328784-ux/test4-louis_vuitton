.class public final Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0017BQ\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;",
        "addCertificateUseCase",
        "Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;",
        "addCertificateChinaConsentUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V",
        "Companion",
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


# static fields
.field public static final s:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final e:Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final q:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final r:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "AddCertificateViewModelImpl"

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V
    .locals 17
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-static {v3, v2, v1}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->h:Ljava/lang/String;

    move-object/from16 v1, p6

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->i:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoIndividualNumberUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoIndividualNumberUiModel;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v13, 0x0

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x7

    const/4 v6, 0x0

    invoke-static {v6, v2, v13}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v2, 0x4

    new-array v2, v2, [Lkotlinx/coroutines/flow/Flow;

    aput-object v1, v2, v6

    const/4 v1, 0x1

    aput-object v4, v2, v1

    const/4 v1, 0x2

    aput-object v5, v2, v1

    const/4 v1, 0x3

    aput-object v12, v2, v1

    new-instance v14, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v14, v2, v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v15

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    move-object v4, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;

    const/16 v10, 0x7e

    const/4 v11, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object/from16 v16, v9

    const/4 v9, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14, v15, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->r:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;

    invoke-direct {v2, v13, v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V

    const/4 v3, 0x3

    invoke-static {v1, v13, v13, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v2, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;

    invoke-direct {v2, p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;

    new-instance p1, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase$Param;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ""

    if-nez v0, :cond_5

    move-object v0, v4

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v4, v1

    :goto_1
    invoke-direct {p1, v0, v4}, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addChinaConsent$1;->d:I

    invoke-virtual {p0, p1, v2}, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;->a(Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_7

    return-object v3

    :cond_7
    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "China consent request failed: missing userLogin or userAtgId"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$notifyError$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$notifyError$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final Ac(Ljava/util/Map;)V
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;->INDIVIDUAL_NUMBER:Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;->BUYER_NAME:Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final I6()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoIndividualNumberUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoIndividualNumberUiModel;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenIndividualNumberInfoEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenIndividualNumberInfoEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->r:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final j8(Z)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;-><init>(Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final k5(Ljava/util/Map;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateEvent;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;->INDIVIDUAL_NUMBER:Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateFormEntries;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$ActivateCertificate;->a:Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$ActivateCertificate;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->i:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-interface {v1, v3, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    const-string v2, "SN"

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->Ac(Ljava/util/Map;)V

    return-void
.end method

.method public final u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final xa()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoBuyerUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoBuyerUiModel;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenBuyerNameInfoEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenBuyerNameInfoEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    return-void
.end method
