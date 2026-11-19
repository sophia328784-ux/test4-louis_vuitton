.class final Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayActivity$onCreate$2$1$1$1"
    f = "FiltersOverlayActivity.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->s:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->q:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$onCreate$2$1$1$1$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->H()Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$BooleanFiltersOverlayScreen;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$BooleanFiltersOverlayScreen;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->H()Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SortFiltersOverlayScreen;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SortFiltersOverlayScreen;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
