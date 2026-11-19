.class public final Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0017BQ\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModel;",
        "Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;",
        "getBookingsUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;",
        "updateBookingUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;",
        "deleteBookingUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V",
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
.field public static final synthetic x:I


# instance fields
.field public final a:Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;

.field public final d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final e:Lcom/vuitton/foundation/logger/Logger;

.field public final f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final g:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final h:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public final i:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final o:Lkotlinx/coroutines/flow/SharedFlow;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/StateFlow;

.field public final r:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final s:Lkotlinx/coroutines/flow/SharedFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/StateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V
    .locals 2
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

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->e:Lcom/vuitton/foundation/logger/Logger;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->g:Lcom/vuitton/android/domain/monitoring/Monitor;

    const-string p1, "EXTRA_ORIGIN"

    invoke-virtual {p8, p1}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->h:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    iget-object p1, p9, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->i:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p6

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p7, 0x0

    const/4 p8, 0x1

    const/4 p9, 0x0

    const/4 v0, 0x5

    invoke-static {p7, p8, p9, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->n:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->o:Lkotlinx/coroutines/flow/SharedFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->IDLE:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->q:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p7, p8, p9, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->s:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-static {p9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;

    invoke-direct {p1, p0, p9}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p9, 0x4

    new-array p9, p9, [Lkotlinx/coroutines/flow/Flow;

    aput-object p2, p9, p7

    aput-object p4, p9, p8

    const/4 p2, 0x2

    aput-object p6, p9, p2

    const/4 p2, 0x3

    aput-object p5, p9, p2

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    invoke-direct {v0, p9, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance p2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;

    const/16 p8, 0x1e

    const/4 p9, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    invoke-direct/range {p2 .. p9}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p1, v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->w:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->O8()V

    return-void
.end method


# virtual methods
.method public final Ac(Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet$CancelWarning;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final Bc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->LOADING:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final O8()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$fetchExperiences$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$fetchExperiences$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final yc(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zc(Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;)V
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceListScreen;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experiences"

    const-string v4, "my_experiences"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceDetailScreen;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceDetailScreen;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceDetailScreen;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experience_detail"

    const-string v4, "my_experience_detail"

    const-string v5, "mylv"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperiencePassScreen;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperiencePassScreen;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperiencePassScreen;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experience_qr_code"

    const-string v4, "my_experience_qr_code"

    const-string v5, "mylv"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceClickEvent;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceClickEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceClickEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experiences"

    const-string v4, "view_detail"

    const-string v5, "MyLV"

    const-string v6, "click"

    const-string v7, "mylv"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AdditionalExperienceClickEvent;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AdditionalExperienceClickEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AdditionalExperienceClickEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experiences"

    const-string v4, "extend_your_experience"

    const-string v5, "MyLV"

    const-string v6, "click"

    const-string v7, "mylv"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ViewPassClickEvent;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ViewPassClickEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ViewPassClickEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experience_detail"

    const-string v4, "view_qr_code"

    const-string v5, "MyLV"

    const-string v6, "click"

    const-string v7, "mylv"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AddToCalendarClickEvent;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AddToCalendarClickEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AddToCalendarClickEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experience_detail"

    const-string v4, "add_to_calendar"

    const-string v5, "MyLV"

    const-string v6, "click"

    const-string v7, "mylv"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ModifyClickEvent;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ModifyClickEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ModifyClickEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experience_detail"

    const-string v4, "modify"

    const-string v5, "MyLV"

    const-string v6, "click"

    const-string v7, "mylv"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$DeleteClickEvent;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$DeleteClickEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$DeleteClickEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "my_experience_detail"

    const-string v4, "cancel_intention"

    const-string v5, "MyLV"

    const-string v6, "click"

    const-string v7, "mylv"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-void
.end method
