.class public final Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B9\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;",
        "getPersonalSelectionsListUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "contactUsDelegate",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V",
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    iget-object p1, p5, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Loading;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->i:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$initContactUsDelegate$1;

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$initContactUsDelegate$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->SERVICES:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {p6, p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->i:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final ca(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$InStoreScreen;->a:Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$InStoreScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "my_personal_in_store_selection"

    const/4 v4, 0x0

    const-string v5, "personal_selection"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$AdvisorCurationScreen;->a:Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$AdvisorCurationScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "my_personal_advisor_curation"

    const/4 v4, 0x0

    const-string v5, "personal_selection"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$DiscoverSelectionEvent;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$DiscoverSelectionEvent;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$DiscoverSelectionEvent;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget p1, p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$DiscoverSelectionEvent;->b:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v4, "discover_selection"

    const-string v5, "personal_selection"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget p1, p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;->b:I

    const-string v2, "%"

    invoke-static {p1, v2}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v4, "scroll"

    const-string v5, "personal_selection"

    const-string v6, "scroll"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final i8()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Loading;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
