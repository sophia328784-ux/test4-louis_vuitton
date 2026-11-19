.class public final Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001%B\u0089\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Landroid/app/Application;",
        "application",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "contactUsDelegate",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;",
        "passAppLinkBuilder",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/products/GetProductShortUseCase;",
        "getProductShortUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;",
        "getSkusProductsListUseCase",
        "Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;",
        "getPersonalSelections",
        "Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;",
        "likePersonalSelectionsUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;",
        "unlikePersonalSelectionsUseCase",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetProductShortUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;)V",
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


# instance fields
.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final f:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final g:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

.field public final h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;

.field public final o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final p:Ljava/lang/String;

.field public final q:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/StateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/StateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetProductShortUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p15

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

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->f:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->g:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object p1

    const-class p3, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;

    sget-object p4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p4, p3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->p:Ljava/lang/String;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Loading;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Loading;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Loading;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->w:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Loading;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->y:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p2, p0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/vuitton/android/presentation/utils/ArUtils;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$1;

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->h7()V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$initContactUsDelegate$1;

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$initContactUsDelegate$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->SERVICES:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {p6, p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionPLPProductUiModel;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionPLPProductUiModel;->a:Ljava/lang/String;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionPLPProductUiModel;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionPLPProductUiModel;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, p2, v7}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionPLPProductUiModel;-><init>(Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v6

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;->a:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->h:Landroidx/compose/runtime/MutableState;

    if-eqz v5, :cond_2

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->h:Landroidx/compose/runtime/MutableState;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    invoke-static {v3, v4, v6}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;ZI)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    move-result-object v3

    invoke-interface {v5, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;

    invoke-direct {p1, v0, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v0, p1

    :cond_4
    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;->d:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/domain/repository/CatalogRepository;->k(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v0, p2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {p2, v4, v0, v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;ZZZ)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$showErrorNotification$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$showErrorNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final O5()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->y:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final h7()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getPersonalSelection$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getPersonalSelection$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final i1()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->w:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final i6()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ADVISOR_CURATION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->a:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->g:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final m9(Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getLookRelatedProducts$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$getLookRelatedProducts$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final u3(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$postInteraction$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$postInteraction$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final y7(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$deleteInteraction$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$deleteInteraction$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
