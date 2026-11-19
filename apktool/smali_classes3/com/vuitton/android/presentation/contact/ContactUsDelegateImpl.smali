.class public final Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;
.implements Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BA\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "chatConsentDelegate",
        "Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;",
        "streamChatEventUseCase",
        "Lcom/vuitton/android/domain/usecase/chat/IsChatEnabledUseCase;",
        "isChatEnabledUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;Lcom/vuitton/android/domain/usecase/chat/IsChatEnabledUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

.field public final c:Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Lcom/vuitton/android/core/events/LVEventSender;

.field public final f:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public k:Z

.field public final l:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$special$$inlined$combine$1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;Lcom/vuitton/android/domain/usecase/chat/IsChatEnabledUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;)V
    .locals 20
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

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->c:Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->e:Lcom/vuitton/android/core/events/LVEventSender;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->POWERFRONT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v7}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->POWERFRONT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual/range {p2 .. p2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->l:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 v8, 0x0

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v15, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DEFAULT:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->U0()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    move-object/from16 v8, p5

    iget-object v8, v8, Lcom/vuitton/android/domain/usecase/chat/IsChatEnabledUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-interface {v8}, Lcom/vuitton/foundation/contracts/chat/ChatManager;->g()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    move-object/from16 p4, v1

    new-instance v1, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;

    move-object/from16 p2, v2

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x5

    move-object/from16 p1, v3

    new-array v3, v2, [Lkotlinx/coroutines/flow/Flow;

    const/16 v16, 0x0

    aput-object v15, v3, v16

    const/16 v17, 0x1

    aput-object v7, v3, v17

    const/4 v7, 0x2

    aput-object p4, v3, v7

    const/16 v18, 0x3

    aput-object p2, v3, v18

    const/16 v19, 0x4

    aput-object v8, v3, v19

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    invoke-direct {v8, v3, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)V

    const/16 v1, 0xc

    new-array v1, v1, [Lkotlinx/coroutines/flow/Flow;

    aput-object p1, v1, v16

    aput-object v9, v1, v17

    aput-object v10, v1, v7

    aput-object v11, v1, v18

    aput-object v12, v1, v19

    aput-object v13, v1, v2

    const/4 v2, 0x6

    aput-object v14, v1, v2

    const/4 v2, 0x7

    aput-object v8, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v5, v1, v2

    const/16 v2, 0xa

    aput-object v6, v1, v2

    const/16 v2, 0xb

    aput-object v15, v1, v2

    new-instance v2, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$special$$inlined$combine$1;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->u:Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$special$$inlined$combine$1;

    return-void
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->e:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v0, Lcom/vuitton/android/core/events/LVEventSender;->c:Lkotlinx/coroutines/flow/SharedFlow;

    new-instance v1, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$listenToLogOutEvent$$inlined$filter$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$listenToLogOutEvent$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$listenToLogOutEvent$3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$listenToLogOutEvent$3;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->c:Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-interface {v0}, Lcom/vuitton/foundation/contracts/chat/ChatManager;->d()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final U0()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->U0()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v1, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v7, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v8, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->l:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->c:Ljava/lang/String;

    invoke-interface {v8, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v10, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->b:Ljava/lang/String;

    invoke-interface {v7, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v10, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->a:Ljava/lang/String;

    invoke-interface {v6, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v10, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->d:Ljava/lang/String;

    invoke-interface {v4, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->N:Ljava/lang/String;

    invoke-interface {v3, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DISTANT_CARE:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CONTACT_US_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v5, v9

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->K:Ljava/lang/String;

    invoke-interface {v7, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->L:Ljava/lang/String;

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v6, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    invoke-interface {v8, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->M:Ljava/lang/String;

    invoke-interface {v4, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->N:Ljava/lang/String;

    invoke-interface {v3, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DEFAULT:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CONTACT_US:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v5, v9

    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->u:Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$special$$inlined$combine$1;

    return-object p0
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->e:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v0, Lcom/vuitton/android/core/events/LVEventSender;->c:Lkotlinx/coroutines/flow/SharedFlow;

    new-instance v1, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$listenToLoginEvent$$inlined$filter$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$listenToLoginEvent$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$listenToLoginEvent$3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$listenToLoginEvent$3;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->b:Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;->z()V

    return-void
.end method
