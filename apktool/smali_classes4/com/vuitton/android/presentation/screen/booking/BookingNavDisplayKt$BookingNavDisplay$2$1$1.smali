.class final Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;
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

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/jvm/functions/Function0;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->b:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToBookingSummary;->a:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToBookingSummary;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->b:Landroidx/navigation3/runtime/NavBackStack;

    if-eqz p2, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Summary;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Summary;

    iget-object p1, v0, Landroidx/navigation3/runtime/NavBackStack;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPersonalInfo;->a:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPersonalInfo;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->q5()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$PersonalInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$PersonalInfo;

    iget-object p1, v0, Landroidx/navigation3/runtime/NavBackStack;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToConfirmation;->a:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToConfirmation;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPayment;

    if-eqz p2, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPayment;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPayment;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x3fc

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->f:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$2$1$1;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
