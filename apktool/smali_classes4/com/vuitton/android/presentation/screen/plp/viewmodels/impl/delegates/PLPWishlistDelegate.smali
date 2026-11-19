.class public final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;",
        "",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "analyticsTracker",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;",
        "getWishlistUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;",
        "addProductToWishList",
        "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;",
        "deleteProductFromWishlist",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;",
        "reportDYAddToWishlistEventUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lcom/vuitton/android/core/events/LVEventSender;

.field public final d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final h:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

.field public final i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final j:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

.field public m:Z

.field public n:Z

.field public final o:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final p:Lkotlinx/coroutines/flow/SharedFlowImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;)V
    .locals 0

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->h:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->j:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->k:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->l:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    new-instance p1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p2, p3, p3, p1, p4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p3, p4, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->o:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->p:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->o:Lkotlinx/coroutines/flow/SharedFlowImpl;

    instance-of v6, v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;

    iget v7, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->h:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;

    invoke-direct {v6, v0, v3}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->f:Ljava/lang/Object;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v8, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->h:I

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v8, :cond_3

    if-eq v8, v10, :cond_2

    if-ne v8, v11, :cond_1

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->e:Ljava/lang/Object;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->c:Landroidx/compose/runtime/MutableState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 p3, v10

    goto/16 :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->c:Landroidx/compose/runtime/MutableState;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    move-object v13, v1

    move-object v1, v8

    goto/16 :goto_2

    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->b:Landroidx/compose/runtime/MutableState;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v14, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140967

    invoke-direct {v14, v0, v12, v11, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x3c

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    invoke-direct {v1, v0, v12, v11, v12}, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;-><init>(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_4
    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v15, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$AddToWishlist;->a:Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$AddToWishlist;

    invoke-interface {v13, v14, v15}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v13

    const-string v14, "sku"

    invoke-virtual {v13, v8, v14}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v14, v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

    if-eqz v14, :cond_5

    new-instance v14, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;->a:Ljava/lang/String;

    invoke-direct {v14, v8, v2, v12}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14, v12, v9}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    goto :goto_1

    :cond_5
    sget-object v14, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Legacy;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Legacy;

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;

    invoke-direct {v2, v8, v12}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v12, v9}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->j:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    sget-object v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->c:Landroidx/compose/runtime/MutableState;

    iput-object v13, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->h:I

    invoke-virtual {v2, v8, v6}, Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_8

    move-object v8, v2

    check-cast v8, Lkotlin/Unit;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v14, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->a:Ljava/lang/String;

    move/from16 p3, v10

    new-instance v10, Lkotlin/Pair;

    const-string v9, "af_content_id"

    invoke-direct {v10, v9, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v14, v9}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;-><init>(Ljava/util/Map;)V

    const-string v9, "PLPWishlistDelegate"

    invoke-interface {v8, v9, v14}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->l:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->a:Ljava/lang/String;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->c:Landroidx/compose/runtime/MutableState;

    iput-object v13, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->e:Ljava/lang/Object;

    iput v11, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$addProductToWishlist$1;->h:I

    invoke-virtual {v8, v9, v6}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_7

    :goto_3
    return-object v7

    :cond_7
    move-object v6, v1

    move-object v1, v2

    move-object v7, v3

    move-object v2, v13

    :goto_4
    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->a:Ljava/lang/String;

    invoke-direct {v3, v6, v12}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x3

    invoke-static {v3, v12, v6}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v14, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140de9

    invoke-direct {v14, v0, v12, v11, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v17, Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;

    const/16 v18, 0x1c

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;-><init>(Lcom/vuitton/android/presentation/notification/NotificationUiModel;)V

    move-object v13, v2

    move-object v2, v1

    goto :goto_5

    :cond_8
    move/from16 p3, v10

    new-instance v1, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$AddToWishlistError;

    invoke-direct {v1, v8}, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$AddToWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v13, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-virtual {v0, v8}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->c(Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    move-result-object v0

    move-object v7, v3

    move-object v3, v0

    :goto_5
    invoke-interface {v13}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    instance-of v1, v3, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    if-eqz v1, :cond_9

    move-object v12, v3

    check-cast v12, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    :cond_9
    if-eqz v12, :cond_a

    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_6

    :cond_a
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v2, Lkotlin/Result$Failure;

    xor-int/lit8 v1, v1, 0x1

    :goto_6
    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, v2, Lkotlin/Result$Failure;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v12
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->o:Lkotlinx/coroutines/flow/SharedFlowImpl;

    instance-of v6, v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;

    iget v7, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->f:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;

    invoke-direct {v6, v0, v3}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->d:Ljava/lang/Object;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v8, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->f:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_2

    if-ne v8, v10, :cond_1

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->b:Landroidx/compose/runtime/MutableState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v13, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140967

    invoke-direct {v13, v0, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x0

    const/16 v17, 0x3c

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    invoke-direct {v1, v0, v11, v9, v11}, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;-><init>(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_3
    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v13, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$RemoveFromWishlist;->a:Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$RemoveFromWishlist;

    invoke-interface {v8, v12, v13}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v8

    const-string v12, "sku"

    invoke-virtual {v8, v1, v12}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v12, v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;

    const/4 v13, 0x3

    if-eqz v12, :cond_4

    new-instance v12, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;->a:Ljava/lang/String;

    invoke-direct {v12, v1, v2, v11}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v12, v11, v13}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget-object v12, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;

    invoke-direct {v2, v1, v11}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v11, v13}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;

    invoke-direct {v2, v1, v11}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v11, v13}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->k:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->b:Landroidx/compose/runtime/MutableState;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$deleteProductFromWishlist$1;->f:I

    invoke-virtual {v2, v1, v6}, Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_5

    return-object v7

    :cond_5
    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    :goto_2
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, v3

    check-cast v4, Lkotlin/Unit;

    new-instance v4, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v13, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140dfb

    invoke-direct {v13, v0, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x0

    const/16 v17, 0x3c

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;-><init>(Lcom/vuitton/android/presentation/notification/NotificationUiModel;)V

    goto :goto_3

    :cond_6
    new-instance v6, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$RemoveFromWishlistError;

    invoke-direct {v6, v4}, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$RemoveFromWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-virtual {v0, v4}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->c(Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    move-result-object v4

    :goto_3
    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    instance-of v1, v4, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    if-eqz v1, :cond_7

    move-object v11, v4

    check-cast v11, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    :cond_7
    if-eqz v11, :cond_8

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_8
    instance-of v1, v3, Lkotlin/Result$Failure;

    :goto_4
    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    instance-of v0, v3, Lkotlin/Result$Failure;

    xor-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-object v11
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;
    .locals 10

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v5, v1

    goto :goto_4

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140a5a

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v5, v0

    goto :goto_4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v3, v0, Lretrofit2/HttpException;

    if-eqz v3, :cond_2

    check-cast v0, Lretrofit2/HttpException;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, v0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistHelper;->a(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140967

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :goto_4
    const/4 v8, 0x0

    const/16 v9, 0x3c

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p0

    instance-of p1, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$AlreadyInWishlist;

    if-eqz p1, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_5
    new-instance p1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    invoke-direct {p1, p0, v2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;-><init>(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$refreshWishlist$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$refreshWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final e(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->b:Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
