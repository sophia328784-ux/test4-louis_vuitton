.class public final Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001bBa\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;",
        "getCertificateListUseCase",
        "Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;",
        "getCertificateDetailUrlUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "contactUsDelegate",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V",
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
.field public static final synthetic q:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final k:Ljava/lang/String;

.field public final l:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final m:Lkotlinx/coroutines/flow/SharedFlow;

.field public final n:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    iget-object p2, p9, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-string p2, "ID"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->k:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x7

    invoke-static {p1, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->m:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Loading;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->u2()V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p3, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$1;

    invoke-direct {p3, p0, p2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p2, p2, p3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {p11, p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveUsername$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-boolean p1, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;->b:Z

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p0

    iput v5, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;->e:I

    invoke-virtual {v0, p0, v3, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CERTIFICATES_VISIONNAIRE_LOCKED_STATUS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-boolean p0, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;->b:Z

    iput v4, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$initFeatureFlags$1;->e:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_5

    :goto_2
    return-object p1

    :cond_5
    move p1, p0

    move-object p0, v0

    :goto_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    invoke-direct {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;-><init>(ZZ)V

    return-object v0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;->c:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;->e:I

    invoke-virtual {v1, v2}, Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto/16 :goto_a

    :cond_4
    :goto_1
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-eqz v4, :cond_5

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object v0

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;

    if-eqz v10, :cond_7

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->a:Ljava/lang/String;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->c:Ljava/lang/String;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->h:Ljava/lang/String;

    iget-object v14, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->f:Ljava/lang/String;

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->d:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    move-result-object v15

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->e:Ljava/lang/String;

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    move-object/from16 p1, v7

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->g:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->i:Ljava/lang/String;

    iget-object v6, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->j:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->k:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->m:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    move-object/from16 v21, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    const/16 v5, 0xa

    invoke-static {v8, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamondStone;

    new-instance v5, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;

    move-object/from16 v16, v6

    iget-object v6, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamondStone;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamondStone;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v8}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v16

    const/16 v5, 0xa

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x1200

    const/16 v25, 0x0

    move-object/from16 v23, v1

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    move-object v9, v5

    invoke-direct/range {v9 .. v25}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_7
    move-object/from16 v26, v1

    move-object/from16 p1, v7

    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;

    if-eqz v1, :cond_b

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->c:Ljava/lang/String;

    iget-object v14, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->h:Ljava/lang/String;

    iget-object v15, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->e:Ljava/lang/String;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->d:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    move-result-object v16

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->e:Ljava/lang/String;

    iget-object v5, v9, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->m:Ljava/util/Locale;

    iget-object v6, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->f:Ljava/lang/String;

    const-string v7, "MM-dd-yyyy"

    sget-object v9, Ljava/time/format/FormatStyle;->LONG:Ljava/time/format/FormatStyle;

    invoke-static {v5, v6, v7, v9}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->d(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    move-object/from16 v18, v6

    goto :goto_4

    :cond_8
    move-object/from16 v18, v5

    :goto_4
    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->g:Ljava/lang/String;

    iget-object v6, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->i:Ljava/lang/String;

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->j:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_9

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->k:Ljava/lang/String;

    new-instance v10, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    const/16 v23, 0x0

    move-object/from16 v17, v1

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v9

    invoke-direct/range {v10 .. v23}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v10

    goto/16 :goto_7

    :cond_b
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;

    if-eqz v1, :cond_c

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;

    new-instance v9, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->c:Ljava/lang/String;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->f:Ljava/lang/String;

    iget-object v14, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->e:Ljava/lang/String;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->d:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    move-result-object v15

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->g:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->h:Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v9

    goto :goto_7

    :cond_c
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;

    if-eqz v1, :cond_e

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->a:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v6, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->c:Ljava/lang/String;

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->o:Ljava/lang/String;

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->e:Ljava/lang/String;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->d:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    move-result-object v33

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->e:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->g:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    if-eqz v11, :cond_d

    invoke-static {v11}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v11

    move-object/from16 v36, v11

    goto :goto_6

    :cond_d
    move-object/from16 v36, p1

    :goto_6
    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->h:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->i:Ljava/lang/String;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->j:Ljava/lang/String;

    iget-object v14, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->k:Ljava/lang/String;

    iget-object v15, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->l:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->m:Ljava/lang/String;

    move-object/from16 v42, v1

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->n:Ljava/lang/String;

    move-object/from16 v43, v1

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->p:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->f:Ljava/lang/String;

    new-instance v27, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    const/16 v45, 0x0

    move-object/from16 v44, v1

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    move-object/from16 v35, v8

    move-object/from16 v32, v9

    move-object/from16 v34, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    invoke-direct/range {v27 .. v45}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v27

    :goto_7
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p1

    move-object/from16 v1, v26

    const/4 v5, 0x2

    const/16 v6, 0xa

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lv40;->g()V

    return-object p1

    :cond_f
    move-object/from16 p1, v7

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->k:Ljava/lang/String;

    if-eqz v1, :cond_14

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    if-eqz v8, :cond_10

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->h:Ljava/lang/String;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move-object v7, v6

    goto :goto_9

    :cond_13
    move-object/from16 v7, p1

    :goto_9
    check-cast v7, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    if-eqz v7, :cond_14

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;->b:Ljava/util/ArrayList;

    const/4 v1, 0x2

    iput v1, v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$retrieveCertificateList$1;->e:I

    invoke-virtual {v0, v7, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_14

    :goto_a
    return-object v3

    :cond_14
    return-object v4
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final Bc(Z)V
    .locals 6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    invoke-direct {v5, v3, v4, v2, p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;Ljava/lang/String;Z)V

    invoke-interface {p0, v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final L9()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onOpenPDFError$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onOpenPDFError$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final Q5(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->Bc(Z)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final da()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->m:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final u2()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$OpenMyCertificates;->a:Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$OpenMyCertificates;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
