.class public final Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;",
        "Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;",
        "getConfirmedBookingsUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object p1, p4, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Loading;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->U5()V

    return-void
.end method


# virtual methods
.method public final U5()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Loading;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final ya(Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;)V
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ConfirmationScreen;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ConfirmationScreen;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ConfirmationScreen;->a:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "booking_confirmation_page"

    const-string v4, "booking_confirmation_page"

    const-string v5, "booking"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$AddToCalendarEvent;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$AddToCalendarEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$AddToCalendarEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "booking_confirmation_page"

    const-string v4, "add_to_calendar"

    const-string v5, "booking_confirmation_page"

    const-string v6, "click"

    const-string v7, "booking"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ViewQrCodeEvent;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ViewQrCodeEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ViewQrCodeEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "booking_confirmation_page"

    const-string v4, "view_qr_code"

    const-string v5, "booking_confirmation_page"

    const-string v6, "click"

    const-string v7, "booking"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$OpenDirectionEvent;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$OpenDirectionEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$OpenDirectionEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "booking_confirmation_page"

    const-string v4, "open_direction"

    const-string v5, "booking_confirmation_page"

    const-string v6, "click"

    const-string v7, "booking"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$CloseEvent;->a:Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$CloseEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x41

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "booking_confirmation_page"

    const-string v3, "close"

    const-string v4, "booking_confirmation_page"

    const-string v5, "click"

    const-string v6, "booking"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method
