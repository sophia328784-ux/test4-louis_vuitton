.class public final Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;,
        Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u001b\u001cBa\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;",
        "lineSignInManager",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;",
        "googleSignInManager",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;",
        "kakaoSignInManager",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;",
        "socialLoginUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;",
        "reportDYLoginEventUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;)V",
        "SocialAuthAction",
        "SocialAuthEventType",
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
.field public final A:Lkotlinx/coroutines/flow/Flow;

.field public final B:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final C:Lkotlinx/coroutines/flow/Flow;

.field public final D:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/core/events/LVEventSender;

.field public final d:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;

.field public final e:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;

.field public final f:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;

.field public final g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final h:Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

.field public final j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public s:Lkotlin/Pair;

.field public final t:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final u:Lkotlinx/coroutines/flow/Flow;

.field public final v:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final w:Lkotlinx/coroutines/flow/Flow;

.field public final x:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final y:Lkotlinx/coroutines/flow/Flow;

.field public final z:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;)V
    .locals 18
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->k:Ljava/util/LinkedHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    const/16 v16, 0xfff

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v17}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GOOGLE_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->n:Z

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SOCIAL_SIGN_IN_DEBUG:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->o:Z

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->LINE_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->p:Z

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->KAKAO_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->q:Z

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_REGISTER_KISA:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->r:Z

    const/4 v1, 0x0

    const/4 v4, 0x7

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->u:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->v:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->w:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->x:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->y:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->z:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->A:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->B:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->C:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;

    invoke-direct {v1, v0, v5}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v4, v3, v2, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    const/16 v5, 0x3f

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 p1, v3

    move/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p2, v7

    move/from16 p3, v8

    move/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v11

    move/from16 p7, v12

    invoke-direct/range {p1 .. p9}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->D:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V
    .locals 1

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;

    if-eqz v0, :cond_3

    instance-of p1, p2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->SIGN_UP:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {p1, p3, p2, p4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_0
    instance-of p1, p2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Success;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->SIGN_UP:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {p1, p3, p2, p4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_1
    instance-of p1, p2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Failure;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->SIGN_UP:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {p1, p3, p2, p4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3
    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;

    if-eqz p1, :cond_7

    instance-of p1, p2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->LOG_IN:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {p1, p3, p2, p4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;)V

    return-void

    :cond_4
    instance-of p1, p2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Success;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->LOG_IN:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {p1, p3, p2, p4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;)V

    return-void

    :cond_5
    instance-of p1, p2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Failure;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->LOG_IN:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {p1, p3, p2, p4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;)V

    return-void

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final Q6()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->A:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->D:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->C:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final b2(Landroidx/activity/ComponentActivity;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V
    .locals 10

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->k:Ljava/util/LinkedHashMap;

    const-string v8, "onContinueWithGoogleClickedJob"

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;

    :goto_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->GOOGLE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {p0, v0, v2, p3, v3}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;->a:Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v5, v0, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v5

    const-string v0, "social"

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v9

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithGoogleClicked$1;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithGoogleClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;ZLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v9, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ec(Landroidx/appcompat/app/AppCompatActivity;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V
    .locals 10

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->k:Ljava/util/LinkedHashMap;

    const-string v8, "onContinueWithKakaoClickedJob"

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;

    :goto_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->KAKAO:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {p0, v0, v2, p3, v3}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;->a:Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v5, v0, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v5

    const-string v0, "social"

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v9

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithKakaoClicked$1;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithKakaoClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;ZLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v9, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g0()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->u:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final g6()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->y:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final g7(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->s:Lkotlin/Pair;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->s:Lkotlin/Pair;

    invoke-virtual {p0, p1, v1, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->b2(Landroidx/activity/ComponentActivity;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    return-void
.end method

.method public final k()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->w:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final q2(Landroidx/appcompat/app/AppCompatActivity;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V
    .locals 10

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->k:Ljava/util/LinkedHashMap;

    const-string v8, "onContinueWithLineClickedJob"

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;

    :goto_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->LINE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {p0, v0, v2, p3, v3}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;->a:Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v5, v0, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v5

    const-string v0, "social"

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v9

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;ZLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v9, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final rb(ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;->a:Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    const-string v1, "social"

    invoke-virtual {p3}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->yc(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    return-void
.end method

.method public final yc(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->k:Ljava/util/LinkedHashMap;

    const-string v1, "processSocialAuthenticationJob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {p4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, p1

    move v5, p2

    move-object v8, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;ZLcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v2, p1, p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final z8()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->s:Lkotlin/Pair;

    return-void
.end method

.method public final zc(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;)V
    .locals 27

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "line_log_in"

    const-string v5, "kakao_log_in"

    const-string v6, "google_log_in"

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;

    const-string v7, "social_login"

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, ""

    if-eqz v1, :cond_6

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    sget-object v13, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v13, v1

    if-eq v1, v10, :cond_1

    if-eq v1, v9, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_3

    move-object v6, v11

    :cond_3
    invoke-direct {v5, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_5

    goto :goto_3

    :cond_5
    move-object v11, v12

    :goto_3
    invoke-direct {v6, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v2

    aput-object v5, v0, v10

    aput-object v6, v0, v9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v12, "click"

    const-string v13, "mylv_native_authentification"

    const-string v9, "mylv"

    const-string v11, "mylv_native"

    move-object v10, v4

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_4
    move-object/from16 v0, p0

    goto/16 :goto_15

    :cond_6
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;

    const/4 v13, 0x4

    const-string v14, "authentication_with_line"

    const-string v15, "authentication_with_kakao"

    const-string v16, "authentication_with_google"

    if-eqz v1, :cond_11

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    sget-object v8, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    move/from16 v18, v2

    aget v2, v8, v17

    if-eq v2, v10, :cond_8

    if-eq v2, v9, :cond_7

    move-object v4, v6

    goto :goto_5

    :cond_7
    move-object v4, v5

    :cond_8
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v8, v2

    if-eq v2, v10, :cond_a

    if-eq v2, v9, :cond_9

    move-object/from16 v21, v16

    goto :goto_6

    :cond_9
    move-object/from16 v21, v15

    goto :goto_6

    :cond_a
    move-object/from16 v21, v14

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v8, v1

    if-eq v1, v10, :cond_c

    if-eq v1, v9, :cond_b

    const-string v1, "google_login_success"

    :goto_7
    move-object/from16 v22, v1

    goto :goto_8

    :cond_b
    const-string v1, "kakao_login_success"

    goto :goto_7

    :cond_c
    const-string v1, "line_login_success"

    goto :goto_7

    :goto_8
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v2, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_d
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_e

    move-object v5, v11

    :cond_e
    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    :goto_a
    if-nez v12, :cond_10

    goto :goto_b

    :cond_10
    move-object v11, v12

    :goto_b
    invoke-direct {v5, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v13, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v18

    aput-object v2, v0, v10

    aput-object v4, v0, v9

    aput-object v5, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    new-instance v19, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v24, "event"

    const-string v25, "mylv_native_authentification"

    sget-object v20, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;

    const-string v23, "mylv_native"

    invoke-direct/range {v19 .. v26}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v7, v19

    goto/16 :goto_15

    :cond_11
    move/from16 v18, v2

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v12, v2, v17

    if-eq v12, v10, :cond_13

    if-eq v12, v9, :cond_12

    move-object v4, v6

    goto :goto_c

    :cond_12
    move-object v4, v5

    :cond_13
    :goto_c
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v2, v5

    if-eq v5, v10, :cond_15

    if-eq v5, v9, :cond_14

    move-object/from16 v14, v16

    goto :goto_d

    :cond_14
    move-object v14, v15

    :cond_15
    :goto_d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v10, :cond_17

    if-eq v1, v9, :cond_16

    const-string v1, "google_login_fail"

    goto :goto_e

    :cond_16
    const-string v1, "kakao_login_fail"

    goto :goto_e

    :cond_17
    const-string v1, "line_login_fail"

    :goto_e
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v2, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v5, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    :goto_f
    if-nez v6, :cond_19

    move-object v6, v11

    :cond_19
    invoke-direct {v4, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    :cond_1a
    const/4 v12, 0x0

    :goto_10
    if-nez v12, :cond_1b

    goto :goto_11

    :cond_1b
    move-object v11, v12

    :goto_11
    invoke-direct {v6, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v13, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v18

    aput-object v5, v0, v10

    aput-object v4, v0, v9

    aput-object v6, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v12, "event"

    const-string v13, "mylv_native_authentification"

    const-string v11, "mylv_native"

    move-object v10, v1

    move-object v9, v14

    move-object v14, v0

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_4

    :cond_1c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginCloseEvent;

    if-eqz v1, :cond_21

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginCloseEvent;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginCloseEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_1d
    const/4 v4, 0x0

    :goto_12
    if-nez v4, :cond_1e

    move-object v4, v11

    :cond_1e
    invoke-direct {v2, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginCloseEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v12

    goto :goto_13

    :cond_1f
    const/4 v12, 0x0

    :goto_13
    if-nez v12, :cond_20

    goto :goto_14

    :cond_20
    move-object v11, v12

    :goto_14
    invoke-direct {v4, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v18

    aput-object v2, v0, v10

    aput-object v4, v0, v9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v12, "i_already_have_an_account"

    const-string v13, "mylv_native_authentification"

    const-string v9, "i_already_have_an_account"

    const-string v10, "close_popin"

    const-string v11, "mylv_native"

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_4

    :goto_15
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {v0, v7}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_21
    invoke-static {}, Lv40;->g()V

    return-void
.end method
