.class public final Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModel;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;",
        "refreshFacadeUserSessionUseCase",
        "Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;",
        "getUserExclusiveSalesUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V",
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

.field public final b:Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final f:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p5, 0x2

    new-array p5, p5, [Lkotlinx/coroutines/flow/Flow;

    aput-object p1, p5, p2

    const/4 p1, 0x1

    aput-object p4, p5, p1

    new-instance p1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$special$$inlined$combine$1;

    invoke-direct {p1, p5}, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p4

    sget-object p5, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v0, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesViewState;

    const/4 v1, 0x3

    invoke-direct {v0, p2, p3, v1, p3}, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesViewState;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p4, p5, v0}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->i:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;-><init>(Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final C8(Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesSelectionEvent;)V
    .locals 10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesSelectionEvent;->a:Ljava/lang/String;

    invoke-static {v3}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/MyLV/Dashboard/myExclusiveSales"

    const-string v4, "MyLV"

    const-string v5, "exclusive_offer_section"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->i:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
