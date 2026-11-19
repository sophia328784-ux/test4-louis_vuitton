.class final Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1$1;->b:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1$1;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingUpdated;->a:Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingUpdated;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1$1;->b:Landroidx/navigation3/runtime/NavBackStack;

    if-eqz p2, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$List;

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->c(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;Z)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingDeleted;->a:Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingDeleted;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->b(Landroidx/navigation3/runtime/NavBackStack;)Z

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$ToOSAForm;->a:Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$ToOSAForm;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;

    invoke-direct {p1, p2}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object p2
.end method
