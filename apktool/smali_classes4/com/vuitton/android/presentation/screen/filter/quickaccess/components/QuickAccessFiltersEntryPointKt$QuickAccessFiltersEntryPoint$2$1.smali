.class final Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1"
    f = "QuickAccessFiltersEntryPoint.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->c:Lkotlin/jvm/functions/Function1;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->d:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->d:Z

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->c:Lkotlin/jvm/functions/Function1;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->Visible:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->d:Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->OpenActiveFiltersAnimation:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->InitialAnimation:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
