.class final Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;",
        "isLoading",
        "",
        "hasError",
        "onGoingsList",
        "",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;",
        "additionalList",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl$listViewState$1"
    f = "BookingListViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Z

.field public synthetic c:Z

.field public synthetic d:Ljava/util/List;

.field public synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->f:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/util/List;

    check-cast p4, Ljava/util/List;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->f:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    invoke-direct {v0, p0, p5}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->b:Z

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->c:Z

    check-cast p3, Ljava/util/List;

    iput-object p3, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->d:Ljava/util/List;

    check-cast p4, Ljava/util/List;

    iput-object p4, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->e:Ljava/util/List;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->b:Z

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->c:Z

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->d:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->e:Ljava/util/List;

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$listViewState$1;->f:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->i:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method
